package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.DateDTO;
import com.itwillbs.domain.ScheduleDTO;

public interface ScheduleDAO {

	public int scheduleAdd(ScheduleDTO scheduleDTO);
	public int beforeScheduleAddSearch(ScheduleDTO scheduleDTO);
	public List<ScheduleDTO> scheduleList(DateDTO dateDTO);
}
