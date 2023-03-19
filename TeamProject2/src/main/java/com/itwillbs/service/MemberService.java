package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.RePageDTO;
import com.itwillbs.domain.ReviewDTO;

public interface MemberService {

	// user
	/* 유저 영역 */
	public void userInsertMember(MemberDTO dto);

	public MemberDTO userCheck(MemberDTO dto);

	public MemberDTO userIdCheck(MemberDTO dto);

	public MemberDTO userGetMember(String id);

	public MemberDTO userEmailCheck(MemberDTO dto);

	public MemberDTO userGetMemberEmail(String id);
	/* 유저 영역 */

	/* 어드민 영역 */
	public List<MemberDTO> getMemberList(PageDTO dto);

	public int getMemberCount();

	public void userDeleteMember(MemberDTO dto);
	/* 어드민 영역 */
	// user

	// mypage
	public MemberDTO getMember(String userId);

	public void updateMember(MemberDTO dto);

	public void deleteMember(MemberDTO dto);

	public List<ReviewDTO> getMyReviewList(RePageDTO dto);

	public int getMyReviewCount();
}
