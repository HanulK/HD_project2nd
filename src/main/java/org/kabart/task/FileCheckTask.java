package org.kabart.task;

import java.io.File;
import java.nio.file.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

import org.kabart.domain.AttachVO;
import org.kabart.mapper.AttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Component

public class FileCheckTask {

	@Setter(onMethod_ = @Autowired)
	private AttachMapper attachMapper;
	
	private String getFolderYesterDay() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar cal = Calendar.getInstance();
		
		cal.add(Calendar.DATE, -1);
		
		String str = sdf.format(cal.getTime());
		
		return str.replace("-", File.separator);
	}
	
	@Scheduled(cron="0 0 2 * * *")
	public void checkFiles() throws Exception {
		
		log.warn("File Check Task Run ,,,,,,,,,,,,,,,,,");
		log.warn(new Date());
		
		List<AttachVO> fileList = attachMapper.getOldFiles();
		
		List<Path> fileListPaths = fileList.stream().map(vo -> Paths.get("C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs", vo.getUploadPath(), vo.getFile_uuid() + "_" + vo.getFileName())).collect(Collectors.toList());
		
		fileList.stream().filter(vo -> vo.getFileType() == true).map(vo -> Paths.get("C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs", vo.getUploadPath(),"s_"+ vo.getFile_uuid() + "_" + vo.getFileName())).forEach(p -> fileListPaths.add(p));
		
		log.warn("=====================================");
		
		fileListPaths.forEach(p -> log.warn(p));
		
		File targetDir = Paths.get("C:\\dev64\\workspace-sts\\HD_project2nd\\usedImgs", getFolderYesterDay()).toFile();
		
		File[] removeFiles = targetDir.listFiles(file -> fileListPaths.contains(file.toPath()) == false);
		
		log.warn("-------------------------------------");
		
		for (File file : removeFiles) {
			log.warn(file.getAbsolutePath());
			file.delete();
		}
	}
}
