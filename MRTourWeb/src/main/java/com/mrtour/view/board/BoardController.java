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

@Controller
public class BoardController {

	// 공지사항 화면으로 가기
		@RequestMapping("/Notice_board")
		public String Notice_board() {
			return "board/Notice_board";
		}
}