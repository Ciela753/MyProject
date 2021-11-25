package kr.co.codingmonkey.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {
	static @Getter
	private String uploadFolder = "C:\\Users\\User\\Desktop\\chy\\upload";	
//	private String uploadFolder = "C:\\Users\\chyn1\\OneDrive\\Desktop\\workspace\\upload";	
	
	@PostMapping("ckupload") @ResponseBody
	public Map<String, Object> ckUpload(MultipartFile upload) throws IllegalStateException, IOException {
		log.info("ckupload ::" +upload);
		log.info(upload.getOriginalFilename());
		
		String ext = upload.getOriginalFilename().substring(upload.getOriginalFilename().lastIndexOf(".")); 
		String fileName =UUID.randomUUID().toString() + ext;
		log.info("uploaded ::" + fileName);
		File file = new File(uploadFolder, fileName);
		
//		FileOutputStream thumbnail = new FileOutputStream(new File(file, "s_" + fileName));
//		Thumbnailator.createThumbnail(upload.getInputStream(), thumbnail, 100, 100);
//		thumbnail.close();
				
		
		upload.transferTo(file);
		Map<String, Object> map = new HashMap<>();
		map.put("uploaded", 1);
		map.put("fileName", "????");
		map.put("url", "/display?fileName="+fileName);
		
		log.info(map);
		return map;
	}
	
	@GetMapping("display")
	public ResponseEntity<byte[]> getFile(String fileName) throws IOException {
		HttpHeaders headers = new HttpHeaders();
		log.info("fileName :: " + fileName);
		File file = new File(uploadFolder, fileName);
		log.info("file ::"+ file);
		
		ResponseEntity<byte[]> ret = null;
		headers.add("Content-Type", Files.probeContentType(file.toPath()));
		ret = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), headers, HttpStatus.OK);
		
		return ret;
	}
	private String getFolder() {
		return new SimpleDateFormat(
//				String.format("yyyy%sMM%sdd", File.separator, File.separator)).format(new Date());
		"yyyy/MM/dd").format(new Date());
	}

}
