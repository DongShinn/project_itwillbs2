package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.DateDTO;
import com.itwillbs.domain.ScheduleDTO;

public interface ScheduleService {
	
	public int scheduleAdd(ScheduleDTO scheduleDTO);
	public int beforeScheduleAddSearch(ScheduleDTO scheduleDTO);
	public List<ScheduleDTO> scheduleList(DateDTO dateDTO);

}
