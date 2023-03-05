package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CompanyDAO;
import com.itwillbs.domain.CompanyDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class CompanyServiceImpl implements CompanyService{

	@Inject
	private CompanyDAO companyDAO;

	// company
	@Override
	public void companyInsertMember(CompanyDTO dto) {
		companyDAO.companyInsertMember(dto);
	}
	
	@Override
	public CompanyDTO companyUserCheck(CompanyDTO dto) {
		return companyDAO.companyUserCheck(dto);
	}

	@Override
	public CompanyDTO companyIdCheck(CompanyDTO dto) {
		return companyDAO.companyIdCheck(dto);
	}

	@Override
	public CompanyDTO companyGetMember(String id) {
		return companyDAO.companyGetMember(id);
	}

	@Override
	public CompanyDTO companyNumCheck(CompanyDTO dto) {
		return companyDAO.companyNumCheck(dto);
	}

	@Override
	public CompanyDTO companyGetMemberNum(String id) {
		return companyDAO.companyGetMemberNum(id);
	}

	@Override
	public List<CompanyDTO> getCompanyList(PageDTO dto) {
		// TODO Auto-generated method stub
		return companyDAO.getCompanyList(dto);
	}

	@Override
	public int getCompanyCount() {
		// TODO Auto-generated method stub
		return companyDAO.getCompanyCount();
	}

	@Override
	public void companyDeleteMember(CompanyDTO dto) {
		companyDAO.companyDeleteMember(dto);
	}
	
	
	
	
	
	
	
	
	// company

	
}
