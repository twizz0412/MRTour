package com.mrtour.model.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrtour.model.board.BoardVO;
import com.mrtour.model.board.NoticeVO;

@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 1:1문의
	

	// 게시글 쓰기
	public void createBoard(BoardVO vo) {
		mybatis.insert("BoardDAO.createBoard", vo);
	}

	// 게시글 수정
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	// 게시글 삭제
	public void deleteBoard(int bno) {
		mybatis.update("BoardDAO.deleteBoard", bno);
	}
	
	// 게시글 삭제 체크
	public int checkBoard(int bno) throws Exception {
		return mybatis.selectOne("BoardDAO.checkBoard", bno);
	}

	// 게시글 읽기
	public BoardVO readBoard(int bno) {
		return (BoardVO) mybatis.selectOne("BoardDAO.readBoard", bno);
	}
	
	// 이전글
	public BoardVO previousB(int bno) {
		return (BoardVO) mybatis.selectOne("BoardDAO.previousB", bno);
	}

	// 다음글
	public BoardVO nextB(int bno) {
		return (BoardVO) mybatis.selectOne("BoardDAO.nextB", bno);
	}
	
	// 게시물 목록
	public List<BoardVO> listAllBoard(String searchOption, String keyword, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("BoardDAO.listAllBoard", map);
	}

	// 조회수
	public void viewCnt(int bno) {
		mybatis.update("BoardDAO.viewCnt", bno);
	}
	// 게시글 갯수
	public int getCountBoard(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return mybatis.selectOne("BoardDAO.getCountBoard", map);
	}

	// ~ 1:1문의
	
	// 공지사항(notice)
	
	// 게시글 쓰기
	public void createNotice(NoticeVO vo) {
		mybatis.insert("BoardDAO.createNotice", vo);
	}

	// 게시글 수정
	public void updateNotice(NoticeVO vo) {
		mybatis.update("BoardDAO.updateNotice", vo);
	}

	// 게시글 삭제
	public void deleteNotice(int notice_no) {
		mybatis.update("BoardDAO.deleteNotice", notice_no);
	}
	
	// 게시글 삭제 체크
	public int checkNotice(int notice_no) throws Exception {
		return mybatis.selectOne("BoardDAO.checkNotice", notice_no);
	}

	// 게시글 읽기
	public NoticeVO readNotice(int notice_no) {
		return (NoticeVO) mybatis.selectOne("BoardDAO.readNotice", notice_no);
	}
	
	// 이전글
	public NoticeVO previousN(int notice_no) {
		return (NoticeVO) mybatis.selectOne("BoardDAO.previousN", notice_no);
	}

	// 다음글0
	public NoticeVO nextN(int notice_no) {
		return (NoticeVO) mybatis.selectOne("BoardDAO.nextN", notice_no);
	}
	
	//공지사항 목록
	public List<NoticeVO> listAllNotice() {
	    return mybatis.selectList("BoardDAO.listAllNotice");
	}

	public int getCountNotice(String searchOption, String keyword) {
		return 0;
	}
	
	
}
