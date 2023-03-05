package com.itwillbs.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.ReviewDTO;
import com.google.gson.JsonObject;
import com.itwillbs.domain.ReplyDTO;
import com.itwillbs.domain.RePageDTO;
import com.itwillbs.service.ReviewService;





@Controller
public class ReviewController {
	//자동으로 객체생성  부모=자식
	@Inject
	private ReviewService reviewService;
	
	
	// xml 업로드 경로 (자원이름)=> 변수 저장
		@Resource(name = "uploadPath")
		private String uploadPath;
	
		
	@RequestMapping(value = "/review/write", method = RequestMethod.GET)	
	public String write(HttpSession session, Model model) {
		//메서드 호출
		// dto  Model model(request) 담기
		// 기본 이동방식 : 주소변경 없이 이동 
		return "review/writeForm";
	}//
	
	
	@RequestMapping(value = "/review/writePro", method = RequestMethod.POST)	
	public String writePro(ReviewDTO dto, HttpServletRequest request, MultipartFile file) throws Exception {
//		String id = (String)session.getAttribute("id");
		// 아이디 비밀번호 일치 => memberDTO 주소담아서 옴 => 세션값 생성 , main 이동
		// 아이디 비밀번호 틀림 => memberDTO null 넘어옴 => "정보틀림" 뒤로이동
//	    session.setAttribute("id", memberDTO.getUser_id());
		// 글쓰기 메서드 호출()
		System.out.println(dto.toString());
		// 업로드 파일명 => 랜덤문자_파일이름 => 파일이름 중복 안됨
		UUID uuid = UUID.randomUUID();
		String filename = uuid.toString() + "_" + file.getOriginalFilename();
		
		// 원본 파일 복사 => upload 복사
//		FileCopyUtils.copy(원본, 복사해서 새롭게 파일 만들기);
//		FileCopyUtils.copy(file.getBytes(), new File(경로, 파일이름));
		FileCopyUtils.copy(file.getBytes(), new File(uploadPath, filename));
		
		// BoardDTO 객체생성 <= 저장
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setUserId(request.getParameter("user_id"));
		reviewDTO.setReviewScore(Double.parseDouble(request.getParameter("review_Score")));
		reviewDTO.setReviewTitle(request.getParameter("review_Title"));
		reviewDTO.setReviewContext(request.getParameter("review_Context"));
		reviewDTO.setReviewFile(filename);
		reviewDTO.setActNum(Integer.parseInt(request.getParameter("act_Num")));
		
		
		
		// insertBoard(boardDTO) 메서드 호출
		reviewService.insertReview(reviewDTO);
		return "redirect:/review/list";
	}//
	
	@RequestMapping(value = "/review/list", method = RequestMethod.GET)	
	public String list(Model model, HttpServletRequest request, HttpSession session) {
		// http://localhost:8080/myweb/board/list
		// http://localhost:8080/myweb/board/list?pageNum=2
		// 한 화면에 보여줄 글 개수 설정 (10개 설정)
		int pageSize=5;
		// 현 페이지 번호 파라미터값 가져오기
		String pageNum=request.getParameter("pageNum");
		// 페이지 번호가 없으면 => "1" 설정
		if(pageNum==null){
		 	pageNum="1";
		}
		// pageNum => 정수형 currentPage
		int currentPage=Integer.parseInt(pageNum);
		// PageDTO 객체생성
		RePageDTO dto=new RePageDTO();
		// set 메서드 호출
		dto.setPageSize(pageSize);
		dto.setPageNum(pageNum);
		dto.setCurrentPage(currentPage);
		
		// 디비작업 메서드 호출
		// List<BoardDTO> 리턴할형 getBoardList(PageDTO dto) 메서드 정의
		// List<BoardDTO> boardList =dao.getBoardList(dto);
		List<ReviewDTO> reviewList=reviewService.getReviewList(dto);
		//페이징 작업
		// 전체 게시판 글의 개수 가져오기
		// // select count(*) from board
		int count = reviewService.getReviewCount();
	      int pageBlock=10; 
	      int startPage=(currentPage-1)/pageBlock*pageBlock+1;
	      int endPage=startPage+pageBlock-1;
	      int pageCount = count/pageSize
	                +(count%pageSize==0 ? 0 : 1);
	      if(endPage > pageCount){
	         endPage=pageCount;
	      }
	      
	      dto.setCount(count);
	      dto.setPageBlock(pageBlock);
	      dto.setStartPage(startPage);
	      dto.setEndPage(endPage);
	      dto.setPageCount(pageCount);
	      
	      for(int i=0; i<reviewList.size(); i++) {
	    	  System.out.println(reviewList.get(i).getUserId());
	      }
	      
	      model.addAttribute("reviewList", reviewList);
	      model.addAttribute("pageDto", dto);
	      return "review/list";
	      
	      
	}//

	
	@RequestMapping(value = "/review/content", method = RequestMethod.GET)	
	public String content(HttpServletRequest request,Model model) throws Exception {
		System.out.println("/review/content");
		ReplyDTO boardDTO = new ReplyDTO();
		System.out.println(boardDTO.toString()); 
		
		// /board/content?num2
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
		// 조회수 증가
		reviewService.updateReadcount(review_Num);
		// 글가져오기 메서드 호출
		ReviewDTO dto = reviewService.getReview(review_Num);
		//model 데이터 담기
		model.addAttribute("dto", dto);
		
		// 조회수 증가
		
		int pageSize=15;
		//페이지 번호 가져오기
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		RePageDTO pageDTO=new RePageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setReview_Num(review_Num);
		
		List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
		
		int count=reviewService.getBoardCount();
		
		int pageBlock=10; 
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
		if(endPage > pageCount){
	 	   endPage=pageCount;
	    }
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		pageDTO.setReview_Num(review_Num);
		
		//데이터 담기
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDTO", pageDTO);
		// 기본 이동방식 : 주소변경 없이 이동 
//		return "redirect:/review/content";
		return "review/content";
		
	}//
	
