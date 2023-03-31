package com.mrtour.view.cart;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mrtour.home.Pager;
import com.mrtour.model.board.BoardVO;
import com.mrtour.model.cart.ProductCartService;
import com.mrtour.model.cart.ProductCartVO;
import com.mrtour.model.payment.PaymentService;
import com.mrtour.model.payment.PaymentVO;

@Controller
public class ProductCartController {
	@Autowired
	private ProductCartService productCartService;
	@Autowired
	private PaymentService paymentService;

	
//	// 장바구니 페이지로 가기
//	   @RequestMapping("/MyCart")
//	   public String MyCart(Model model, HttpSession session,
//				@RequestParam(defaultValue = "B_TITLE") String searchOption, 
//				@RequestParam(defaultValue = "") String keyword,
//				@RequestParam(defaultValue = "") String search, 
//				@RequestParam(defaultValue = "1") int curPage)  
//				throws Exception {
//		   
//		   	// 게시글 갯수 계산
//			int count = productCartService.getCountBoard(searchOption, keyword);
//
//			session.setAttribute("searchOption", searchOption);
//			session.setAttribute("keyword", keyword);
//			session.setAttribute("search", search);
//			session.setAttribute("curPage", curPage);
//
//			// 페이지 관련 설정
//			Pager pager = new Pager(count, curPage);
//			int start = pager.getPageBegin();
//			int end = pager.getPageEnd();
//
//			List<ProductCartVO> list = productCartService.listAllBoard(searchOption, keyword, start, end); // 게시글 목록
//
//			HashMap<String, Object> map = new HashMap<String, Object>();
//			map.put("list", list); // map에 자료 저장
//			map.put("count", count);
//			map.put("pager", pager); // 페이지 네버게이션을 위한 변수
//			map.put("searchOption", searchOption);
//			map.put("keyword", keyword);
//			map.put("search", search);
//			model.addAttribute("map", map);
//		   
//	      return "member/cart";
//	   }
//	
	
	// 장바구니 담기
	@RequestMapping("/insertCart")
	public String insertCart(ProductCartVO vo) {
		productCartService.insertProductCart(vo);
		return "product/category";
	}
	
	
	// 결제
	// 결제 페이지로 가기
	   @RequestMapping("/payment")
	   public String checkoutPage(PaymentVO vo)  {
	      return "member/payment";
	   }
	
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String paymentView(ProductCartVO vo) {
		return "member/payment";
	}

	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@RequestParam(value="hiddenbtn") String hidden, PaymentVO vo, HttpSession session, Model model) {
		System.out.println(hidden);
		if (hidden.equals("prdpage")) {
			List<PaymentVO> list = paymentService.getPaymentProduct(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("hidden", hidden);
			map.put("prd_opt", vo.getPrd_opt());
			map.put("buy_quantity", vo.getBuy_quantity());
//			model.addAttribute("map", map);
			session.setAttribute("map", map);
		} else if (hidden.equals("cartpage")) {
			List<PaymentVO> list = paymentService.cartPaymentProduct(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("hidden", hidden);
//			model.addAttribute("map", map);
			session.setAttribute("map", map);
		}
		return "member/payment";
	}
	
	// 결제목록 갱신
	@RequestMapping(value="/decopay")
	public String insertPayment(String[] prd_list, PaymentVO vo) {
		for(int i = 0; i < prd_list.length; i += 3) {
			vo.setPrd_id(prd_list[i]);
			vo.setPrd_opt(prd_list[i+1]);
			vo.setBuy_quantity(Integer.parseInt(prd_list[i+2]));
			System.out.println(vo.toString());
			paymentService.insertPayment(vo);
			paymentService.deleteCartPayment(vo);
		}
		return "main";
	}
	
	// 장바구니 전체 비우기
	@RequestMapping("/clearCart")
	public String deleteProductCart(ProductCartVO vo) {
		productCartService.deleteProductCart(vo);
		return "member/cart";
	}
	
	// 장바구니 물품 삭제
	@RequestMapping("/delCart")
	public String deleteCart(ProductCartVO vo) {
		productCartService.deleteCart(vo);
		return "member/cart";
	}

	// 장바구니
	@RequestMapping("/productCart")
	public String cartList(ProductCartVO vo, Model model) {
		model.addAttribute("cartPrd", productCartService.getProductCartList(vo));
		return "member/cart";
	}
}

