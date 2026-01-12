package com.sist.web.service;
/*
 *   VO / Entity / DTO / Record 
 *   |      |       |      | getter => Kotiln (data) 
 *                  getter/setter
 *        테이블 제어 (컬럼과 일치) 
 *          => JPA
 *  불변 (setter가 없다) 
 *  *** VO / DTO 
 */
import java.util.*;

import org.springframework.stereotype.Service;

import com.sist.web.vo.*;

import lombok.RequiredArgsConstructor;

import com.sist.web.mapper.*;
@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{
   private final BoardMapper mapper;

   @Override
   public List<BoardVO> boardListData(int start) {
	// TODO Auto-generated method stub
	return mapper.boardListData(start);
   }

   @Override
   public int boardTotalPage() {
	// TODO Auto-generated method stub
	return mapper.boardTotalPage();
   }

   @Override
   public void boardInsert(BoardVO vo) {
	// TODO Auto-generated method stub
	mapper.boardInsert(vo);
   }

   @Override
   public BoardVO boardDetailData(int no) {
	// TODO Auto-generated method stub
	mapper.boardHitIncrement(no);
	return mapper.boardDetailData(no);
   }
   
   
}






