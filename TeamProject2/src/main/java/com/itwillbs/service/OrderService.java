package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.OrderDTO;
import com.itwillbs.domain.OrderInfoDTO;
import com.itwillbs.domain.PointDTO;

public interface OrderService {
	
	public void insertOrder(OrderDTO orderDTO);
	
	public String createOrderCode(OrderDTO orderDTO);

	public OrderDTO orderComplete(int ordNum);
	
	public void insertUsedPoint(PointDTO pointDTO);
	
	public List<OrderInfoDTO> getOrderList(OrderDTO infoDto);
		 
//    public void deleteOrder(OrderDTO orderDTO);
	 

}
