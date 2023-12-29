package com.java.www.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.www.dto.IncomeDto;
import com.java.www.service.FService;

@Controller
public class FController {

	@Autowired
	FService fService;

	@GetMapping("/")
	public String main() {
		return "layout/main";
	}

	@GetMapping("layout/chart")
	public String chart() {
		return "layout/chart";
	}

	@PostMapping("layout/incomeSelect")
	@ResponseBody // ajax 데이터 전송
	public List<IncomeDto> incomeSelect(String cyear) {
		System.out.println("FController incomeSelect cyear : " + cyear);
		// servic 연결 - 매출액 가져오기
		List<IncomeDto> list = fService.incomeSelect(cyear);
		return list;
	}

	@GetMapping("layout/publicData")
	public String publicData() {
		return "layout/publicData";
	}

	@GetMapping("layout/screenData")
	public String screenData() {
		return "layout/screenData";
	}
	
	@GetMapping("layout/bikeData")
	public String bikeData() {
		return "layout/bikeData";
	}
	
	
	@GetMapping("layout/searchBikeData")
	@ResponseBody // 데이터 전송
	public String searchBikeData(String txt) throws Exception{
		String key = "5742534b736170703130316b695a575a";	
		String bikeUrl = "http://openapi.seoul.go.kr:8088/"+ key +"/json/bikeList/1/10/";
	      URL url = new URL(bikeUrl);
	      HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			BufferedReader rd;
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			StringBuilder sb = new StringBuilder(); //String 을 계속 더하면 String변수를 계속 새롭게 만듬.
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line); //json데이터를 sb에 1줄씩 저장
			}
			rd.close();
			conn.disconnect();
			System.out.println(sb.toString());
			
			return sb.toString();
	}
	

	@GetMapping("layout/searchScreenData")
	@ResponseBody // 데이터 전송
	public String searchScreenData(String txt) throws Exception{
		 StringBuilder urlBuilder = new StringBuilder("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json");
		 String key = "0591fb86130566b5178d4db4b90fb596";	
		  urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") +"="+key);
	      urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode("20231228", "UTF-8")); /*응답메세지 형식 : REST방식의 URL호출 시 json값 추가(디폴트 응답메세지 형식은XML)*/
	      URL url = new URL(urlBuilder.toString());
		//URL url = new URL("https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1?serviceKey=ZpGFiSTvTQKlKenPGX3jisoEgScRFp6bQZXN8BUYmIiLf7gDUSnn%2BwnMHetnitHxdaC%2BGrmugGF%2F9nlXUFFhkA%3D%3D&numOfRows=10&pageNo=2&MobileOS=ETC&MobileApp=AppTest&arrange=A&_type=json");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder(); //String 을 계속 더하면 String변수를 계속 새롭게 만듬.
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line); //json데이터를 sb에 1줄씩 저장
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		
		return sb.toString();
		
	}

	
	
	//---- 공공데이터 사진정보: ----//
	
	@GetMapping("layout/searchData")
	@ResponseBody // 데이터 전송
	public String searchData(String txt) throws Exception {
		System.out.println("FController searchData txt : " + txt);
		String page = 1+"";
		String serviceKey = "ZpGFiSTvTQKlKenPGX3jisoEgScRFp6bQZXN8BUYmIiLf7gDUSnn%2BwnMHetnitHxdaC%2BGrmugGF%2F9nlXUFFhkA%3D%3D";
		
		String result= "";
		
		if(txt == null || txt.equals(""))
			//사진목록 메소드 호출 - 검색단어가 없을때
			result = galleryList(page,serviceKey);
		else	
			//사진조회 메소드 호출 - 검색단어가 있을때
			result = gallerySearchList(txt,page,serviceKey);

		return result;
	}
	

	//사진조회 메소드
	public String gallerySearchList(String txt,String page,String serviceKey) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/B551011/PhotoGalleryService1/gallerySearchList1");
		  urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") +"="+serviceKey);
	      urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*목록 건수*/
	      urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(page, "UTF-8")); /*페이지번호*/
	      urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*OS 구분 : IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC(기타)*/
	      urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명(어플명)*/
	      urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*정렬구분 : A=촬영일, B=제목, C=수정일*/
	      urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(txt, "UTF-8")); /*검색어*/
	      urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*응답메세지 형식 : REST방식의 URL호출 시 json값 추가(디폴트 응답메세지 형식은XML)*/
	      URL url = new URL(urlBuilder.toString());
		//URL url = new URL("https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1?serviceKey=ZpGFiSTvTQKlKenPGX3jisoEgScRFp6bQZXN8BUYmIiLf7gDUSnn%2BwnMHetnitHxdaC%2BGrmugGF%2F9nlXUFFhkA%3D%3D&numOfRows=10&pageNo=2&MobileOS=ETC&MobileApp=AppTest&arrange=A&_type=json");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder(); //String 을 계속 더하면 String변수를 계속 새롭게 만듬.
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line); //json데이터를 sb에 1줄씩 저장
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		
		return sb.toString();	
	}
	
	
	//사진목록 메소드
	public String galleryList(String page,String serviceKey) throws Exception {
		 StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1");
		  urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") +"="+serviceKey);
	      urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*목록 건수*/
	      urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(page, "UTF-8")); /*페이지번호*/
	      urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*OS 구분 : IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC(기타)*/
	      urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명(어플명)*/
	      urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*정렬구분 : A=촬영일, B=제목, C=수정일*/
	      urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*응답메세지 형식 : REST방식의 URL호출 시 json값 추가(디폴트 응답메세지 형식은XML)*/
	      URL url = new URL(urlBuilder.toString());
		//URL url = new URL("https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1?serviceKey=ZpGFiSTvTQKlKenPGX3jisoEgScRFp6bQZXN8BUYmIiLf7gDUSnn%2BwnMHetnitHxdaC%2BGrmugGF%2F9nlXUFFhkA%3D%3D&numOfRows=10&pageNo=2&MobileOS=ETC&MobileApp=AppTest&arrange=A&_type=json");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder(); //String 을 계속 더하면 String변수를 계속 새롭게 만듬.
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line); //json데이터를 sb에 1줄씩 저장
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		
		return sb.toString();
	}//galleryList
}
