package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.ReBookVO;
import com.company.mapper.ReBookMapper;

@Service
public class ReBookServiceImpl implements ReBookService {
	
	@Autowired
	private ReBookMapper ReBookMapper;
	
	@Override
	public boolean insertReBook(ReBookVO rebook) {		
		return ReBookMapper.insertRecommand_Book(rebook)>0?true:false;
	}

	@Override
	public List<ReBookVO> allReBook() {
		return ReBookMapper.allRecommand_Book();
	}

}
