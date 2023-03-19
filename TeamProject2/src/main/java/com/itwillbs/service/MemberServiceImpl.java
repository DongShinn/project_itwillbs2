package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.RePageDTO;
import com.itwillbs.domain.ReviewDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO memberDAO;
	
	// user
	/* 유저 영역*/
	@Override
	public void userInsertMember(MemberDTO dto) {
		memberDAO.userInsertMember(dto);
	}

	@Override
	public MemberDTO userCheck(MemberDTO dto) {
		return memberDAO.userCheck(dto);
	}

	@Override
	public MemberDTO userIdCheck(MemberDTO dto) {
		return memberDAO.userIdCheck(dto);
	}

	@Override
	public MemberDTO userGetMember(String id) {
		return memberDAO.userGetMember(id);
	}

	@Override
	public MemberDTO userEmailCheck(MemberDTO dto) {
		return memberDAO.userEmailCheck(dto);
	}

	@Override
	public MemberDTO userGetMemberEmail(String email) {
		// TODO Auto-generated method stub
		return memberDAO.userGetMemberEmail(email);
	}
	/* 유저 영역*/

	/* 어드민 영역*/
	@Override
	public List<MemberDTO> getMemberList(PageDTO dto) {
		// startRow 구하기
		int startRow=(dto.getCurrentPage()-1)*dto.getPageSize()+1;
		// endRow 구하기
		int endRow=startRow+dto.getPageSize()-1;
		
		// 디비 limit startRow-1 
		dto.setStartRow(startRow-1);
		dto.setEndRow(endRow);
		
		return memberDAO.getMemberList(dto);
	}

	@Override
	public int getMemberCount() {
		// TODO Auto-generated method stub
		return memberDAO.getMemberCount();
	}
	
	@Override
	public void userDeleteMember(MemberDTO dto) {
		memberDAO.userDeleteMember(dto);
	}
	/* 어드민 영역*/
	
	
	
	
	// user

	// mypage
		@Override
		public MemberDTO getMember(String userId) {

			return memberDAO.getMember(userId);
		}

		@Override
		public void updateMember(MemberDTO dto) {

			memberDAO.updateMember(dto);
		}

		@Override
		public void deleteMember(MemberDTO dto) {

			memberDAO.deleteMember(dto);
		}

		@Override
		public List<ReviewDTO> getMyReviewList(RePageDTO dto) {
			int review_Num = dto.getReview_Num();
			// startRow 구하기
			int startRow = (dto.getCurrentPage() - 1) * dto.getPageSize() + 1;
			// endRow 구하기
			int endRow = startRow + dto.getPageSize() - 1;

			// 디비 limit startRow-1
			dto.setStartRow(startRow - 1);
			dto.setEndRow(endRow);
			dto.setReview_Num(review_Num);

			return memberDAO.getMyReviewList(dto);

		}

		@Override
		public int getMyReviewCount() {
			return memberDAO.getMyReviewCount();
		}
	
}
