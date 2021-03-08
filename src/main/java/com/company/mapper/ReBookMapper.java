package com.company.mapper;

import java.util.List;

import com.company.domain.ReBookVO;

public interface ReBookMapper {
	int insertRecommand_Book(ReBookVO rebook);
	List<ReBookVO> allRecommand_Book();
}