	@RequestMapping(value = "/review/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("update");
		int num = Integer.parseInt(request.getParameter("num"));
		ReviewDTO dto = reviewService.getReview(num);
		System.out.println(dto.toString());
		model.addAttribute("dto", dto);
		return "review/updateForm";
	}
	
	@RequestMapping(value = "/review/updatePro", method = RequestMethod.POST)
	public String updatePro(ReviewDTO dto) {
		System.out.println("BoardController updatePro() ");
		System.out.println(dto.toString());
		reviewService.updateReview(dto);
		
		return "redirect:/review/list";
	}
	
	@RequestMapping(value = "/review/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		reviewService.deleteReview(num);
		
		return "redirect:/review/list";
	}
	
	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
      
//		String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.		 
		
		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/fileupload/";
		
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernote/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
	
	@RequestMapping(value = "/review/mypage", method = RequestMethod.GET)	
	public String mypage(HttpSession session, Model model) {
		//메서드 호출
		// dto  Model model(request) 담기
		// 기본 이동방식 : 주소변경 없이 이동 
		return "review/mypage";
	}//
	
	@RequestMapping(value = "/board/rewrite", method = RequestMethod.GET)	
	public String rewrite(HttpServletRequest request, Model model) {
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
		// 조회수 증가
		reviewService.updateReadcount(review_Num);
		// 글가져오기 메서드 호출
		ReviewDTO dto = reviewService.getReview(review_Num);
		//model 데이터 담기
		model.addAttribute("dto", dto);
		// 기본 이동방식 : 주소변경 없이 이동 
		return "center/writeForm";
	}//
	
	@RequestMapping(value = "/board/rewritePro", method = RequestMethod.POST)	
	public String rewritePro(ReplyDTO boardDTO, HttpServletRequest request, Model model) {
		System.out.println("/board/rewritePro");
		
		System.out.println(boardDTO.toString()); 	
		// insertBoard(boardDTO) 메서드 호출
		
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
//		// 조회수 증가
////		reviewService.updateReadcount(review_Num);
//		// 글가져오기 메서드 호출
		ReviewDTO dto = reviewService.getReview(review_Num);
//		//model 데이터 담기
		model.addAttribute("dto", dto);
		
		reviewService.insertBoard(boardDTO);
		
		//화면에 보여줄 글개수 
				int pageSize=5;
				//페이지 번호 가져오기
				String pageNum=request.getParameter("pageNum");
				if(pageNum==null) {
					pageNum="1";
				}
				int currentPage=Integer.parseInt(pageNum);
				RePageDTO pageDTO=new RePageDTO();
				pageDTO.setPageSize(pageSize);
				pageDTO.setPageNum(pageNum);
				pageDTO.setCurrentPage(currentPage);
				pageDTO.setReview_Num(review_Num);
				
				List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
				
				int count=reviewService.getBoardCount();
				
				int pageBlock=10; 
				int startPage=(currentPage-1)/pageBlock*pageBlock+1;
				int endPage=startPage+pageBlock-1;
				int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
				if(endPage > pageCount){
			 	   endPage=pageCount;
			    }
				pageDTO.setCount(count);
				pageDTO.setPageBlock(pageBlock);
				pageDTO.setStartPage(startPage);
				pageDTO.setEndPage(endPage);
				pageDTO.setPageCount(pageCount);
				pageDTO.setReview_Num(review_Num);
				
				//데이터 담기
				model.addAttribute("boardList", boardList);
				model.addAttribute("pageDTO", pageDTO);
//				return "redirect:/review/content";
		return "review/content";
	}//
	
