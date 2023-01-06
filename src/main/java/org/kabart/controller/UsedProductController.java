package org.kabart.controller;

import java.io.*;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.*;

import org.kabart.domain.*;
import org.kabart.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/kabart/usedProduct")
@Log4j

public class UsedProductController {

	@Setter(onMethod_ = { @Autowired })
	private UsedProductDetailService service;

	@GetMapping({ "/used_prod_detail", "/used_prod_detail_modify" })
	public void used_prod_detail(@RequestParam("up_id") int up_id, Model model) {
		log.info("used item detail controller....");

		UsedProductDetailVO read = service.read(up_id);

		model.addAttribute("read", read);
	}

	@Setter(onMethod_ = { @Autowired })
	private UsedProductListService usedProductListService;

	@GetMapping("/used_prod_list")
	public void used_prod_list(@RequestParam(value = "prod_category") String prod_category,
			@ModelAttribute("cri") Criteria cri, Model model) {
		List<UsedProductListVO> list = usedProductListService.getUsedProductListWithPaging(prod_category, cri);
		if (prod_category.equals("all")) {
			list.get(0).setProd_category("all");
		}
		model.addAttribute("usedProductList", list);

		int total = usedProductListService.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@Setter(onMethod_ = { @Autowired })
	private ProductDetailService productDetailService;

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/used_prod_sell")
	public void used_prod_sell(@RequestParam("prod_id") int prod_id, Model model) {

		log.info("prod_detail Controller");
		log.info("prod_id : " + prod_id);

		List<ImgVO> imgs = productDetailService.getdetailImgs(prod_id);
		List<UsedProductVO> useds = productDetailService.getused(prod_id);

		ProductDetailVO detail = productDetailService.getProdDetail(prod_id);

		detail.setImgs(imgs);
		detail.setUseds(useds);

		log.info(detail);

		model.addAttribute("detail", detail);
	}

	@Setter(onMethod_ = { @Autowired })
	private UsedSellService usedSellService;

	@PreAuthorize("isAuthenticated()")
	@PostMapping("/used_prod_sell")
	public String used_prod_sell_insert(UsedSellVO usedSellVO, RedirectAttributes rttr) {
		
		if (usedSellVO.getAttachList() != null) {
			usedSellVO.getAttachList().forEach(attach -> System.out.println(attach));
		}
		
		usedSellService.registerUsedProduct(usedSellVO);
		rttr.addFlashAttribute("result", usedSellVO.getUp_id());

		return "redirect:/kabart/mypage/selling";
	}

	@PostMapping("/used_prod_detail_modify")
	public String used_prod_modify(@RequestParam("up_id") int up_id, UsedSellVO usedSellVO, RedirectAttributes rttr) {

		log.info("modify : " + usedSellVO);

		if (usedSellService.modifyUsedProduct(usedSellVO)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/kabart/usedProduct/used_prod_detail?up_id=" + up_id;
	}

	@PostMapping("/used_prod_detail_remove")
	public String used_prod_remove(@RequestParam("up_id") int up_id, RedirectAttributes rttr) {

		log.info("remove : " + up_id);
		if (usedSellService.removeUsedProduct(up_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/kabart/usedProduct/used_prod_list?prod_category=all";
	}

	@ResponseBody
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<AttachVO>> uploadAjaxPost(MultipartFile[] uploadFile) {

		List<AttachVO> list = new ArrayList<>();
		String uploadFolder = "C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs";
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder, uploadFolderPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		for (MultipartFile multipartFile : uploadFile) {

			AttachVO attachVO = new AttachVO();
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			attachVO.setFileName(uploadFileName);

			UUID uuid = UUID.randomUUID();
			
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			

			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				
				attachVO.setFile_uuid(uuid.toString());
				attachVO.setUploadPath(uploadFolderPath);
				
				if (checkImageType(saveFile)) {
					
					attachVO.setFileType(true);
					
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}
				
				list.add(attachVO);
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		return new ResponseEntity<>(list, HttpStatus.OK);

	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {
		
		File file;
		
		try {
			file = new File("C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			if (type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				
				file = new File(largeFileName);
				
				file.delete();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {
		
		File file = new File("C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), headers, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}
	
	private boolean checkImageType(File file) {
		
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
}
