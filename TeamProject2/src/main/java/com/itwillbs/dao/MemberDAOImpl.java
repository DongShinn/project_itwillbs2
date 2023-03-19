package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.RePageDTO;
import com.itwillbs.domain.ReviewDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "com.itwillbs.mappers.memberMapper";

	// user
	/* 유저 영역 */
	@Override
	public void userInsertMember(MemberDTO dto) {
		sqlSession.insert(namespace + ".userInsertMember", dto);
	}

	@Override
	public MemberDTO userCheck(MemberDTO dto) {
		return sqlSession.selectOne(namespace + ".userCheck", dto);
	}

	@Override
	public MemberDTO userIdCheck(MemberDTO dto) {
		return sqlSession.selectOne(namespace + ".userIdCheck", dto);
	}

	@Override
	public MemberDTO userGetMember(String id) {
		return sqlSession.selectOne(namespace + ".userGetMember", id);
	}

	@Override
	public MemberDTO userEmailCheck(MemberDTO dto) {
		return sqlSession.selectOne(namespace + ".userEmailCheck", dto);
	}

	@Override
	public MemberDTO userGetMemberEmail(String email) {
		return sqlSession.selectOne(namespace + ".userGetMemberEmail", email);
	}
	/* 유저 영역 */

	/* 어드민 영역 */
	@Override
	public List<MemberDTO> getMemberList(PageDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".getMemberList", dto);
	}

	@Override
	public int getMemberCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".getMemberCount");
	}

	@Override
	public void userDeleteMember(MemberDTO dto) {
		sqlSession.selectOne(namespace + ".userDeleteMember", dto);

	}
	/* 어드민 영역 */

	// user

	// mypage
	@Override
	public MemberDTO getMember(String userId) {

		return sqlSession.selectOne(namespace + ".getMember", userId);
	}

	@Override
	public void updateMember(MemberDTO dto) {
		sqlSession.update(namespace + ".updateMember", dto);
	}

	@Override
	public void deleteMember(MemberDTO dto) {

		sqlSession.delete(namespace + ".deleteMember", dto);
	}

	@Override
	public List<ReviewDTO> getMyReviewList(RePageDTO dto) {
		System.out.println(dto.getStartRow());
		System.out.println(dto.getPageSize());
		return sqlSession.selectList(namespace + ".getMyReviewList", dto);
	}

	@Override
	public int getMyReviewCount() {

		return sqlSession.selectOne(namespace + ".getMyReviewCount");
	}

}