	@RequestMapping(value = "/board/relist", method = RequestMethod.GET)	
	public String relist(HttpServletRequest request,Model model) {
		//화면에 보여줄 글개수 
		int pageSize=5;
		//페이지 번호 가져오기
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		RePageDTO pageDTO=new RePageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		
		List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
		
		int count=reviewService.getBoardCount();
		
		int pageBlock=10; 
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
		if(endPage > pageCount){
	 	   endPage=pageCount;
	    }
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		//데이터 담기
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDTO", pageDTO);
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "center/notice";
	}//
	
	
	@RequestMapping(value = "/board/recontent", method = RequestMethod.GET)	
	public String recontent(HttpServletRequest request,Model model) {
		int num=Integer.parseInt(request.getParameter("num"));
		
		ReplyDTO dto=reviewService.getBoard(num);
		
		model.addAttribute("dto", dto);
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "center/content";
	}//
	
	
	@RequestMapping(value = "/board/reupdate", method = RequestMethod.GET)	
	public String reupdate(HttpServletRequest request,Model model) {
		
//		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
////		// 조회수 증가
//////		reviewService.updateReadcount(review_Num);
////		// 글가져오기 메서드 호출
//		ReviewDTO dto = reviewService.getReview(review_Num);
////		//model 데이터 담기
//		model.addAttribute("dto", dto);
		
		int num=Integer.parseInt(request.getParameter("num"));
		
		ReplyDTO dto=reviewService.getBoard(num);
		
		model.addAttribute("dto", dto);
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "review/replyupdate";
	}//
	
	@RequestMapping(value = "/board/reupdatePro", method = RequestMethod.POST)	
	public String reupdatePro(ReplyDTO boardDTO, HttpServletRequest request,Model model) {
		
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
//	// 조회수 증가
	reviewService.updateReadcount(review_Num);
//	// 글가져오기 메서드 호출
	ReviewDTO dto = reviewService.getReview(review_Num);
//	//model 데이터 담기
	model.addAttribute("dto", dto);
		
		// updateBoard(boardDTO) 메서드 호출
		reviewService.updateBoard(boardDTO);
		
		//화면에 보여줄 글개수 
				int pageSize=5;
				//페이지 번호 가져오기
				String pageNum=request.getParameter("pageNum");
				if(pageNum==null) {
					pageNum="1";
				}
				int currentPage=Integer.parseInt(pageNum);
				RePageDTO pageDTO=new RePageDTO();
				pageDTO.setPageSize(pageSize);
				pageDTO.setPageNum(pageNum);
				pageDTO.setCurrentPage(currentPage);
				pageDTO.setReview_Num(review_Num);
				
				List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
				
				int count=reviewService.getBoardCount();
				
				int pageBlock=10; 
				int startPage=(currentPage-1)/pageBlock*pageBlock+1;
				int endPage=startPage+pageBlock-1;
				int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
				if(endPage > pageCount){
			 	   endPage=pageCount;
			    }
				pageDTO.setCount(count);
				pageDTO.setPageBlock(pageBlock);
				pageDTO.setStartPage(startPage);
				pageDTO.setEndPage(endPage);
				pageDTO.setPageCount(pageCount);
				pageDTO.setReview_Num(review_Num);
				
				//데이터 담기
				model.addAttribute("boardList", boardList);
				model.addAttribute("pageDTO", pageDTO);
		return "review/content";
//		return "redirect:/review/content";
	}//
	
	@RequestMapping(value = "/board/redelete", method = RequestMethod.GET)	
	public String redelete(HttpServletRequest request, Model model) {
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
//		// 조회수 증가
		reviewService.updateReadcount(review_Num);
//		// 글가져오기 메서드 호출
		ReviewDTO dto = reviewService.getReview(review_Num);
//		//model 데이터 담기
		model.addAttribute("dto", dto);
		
		
		ReplyDTO boardDTO = new ReplyDTO();
		boardDTO.setReview_Num(Integer.parseInt(request.getParameter("review_Num")));
		boardDTO.setNum(Integer.parseInt(request.getParameter("num")));
		
		reviewService.deleteBoard(boardDTO);
		
		
		int pageSize=5;
		//페이지 번호 가져오기
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		RePageDTO pageDTO=new RePageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setReview_Num(review_Num);
		
		List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
		
		int count=reviewService.getBoardCount();
		
		int pageBlock=10; 
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
		if(endPage > pageCount){
	 	   endPage=pageCount;
	    }
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		//데이터 담기
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDTO", pageDTO);
		
		
		return "review/content";
	}//
	
