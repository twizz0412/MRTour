package com.mrtour.view.board;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mrtour.home.Pager;
import com.mrtour.model.board.BoardService;
import com.mrtour.model.board.BoardVO;
import com.mrtour.model.board.NoticeVO;
import com.mrtour.model.board.impl.BoardDAO;

@Controller
@SessionAttributes("board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 공지사항 화면으로 가기
		@RequestMapping("/Notice_board")
		public String Notice_board() {
			return "board/Notice_board";
		}
		
	// 공지사항 등록
		@RequestMapping(value = "/createNotice", method = RequestMethod.POST)
		public String createNotice(NoticeVO vo) throws Exception {
			boardService.createNotice(vo);
			return "admin/admin_notice";
		}
		
	// 공지사항 목록 가져오기
		@RequestMapping("/listAllNotice")
		public String listAllNotice(Model model) {
		    List<NoticeVO> noticeList = null;
		    try {
		        noticeList = boardService.listAllNotice();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    model.addAttribute("noticeList", noticeList);
		    return "noticeList";
		}
}