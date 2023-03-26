package com.mrtour.model.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface BoardService {
	
	void createBoard(BoardVO vo) throws Exception;					// 게시글 쓰기 
	void updateBoard(BoardVO vo) throws Exception;					// 게시글 수정
	void deleteBoard(int bno) throws Exception;						// 게시글 삭제
	int checkBoard(int bno) throws Exception;						// 게시글 삭제 체크, 숨김
	BoardVO readBoard(int bno) throws Exception;					// 게시글 읽기
	BoardVO previousB(int bno) throws Exception;					// 이전글
	BoardVO nextB(int bno) throws Exception;						// 다음글
	List<BoardVO> listAllBoard(String searchOption,String keyword,int start, int end) throws Exception;	// 게시글 목록
	int getCountBoard(String searchOption,String keyword) throws Exception;	// 게시글 갯수

	void viewCnt(int bno, HttpSession session) throws Exception;	// 조회수(공통)
	
	void createNotice(NoticeVO vo) throws Exception;					// 공지사항 쓰기 
	void updateNotice(NoticeVO vo) throws Exception;					// 게시글 수정
	void deleteNotice(int notice_no) throws Exception;						// 게시글 삭제
	int checkNotice(int notice_no) throws Exception;						// 게시글 삭제 체크, 숨김
	NoticeVO readNotice(int notice_no) throws Exception;					// 게시글 읽기
	NoticeVO previousN(int notice_no) throws Exception;					// 이전글
	NoticeVO nextN(int notice_no) throws Exception;						// 다음글
	List<NoticeVO> listAllNotice() throws Exception;	// 게시글 목록
	int getCountNotice(String searchOption,String keyword) throws Exception;	// 게시글 갯수
}
