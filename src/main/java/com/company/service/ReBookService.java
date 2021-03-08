package com.company.service;

import java.util.List;

import com.company.domain.ReBookVO;

public interface ReBookService {
	boolean insertReBook(ReBookVO rebook);
	List<ReBookVO> allReBook();
}
