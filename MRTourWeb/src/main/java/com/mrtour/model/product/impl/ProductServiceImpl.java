package com.mrtour.model.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrtour.model.product.ProductInfoVO;
import com.mrtour.model.product.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductInfoDAO productInfoDAO;

	// 관리자
	public int prdCheckID(ProductInfoVO vo) {
		return productInfoDAO.prdCheckID(vo);
	}

	// 상품(티켓) 검색
	public List<ProductInfoVO> listSearchPrd(String sPrd, int start, int end) {
		return productInfoDAO.listSearchPrd(sPrd, start, end);
	}
	
	// 자동차, 호텔 상품 검색
	public List<ProductInfoVO> listSearchCar(String city_no, String prd_opt, int start, int end) {
		return productInfoDAO.listSearchCar(city_no, prd_opt, start, end);
	}

	// 물품 검색 카운트
	public int countSearchPrd(String city_no) {
		return productInfoDAO.countSearchPrd(city_no);
	}
	
	// 렌트카 검색 카운트
	public int countSearchCar(String city_no, String prd_opt) {
		return productInfoDAO.countSearchCar(city_no, prd_opt);
	}

	// 상품 등록
	public void insertProduct(ProductInfoVO vo) {
		productInfoDAO.insertProduct(vo);
	}

	// 품목 리스트
	public List<ProductInfoVO> getProductList(int start, int end, ProductInfoVO vo) {
		return productInfoDAO.getProductList(start, end, vo);
	}

	// 관리자 품목 리스트
	public List<ProductInfoVO> getAdminProductList(int start, int end, ProductInfoVO vo) {
		return productInfoDAO.getAdminProductList(start, end, vo);
	}

	// 품목 갯수 카운트
	public int getCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getCountProduct(vo);
	}

	// 관리자 품목 갯수 카운트
	public int getAdminCountProduct(ProductInfoVO vo) {
		return productInfoDAO.getAdminCountProduct(vo);
	}

	// 품목 상세보기
	public ProductInfoVO productDetail(ProductInfoVO vo) {
		return productInfoDAO.productDetail(vo);
	}
	
	
}
