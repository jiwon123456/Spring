package com.java.www.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.www.dto.BoardDto;
import com.java.www.service.BService;

@Controller
@RequestMapping("board")
public class BController {

	@Autowired
	BService bService;
	
	@GetMapping("bList")//게시글 전체 가져오기
	public String bList(Model model) {
		//db에서 가져오기
		ArrayList<BoardDto> list = bService.selectAll();
		//model 저장
		model.addAttribute("list", list);
		
		return "board/bList";
	}//bList
	
	@GetMapping("bView") //게시글1개 가져오기, 이전글, 다음글 가져오기 :총 3개
	public String bView(@RequestParam(defaultValue = "1") int bno, Model model) {
		System.out.println("BController bno : "+bno);
		//db에서 가져오기 
		Map<String, Object> map = bService.selectOne(bno);
		
		//Model 저장
		model.addAttribute("map", map);
		return "board/bView";
	}//bView
	
	//글쓰기 화면 보기
	@GetMapping("bInsert") 
	public String bInsert() {
		return "board/bInsert";
	}//bInsert
	
	//글쓰기 저장
	@PostMapping("bInsert") 
	public String bInsert(BoardDto bdto, @RequestPart MultipartFile files, 
			Model model) throws IOException {
		//files - input type="file" name="files"
		//파일첨부의 파일이름
		if(!files.isEmpty()) { //파일첨부를 했으면
			String orgName = files.getOriginalFilename();
			System.out.println("BController 파일첨부 이름 : "+ orgName);
			long time = System.currentTimeMillis();
			String newName = time + "_" + orgName; //중복방지를 위해 새로운 이름변경
			String upload = "c:/upload/"; //파일업로드 위치
			File f = new File(upload+newName);
			files.transferTo(f); //파일을 저장위치에 저장시킴
			bdto.setBfile(newName); //파일이름을 BoardDto에 저장시킴
			
		}else { //파일첨부를 안했으면
			bdto.setBfile("");
			System.out.println("파일첨부가 없습니다");
		}
		
		//bd연결
		bService.bInsert(bdto);
		
		return "board/doBInsert";
	}//
	
	@PostMapping("bDelete")//게시글 삭제
	public String bDelete(@RequestParam(defaultValue = "1") int bno ,Model model) {
		System.out.println("BController bDelete bno : "+bno);
		
		bService.bDelete(bno);
		
		return "board/bDelete";
	}//bDelete
	
	@PostMapping("bUpdate") //게시글 수정페이지 보기
	public String bUpdate(@RequestParam(defaultValue = "1") int bno ,Model model) {
		Map<String, Object> map = bService.selectOne(bno); //게시글 1개 가져오기
		model.addAttribute("map", map);
		return "board/bUpdate";
	}//bUpdate


	@PostMapping("doBUpdate") //게시글 수정저장
	public String doBUpdate(BoardDto bdto,@RequestPart MultipartFile files,Model model) throws  IOException {
		//bdto -> bfile
		System.out.println("bController doBupdate bno : "+bdto.getBno());
		String orgName = "";
		String newName = "";
		if(!files.isEmpty()) {
			orgName = files.getOriginalFilename();
			long time = System.currentTimeMillis();
			newName = time + "_" + orgName;
			newName = String.format("%s_%d", orgName,time);
			String upload = "c:/upload/"; //파일저장 위치
			File f = new File(upload+newName); //파일 생성
			files.transferTo(f); //파일전송
			bdto.setBfile(newName); //bdto파일이름 저장
		}
		
		//db전송
		bService.doBUpdate(bdto); //파일업로드가 없으면 기존 파일이르 그대로 사용
		
		return "board/doBUpdate";
	}//doBUpdate

	@PostMapping("bReply") //답변달기페이지 보기
	public String bReply(@RequestParam(defaultValue = "1") int bno ,Model model) {
		Map<String, Object> map = bService.selectOne(bno); //게시글 1개 가져오기
		model.addAttribute("map", map);
		return "board/bReply";
	}//bReply
	
	//답변달기 저장
		@PostMapping("doBReply") 
		public String doBReply(BoardDto bdto, @RequestPart MultipartFile files, 
				Model model) throws IOException {
			//답변달기 - bgroup,bstep,bindent 값은 bdto에 담겨져 있음.
			//파일첨부의 파일이름
			if(!files.isEmpty()) { //파일첨부를 했으면
				String orgName = files.getOriginalFilename();
				System.out.println("BController doBReply 파일첨부 이름 : "+ orgName);
				long time = System.currentTimeMillis();
				String newName = time + "_" + orgName; //중복방지를 위해 새로운 이름변경
				String upload = "c:/upload/"; //파일업로드 위치
				File f = new File(upload+newName);
				files.transferTo(f); //파일을 저장위치에 저장시킴
				bdto.setBfile(newName); //파일이름을 BoardDto에 저장시킴
				
			}else { //파일첨부를 안했으면
				bdto.setBfile("");
				System.out.println("doBReply 파일첨부가 없습니다");
			}
			
			//bd로 전송
			bService.doBReply(bdto);
			
			return "board/doBReply";
		}//
	
	
	
	//-------------------------------------------------
	//------------------- 다중업로드 -------------------
	//-------------------------------------------------
	
	@GetMapping("bInsert2") //다중업로드 화면보기
	public String bInsert2() {
		return "board/bInsert2";
	}
	
	@PostMapping("bInsert2") //다중업로드 저장
	public String bInsert2(BoardDto bdto,List <MultipartFile> files,Model model) throws  IOException {
		//MultipartFile files - input type="file" name="files" name을 가져옴.
		//복수개 일떄는 List<MultipartFile>files 로 받음
		String orgName = "";
		String newName = "";
		String mergeName = "";
		int i=0;
		for(MultipartFile file:files) { //for(int i=0;i<files.size();i++){ 와 같음
			//파일첨부하기
			orgName = file.getOriginalFilename();
			System.out.println("BController 파일첨부 이름 : "+ orgName);
			long time = System.currentTimeMillis();
			newName += time + "_" + orgName; //중복방지를 위해 새로운 이름변경
			String upload = "c:/upload/"; //파일업로드 위치
			File f = new File(upload+newName);
			file.transferTo(f); //파일을 저장위치에 저장시킴
			
			//파일이름을 저장하기
			if(i==0) mergeName += time + "_" + orgName; //중복방지를 위해 새로운 이름변경
			else mergeName += "," + time + "_" + orgName;
			i++;
			
		}
		
		bdto.setBfile(mergeName); //파일이름을 BoardDto에 저장시킴
		System.out.println("BController 최종 파일첨부 이름 : "+ mergeName);
		
		//db연결 - 내용저장
		bService.bInsert(bdto);
		
		return "board/bInsert2";
	}
	
	@GetMapping("bList2")//게시글 전체 가져오기
	public String bList2(Model model) {
		//db에서 가져오기
		ArrayList<BoardDto> list = bService.selectAll();
		//model 저장
		model.addAttribute("list", list);
		
		return "board/bList2";
	}//bList
	
	@GetMapping("bView2") //게시글1개 가져오기, 이전글, 다음글 가져오기 :총 3개
	public String bView2(@RequestParam(defaultValue = "1") int bno, Model model) {
		System.out.println("BController bno : "+bno);
		//db에서 가져오기 
		Map<String, Object> map = bService.selectOne(bno);
		
		//Model 저장
		model.addAttribute("map", map);
		return "board/bView2";
	}//bView
	
}//class
