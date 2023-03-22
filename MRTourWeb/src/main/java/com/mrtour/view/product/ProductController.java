package com.mrtour.view.product;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mrtour.model.product.ProductInfoVO;
import com.mrtour.model.product.ProductService;
import com.mrtour.home.Pager;
import com.mrtour.model.member.MemberService;
import com.mrtour.model.member.MemberVO;
import com.mrtour.model.payment.PaymentVO;

@Controller
public class ProductController {

	// 호텔 메인페이지
	@RequestMapping("/hotel_main")
	public String hotel_main() {return "products/hotel_main";}
	
	
	// 호텔 상세페이지
	@RequestMapping("/hotel_page")
	public String hotel_page() {return "products/hotel_page";}
	
	// 호텔 상세페이지
	@RequestMapping("/hotel_checkout")
	public String hotel_checkout() {return "products/hotel_checkout";}
		
	
	// 티켓 메인페이지
	@RequestMapping("/ticket_main")
	public String ticket_main() {return "products/ticket_main";}
	
	
	// 티켓 상세페이지
	@RequestMapping("/ticket_page")
	public String ticket_page() {return "products/ticket_page";}
	
	
	// 렌트카 상세페이지(렌트카는 메인페이지 없음)
	@RequestMapping("/car_page")
	public String car_page() {return "products/car_page";}
	
	// 렌트카 예약페이지
	@RequestMapping("/car_checkout")
	public String car_checkout() {return "products/car_checkout";}		
}