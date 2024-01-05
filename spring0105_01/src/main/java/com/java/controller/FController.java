package com.java.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;
import com.java.service.BService;

import jakarta.servlet.http.HttpSession;

@Controller
public class FController {

	@Autowired BService bService;
	@Autowired HttpSession session;
	
	@RequestMapping({"/","/main"})
	public String main() {
		return "main";
	}
	
	@GetMapping("blist") //게시글 전체 가져오기
	public String blist(Model model) {
		List<BoardDto> list = bService.selectAll();
		model.addAttribute("list", list);
		return "blist";
	}
	
	@GetMapping("bwrite")
	public String bwrite() {
		return "bwrite";
	}

	@GetMapping("map")
	public String map() {
		return "map";
	}

	@PostMapping("screenInfo")
	@ResponseBody
	public String screenInfo(String movie) throws Exception {
	   System.out.println("test data : "+movie);
	   //---
	  //영화정보 api가져오기
	   String key = "0591fb86130566b5178d4db4b90fb596";
		//오늘날짜
	   System.currentTimeMillis();
	   SimpleDateFormat sdf =new SimpleDateFormat("yyyyMMdd");
	   String today = sdf.format(System.currentTimeMillis());
	   System.out.println("오늘날짜 : "+today);
	   
	   StringBuilder urlBuilder = new StringBuilder("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json"); /*URL*/
       urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "="+key); /*Key*/
       urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode("20240104", "UTF-8")); /*날짜*/
       URL url = new URL(urlBuilder.toString());
       HttpURLConnection conn = (HttpURLConnection) url.openConnection();
       conn.setRequestMethod("GET");
       conn.setRequestProperty("Content-type", "application/json");
       System.out.println("Response code: " + conn.getResponseCode());
       BufferedReader rd;
       if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
           rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
       } else {
           rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
       }
       StringBuilder sb = new StringBuilder();
       String line;
       while ((line = rd.readLine()) != null) {
           sb.append(line);
       }
       rd.close();
       conn.disconnect();
       System.out.println(sb.toString());
       return sb.toString();
//--
	}

	@PostMapping("uploadImage") //summernote에서 ajax이미지 전송
	@ResponseBody
	public String uploadImage(@RequestPart MultipartFile file) throws Exception {
		String urlName = "";
		//파일 서버로 전송하는 부분
		if(!file.isEmpty()) {
			String oriFileName = file.getOriginalFilename();
			long time = System.currentTimeMillis();
			String uploadFileName = time + "_" + oriFileName; //파일이름변경
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl+uploadFileName); //파일 등록
			file.transferTo(f); //파일서버로 전송
			urlName = "/upload/"+uploadFileName;
			System.out.println("FController uploadImage ajax전송 링크 주소 : "+urlName);
		}
		return urlName;
	}//uploadImage

	@GetMapping("bview") //게시글 한개 가져오기
	public String bview(@RequestParam(defaultValue = "1") int bno, Model model) {
		BoardDto bdto = bService.selectOne(bno);
		model.addAttribute("bdto", bdto);
		return "bview";
	}

	@PostMapping("bwrite") //글쓰기 저장
	public String bwrite(BoardDto bdto,@RequestPart MultipartFile file,Model model) throws Exception {
		System.out.println("FController bwrite btitle :"+bdto.getBtitle());
		//파일 서버로 전송하는 부분
		if(!file.isEmpty()) {
			String oriFileName = file.getOriginalFilename();
			long time = System.currentTimeMillis();
			String uploadFileName = time + "_" + oriFileName; //파일이름변경
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl+uploadFileName); //파일 등록
			file.transferTo(f); //파일서버로 전송
			bdto.setBfile(uploadFileName); //dto bfile 이름저장
		}else {
			bdto.setBfile("");
		}
		System.out.println("FController bwrite bfile : "+bdto.getBfile());
		
		//servic 연결 
		bService.bwrite(bdto);
		
		model.addAttribute("result", "sucess-bwrite");
		return "result";
	}
	
}
