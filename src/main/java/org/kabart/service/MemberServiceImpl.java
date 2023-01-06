package org.kabart.service;

import java.io.PrintWriter;
import java.security.SecureRandom;
import java.util.stream.*;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.kabart.domain.MemberVO;
import org.kabart.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper mMapper;

	@Setter(onMethod_ = @Autowired)
	private CartsMapper cMapper;

	@Setter(onMethod_ = { @Autowired })
	private PasswordEncoder pwencoder;

	@Transactional
	@Override
	public int signUp(MemberVO member) {
		member.setMem_pw(pwencoder.encode(member.getMem_pw()));
		int result = mMapper.insertMember(member);
		mMapper.setAuth(member.getMem_id());
		return result;
	}

	@Override
	public MemberVO getInfoById(String mem_id) {
		return mMapper.getInfo(mem_id);
	}

	@Override
	public int checkId(String new_id) {
		int result = mMapper.checkId(new_id);
		return result;
	}

	@Override
	public String findId(String phone) {
		return mMapper.findId(phone);
	}

	@Override
	public void changePhoneInfo(String mem_id, String new_data) {
		mMapper.updatePhone(mem_id, new_data);
	}

	@Override
	public void changeFamilyNumInfo(String mem_id, int new_data) {
		mMapper.updateFamilyNum(mem_id, new_data);
	}

	@Transactional
	@Override
	public int withdrawalMember(String mem_id) {
		// member cart 비우기
		cMapper.deleteAllCartProds(mem_id);
		// member 탈회 날자 update
		mMapper.registerExpireDate(mem_id);
		// 자동 로그인 기록 지우기
		mMapper.removeRememberMe(mem_id);
		// member 권한 지우기
		int result = mMapper.removeAuthority(mem_id);

		return result;
	}

	@Override
	public boolean checkPW(String mem_id, String tester) {
		String origin = mMapper.findEncodedPW(mem_id);
		return pwencoder.matches(tester, origin);
	}

	@Override
	public void changePW(String mem_id, String new_data) {
		new_data = pwencoder.encode(new_data);
		mMapper.changePW(mem_id, new_data);
	}

	@Override
	public int findPW(HttpServletResponse resp, String mem_id, String email) throws Exception {
		resp.setContentType("text/html;charset=utf-8");
		System.out.println("member id : " + mem_id);

		try {
			MemberVO mem = mMapper.read(mem_id);
			System.out.println(mem.getMem_id() + " 회원 비밀 번호 찾기");
			
			// 임시 비밀번호 생성
			String tmpPW = generateRandomPW();
			System.out.println("임시 번호 : " + tmpPW);
			
			// 비밀번호 변경
			changePW(mem_id, tmpPW);
			
			// 비밀번호 변경 메일 발송
			boolean result = this.sendEmail(mem_id, tmpPW, email, "findpw");
			return result == true ? 1 : -1;
		} catch (NullPointerException e) {
			// 가입된 아이디가 없거나 탈퇴한 회원인 경우
			return 0;
		}
	}
	
	// 특정 길이의 임의의 영숫자 비밀번호를 생성하는 메소드
    public static String generateRandomPW()
    {
    	int len = 12;
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
 
        return IntStream.range(0, len)
                .map(i -> random.nextInt(chars.length()))
                .mapToObj(randomIndex -> String.valueOf(chars.charAt(randomIndex)))
                .collect(Collectors.joining());
    }

	@Override
	public boolean sendEmail(String mem_id, String tmp_pw, String mail, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com";
		String hostSMTPid = "hanscnnee@gmail.com";
		String hostSMTPpwd = "znanbhigkemybjmd";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "KABART@mail.com";
		String fromName = "KABART 담당자";
		String subject = "";
		String msg = "";

		if (div.equals("findpw")) {
			subject = "KABART 임시 비밀번호 입니다.";
			msg += "<div style='margin: 0 auto; padding: 60px 0 160px; width: 400px;'>";
			msg += "<div><h2 style='padding-bottom: 41px; text-align: center; font-size: 32px; letter-spacing: -.48px; color: #000; border-bottom: 2px solid #000;'>KABART</h2>";
			msg += "<div style='padding: 40px 0 30px;'><p style='margin: 0px 35px 10px;'>" + mem_id + "님의 임시 비밀번호 입니다.<br>비밀번호를 변경하여 사용하세요.</p></div>";
			msg += "<div style='position: relative; padding: 10px 35px 14px;'>";
			msg += "<h3 style='font-size: 13px; letter-spacing: -.07px; line-height: 18px;'>임시 비밀번호</h3>";
			msg += "<p style='padding: 8px 0; width: 100%; font-size: 15px; letter-spacing: -.15px; line-height: 22px; border-bottom: 1px solid #ebebeb;'>";
			msg += tmp_pw + "</p></div>";
			msg += "<div style='padding-top: 44px; margin: 0; padding: 0; text-align: center;'>";
			msg += "<a href='http://localhost/kabart/login'";
			msg += "style='font-weight: 700; color: #fff; background-color: #222; width: 100%; font-size: 16px; letter-spacing: -.16px; ";
			msg += " cursor: pointer; height: 52px; line-height: 52px; border-radius: 12px; display: block; text-decoration: none;'>";
			msg += " 로그인 </a></div></div></div>";
		}

		// 받는 사람 E-Mail 주소
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
			return true;
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
			return false;
		}
	}
}
