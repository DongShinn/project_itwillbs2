package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ScheduleDAO;
import com.itwillbs.domain.DateDTO;
import com.itwillbs.domain.ScheduleDTO;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Inject
	private ScheduleDAO scheduleDAO;
	
	
	@Override
	public int scheduleAdd(ScheduleDTO scheduleDTO) {
		
		return scheduleDAO.scheduleAdd(scheduleDTO);
	}

	@Override
	public int beforeScheduleAddSearch(ScheduleDTO scheduleDTO) {

		return scheduleDAO.beforeScheduleAddSearch(scheduleDTO);
	}

	@Override
	public List<ScheduleDTO> scheduleList(DateDTO dateDTO) {

		return scheduleDAO.scheduleList(dateDTO);
	}

}