	@RequestMapping(value = "/board/rerewrite", method = RequestMethod.GET)	
	public String rerewrite(ReplyDTO boardDTO, Model model) {
		
//		ReviewDTO reviewDTO = new ReviewDTO();
//		reviewDTO=reviewService.getReview(reviewDTO.getReview_Num());
//		model.addAttribute("reviewDTO", reviewDTO);
//		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
//		// 조회수 증가
////		reviewService.updateReadcount(review_Num);
//		// 글가져오기 메서드 호출
//		ReviewDTO dto = reviewService.getReview(review_Num);
//		//model 데이터 담기
//		model.addAttribute("dto", dto);
		
		
		// /board/rewrite?num=${dto.num}
		//re_ref, re_lev, re_seq 가져오기
		boardDTO=reviewService.getBoard(boardDTO.getNum());
		
		model.addAttribute("boardDTO", boardDTO);
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "review/rewriteForm";
	}//
	
	@RequestMapping(value = "/board/rerewritePro", method = RequestMethod.POST)	
	public String rerewritePro(ReplyDTO boardDTO,HttpServletRequest request, Model model) {
		
	
//		BoardDTO boardDTO = new BoardDTO();
//		System.out.println("댓슬");
//		System.out.println(boardDTO.toString());
////		boardDTO.setNum(Integer.parseInt(request.getParameter("num")));
//		boardDTO.setReview_Num(Integer.parseInt(request.getParameter("review_Num")));
//		boardDTO.setRe_lev(Integer.parseInt(request.getParameter("re_ref")));
//		boardDTO.setRe_ref(Integer.parseInt(request.getParameter("re_lev")));
//		boardDTO.setRe_seq(Integer.parseInt(request.getParameter("re_seq")));
//		boardDTO.setContent(request.getParameter("content"));
//		boardDTO.setUser_id(request.getParameter("user_id"));
		
//		int num = Integer.parseInt(request.getParameter("num"));
//		int review_Num = Integer.parseInt(request.getParameter("review_Num"));

//		boardDTO = reviewService.getBoard(num);
//		ReviewDTO dto = reviewService.getReview(review_Num);
		reviewService.reinsertBoard(boardDTO);

//		model.addAttribute("dto", dto);
//		model.addAttribute("dto", dto);
		
		int review_Num = Integer.parseInt(request.getParameter("review_Num"));
//		// 조회수 증가
		reviewService.updateReadcount(review_Num);
//		// 글가져오기 메서드 호출
		ReviewDTO dto = reviewService.getReview(review_Num);
//		//model 데이터 담기
		model.addAttribute("dto", dto);
			
			// updateBoard(boardDTO) 메서드 호출
			reviewService.updateBoard(boardDTO);
			
			//화면에 보여줄 글개수 
					int pageSize=5;
					//페이지 번호 가져오기
					String pageNum=request.getParameter("pageNum");
					if(pageNum==null) {
						pageNum="1";
					}
					int currentPage=Integer.parseInt(pageNum);
					RePageDTO pageDTO=new RePageDTO();
					pageDTO.setPageSize(pageSize);
					pageDTO.setPageNum(pageNum);
					pageDTO.setCurrentPage(currentPage);
					pageDTO.setReview_Num(review_Num);
					
					List<ReplyDTO> boardList=reviewService.getBoardList(pageDTO);
					
					int count=reviewService.getBoardCount();
					
					int pageBlock=10; 
					int startPage=(currentPage-1)/pageBlock*pageBlock+1;
					int endPage=startPage+pageBlock-1;
					int pageCount = count/pageSize+(count%pageSize==0 ? 0 : 1);
					if(endPage > pageCount){
				 	   endPage=pageCount;
				    }
					pageDTO.setCount(count);
					pageDTO.setPageBlock(pageBlock);
					pageDTO.setStartPage(startPage);
					pageDTO.setEndPage(endPage);
					pageDTO.setPageCount(pageCount);
					pageDTO.setReview_Num(review_Num);
					
					//데이터 담기
					model.addAttribute("boardList", boardList);
					model.addAttribute("pageDTO", pageDTO);
		
				
				
		return "review/content";
//		return "redirect:/board/relist";
	}//
	
	
}//
