package com.itwillbs.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.CrewPageDTO;
import com.itwillbs.domain.PhotoDTO;
import com.itwillbs.service.PhotoService;

@Controller
public class PhotoController {
	
	@Inject
	private PhotoService photoService;

	// xml 업로드 경로 (자원 이름) => 변수 저장
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	// 글 리스트 불러오기
	@RequestMapping(value = "/photo/list", method = RequestMethod.GET)
	public String photo(Model model, HttpServletRequest request) {

		// 한 화면에 보여줄 글 개수 설정(10개 설정)
		int pageSize = 10;
		String pageNum=request.getParameter("pageNum");
		
		// pageNum이 없을 때 1로 설정
		if(pageNum==null) pageNum="1";

		// 현 페이지 번호 파라미터값 가져오기
		// pageNum => 정수형 currentPage
		int currentPage=Integer.parseInt(pageNum);
		
		// pageDTO 객체생성
		CrewPageDTO pageDTO=new CrewPageDTO();
		
		// set 메서드호출
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		// 디비작업 메서드 호출
		List<PhotoDTO> photoList = photoService.getPhotoList(pageDTO);
		
		// 페이징 작업
		int count = photoService.getPhotoCount();
		int pageBlock = 10;
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		int pageCount = count/pageSize + (count%pageSize==0 ? 0 : 1);
		if(endPage > pageCount) endPage = pageCount;
		
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		
		// model 담아서 감
		model.addAttribute("photoList", photoList);
		model.addAttribute("pageDTO", pageDTO);

		// 기본 이동방식: 주소변경 없이 이동
		return "photo/photoList";
	}
	
	// 글쓰기 페이지로
	@RequestMapping(value = "/photo/write", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		
		// 기본 이동방식: 주소변경 없이 이동
		return "photo/photoWrite";
	}
	
	
	// 글쓰기 작업
	@RequestMapping(value = "/photo/writePro", method = RequestMethod.POST)
	public String writePro(HttpServletRequest request, MultipartFile file) throws Exception {
		System.out.println("BoardController writePro()");
		
		UUID uuid = UUID.randomUUID();
		String filename=uuid.toString() + "_" + file.getOriginalFilename();

		FileCopyUtils.copy(file.getBytes(), new File(uploadPath, filename));

		// 글쓰기 메서드 호출()
		PhotoDTO photoDTO = new PhotoDTO();
		photoDTO.setPhotoImage(filename);
		photoDTO.setPhotoContent(request.getParameter("photoContent"));
		photoService.insertPhoto(photoDTO);
		
		// 이동방식: 주소변경 하면서 이동
		return "redirect:/photo/list";
	} 
	
	// 글 내용 보기
	@RequestMapping(value = "/photo/content", method = RequestMethod.GET)
	public String content(HttpServletRequest request, Model model) {
		
		// photo/content?num=2
		int num=Integer.parseInt(request.getParameter("num"));
		
		// 조회수 증가
		photoService.updateReadcount(num);
		
		// 글 가져오기 메서드 호출
		PhotoDTO photoDTO = photoService.getPhoto(num);
		
		// model 데이터 담기
		model.addAttribute("photoDTO", photoDTO);
		
		// 기본 이동방식: 주소변경 없이 이동
		return "photo/photoContent";
	} // content()
	
	// 글 수정하기
	@RequestMapping(value = "/photo/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		
		// 세션값 id에 대한 정보를 디비 조회
		int num=Integer.parseInt(request.getParameter("num"));
		PhotoDTO dto = photoService.getPhoto(num);
		model.addAttribute("dto", dto);
		
		// 기본 이동방식: 주소변경 없이 이동
		return "photo/photoUpdate";
	} // String update()
	
	@RequestMapping(value = "/photo/updatePro", method = RequestMethod.POST)
	public String updatePro(PhotoDTO photoDTO) {

		photoService.updatePhoto(photoDTO);
		
		// 이동방식: 주소변경 하면서 이동
		// response.sendRedirect() 이동
		return "redirect:/photo/list";
	} // String updatePro()
	
	// 글 삭제
	@RequestMapping(value = "/photo/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request) {
		
		// 세션값 id에 대한 정보를 디비 조회
		int num = Integer.parseInt(request.getParameter("num"));
		photoService.deletePhoto(num);
	
		// 이동방식: 주소변경 하면서 이동
		// response.sendRedirect() 이동
		return "redirect:/photo/list";
	} // String delete()
	
}
