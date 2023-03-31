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

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	// 호텔 메인페이지
	@RequestMapping("/hotel_main")
	public String hotel_main() {return "products/hotel_main";}
	
	// 호텔 리스트 페이지
	@RequestMapping("/hotel_list")
	public String hotel_list() {return "products/hotel_list";}
	
	// 호텔 상세페이지
	@RequestMapping("/hotel_page")
	public String hotel_page() {return "products/hotel_page";}
	
	
	// 호텔 결제페이지
	@RequestMapping("/hotel_checkout")
	public String hotel_checkout() {return "products/hotel_checkout";}
		
	
	// 티켓 메인(=리스트)페이지
	@RequestMapping("/ticket_main")
	public String ticket_main() {return "products/ticket_main";}
	
	
	// 티켓 상세페이지
	@RequestMapping("/ticket_page")
	public String ticket_page() {return "products/ticket_page";}
	
	// 렌트카 예약페이지
	@RequestMapping("/car_checkout")
	public String car_checkout() {return "products/car_checkout";}
	
	// 제품(티켓) 메인 페이지 -- 장바구니 기능에 사용
	@RequestMapping("/productpage")
	public String productPage(ProductInfoVO vo, Model model) {
	    model.addAttribute("product", productService.productDetail(vo));
	    return "products/ticket_main";
	   }
	
	// 카테고리 품목 출력
	@RequestMapping("/category")
	public String getfbMirrorList(@RequestParam(defaultValue = "1") int curPage, ProductInfoVO vo, Model model) {
		int count = productService.getCountProduct(vo);
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<ProductInfoVO> list = productService.getProductList(start, end, vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cate_id", vo.getCate_id());
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		model.addAttribute("map", map);
		return "product/category";
	}
	
	// 품목 리스트 + 페이징 + 검색
	@RequestMapping(value = "/searchPrd", method = RequestMethod.GET)
	public String listPage(Model model, HttpSession session, ProductInfoVO vo,
			@RequestParam(defaultValue = "") String sPrd, 
			@RequestParam(defaultValue = "1") int curPage) {
		// 게시글 갯수 계산
		int count = productService.countSearchPrd(sPrd);

		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		session.setAttribute("sPrd", sPrd); // 상품 이름 검색
		session.setAttribute("curPage", curPage);

		List<ProductInfoVO> list = productService.listSearchPrd(sPrd, start, end); // 게시글 목록
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		map.put("count", count);
		map.put("pager", pager); // 페이지 네버게이션을 위한 변수
		map.put("sPrd", sPrd);
		model.addAttribute("map", map);

		return "product/search";
	}
	
	
	
	//관리자 상품관리
	
	// 관리자 상품관리 화면으로 가기(상품등록)
	@RequestMapping("/admin_insertProduct")
	public String InsertProduct(ProductInfoVO vo)  {
		return "admin/insertProduct";
	}
	
	// 상품목록 페이지
	@RequestMapping("/Listpage")
	public String ListPage(ProductInfoVO vo) {
		return "admin/productList";
	}
		
	// 상품코드 중복검사
	@ResponseBody
	@RequestMapping(value = "/prdCheckID")
	public int prdCheckID(ProductInfoVO vo) {
		int prdCheckID = productService.prdCheckID(vo);
		return prdCheckID;
	}
	
	// (진) 상품등록
		@RequestMapping("/insertProduct")
		public String insertProduct(MultipartHttpServletRequest multi, ProductInfoVO vo) {
			System.out.println(vo.toString());
			String root = "C:/Users/YOUNGJEE SEO/git/MRTour/MRTourWeb/src/main/webapp/";
			String path = "resources/img/product/" + vo.getCate_id() + "/";
			String realpath = root + "resources/img/product/" + vo.getCate_id() + "/";

			File dir = new File(realpath);
			if (!dir.isDirectory()) {
				dir.mkdir();
			}

			Iterator<String> files = multi.getFileNames();
			while (files.hasNext()) {
				String uploadFile = files.next();

				MultipartFile mFile = multi.getFile(uploadFile);
				String fileName = mFile.getOriginalFilename();
				vo.setPrd_img(path + fileName);
				
				try {
					mFile.transferTo(new File(realpath + fileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			productService.insertProduct(vo);
			return "admin/productList";
		}

		// 관리자 용 상품 목록
		@RequestMapping(value = "/productList", method = RequestMethod.GET)
		public String productListView(@RequestParam(defaultValue = "1") int curPage, ProductInfoVO vo, Model model) {
			int count = productService.getAdminCountProduct(vo);
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();

			List<ProductInfoVO> list = productService.getAdminProductList(start, end, vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("count", count);
			map.put("pager", pager);
			model.addAttribute("map", map);
			return "admin/productList";
		}
		
		//자동차(CAR)화면
		// 품목 리스트 + 페이징 + 검색
		@RequestMapping(value = "/car_page", method = RequestMethod.GET)
		public String listCarPage(Model model, HttpSession session, ProductInfoVO vo,
				@RequestParam(defaultValue = "") String keyword,
				@RequestParam(name = "city_no", required = false, defaultValue = "") String city_no,
				@RequestParam(name = "prd_opt", required = false, defaultValue = "") String prd_opt, 
				@RequestParam(defaultValue = "1") int curPage) 
			throws Exception {
			
			// 상품 개수 계산
			int count = productService.countSearchCar(city_no, prd_opt);

			// 페이지 관련 설정
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();

			session.setAttribute("city_no", city_no); // 지역명 검색
			session.setAttribute("prd_opt", prd_opt); // 상품옵션으로 검색
			session.setAttribute("curPage", curPage);

			List<ProductInfoVO> list = productService.listSearchCar(city_no, prd_opt, start, end); // 게시글 목록
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list); // map에 자료 저장
			map.put("count", count);
			map.put("pager", pager); // 페이지 네버게이션을 위한 변수
			map.put("city_no", city_no);
			map.put("prd_opt", prd_opt);			
			model.addAttribute("map", map);

			return "products/car_page";
		}
}