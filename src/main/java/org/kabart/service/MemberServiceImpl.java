package org.kabart.service;

import java.io.PrintWriter;

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
	public void findPW(HttpServletResponse resp, String mem_id, String email) throws Exception {
		resp.setContentType("text/html;charset=utf-8");
		System.out.println("member id : "+mem_id);
		PrintWriter out = resp.getWriter();

		// 가입된 아이디가 없으면
		if (mMapper.checkId(mem_id) == 0) {
			System.out.println("등록되지 않은 ID!!!");
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		} else {
			System.out.println("옛다 임시 비밀번호");
			// 임시 비밀번호 생성
			String tmpPW = "";
			for (int i = 0; i < 12; i++) {
				tmpPW += (char) ((Math.random() * 26) + 97);
			}
			System.out.println("임시 번호 : " + tmpPW);

			// 비밀번호 변경
			changePW(mem_id, tmpPW);
			// 비밀번호 변경 메일 발송
			this.sendEmail(mem_id, tmpPW, email, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}

	@Override
	public void sendEmail(String mem_id, String tmp_pw, String mail, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; // 네이버 이용시 smtp.naver.com
		String hostSMTPid = "hanscnnee@gmail.com";
		String hostSMTPpwd = "znanbhigkemybjmd";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "KABART@mail.com";
		String fromName = "KABART 담당자";
		String subject = "";
		String msg = "";

		if (div.equals("findpw")) {
			subject = "KABART 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += mem_id + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += tmp_pw + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); // 네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
}
