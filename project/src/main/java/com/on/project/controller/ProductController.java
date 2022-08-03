package com.on.project.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.on.project.serivce.ProductService;
import com.on.project.vo.ProductVo;

@Controller //임포트
@RequestMapping("/product/*")
public class ProductController {

   
	private ProductService productService;
	
	@Autowired
	public ProductController(ProductService productService) {  // service 객체 의존성 주입.사용할려고
		this.productService = productService;  
	}
	
		
	
	@RequestMapping("write.do")
	public String watchwrite() {
		return "shop/product_write";
	}
	
	
	@RequestMapping("insert.do")
	public String insert(ProductVo vo,HttpServletRequest request) {
		
		System.out.println("vo"+vo.getProduct_name());
		System.out.println("vo1" +vo.getProduct_amount());
		System.out.println("vo2"+vo.getProduct_price());
		
		String filename = "-"; //파일이 없으면 - 값 고정시키기
		if(!vo.getFile1().isEmpty()) { //파일이 같지안흥면
			filename = vo.getFile1().getOriginalFilename(); // 파일 올린 것을 이름으로 지정
			
			try {
				ServletContext context = request.getSession().getServletContext(); //서버 데이터
				String path = context.getRealPath("/resources/images/"); //실제 파일이 저장될 위치 지정.
				System.out.println("path == 파일이미지 업로드 위치 확인" + path);
				
				new File(path).mkdir(); //파일복사
				vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
                e.printStackTrace();
			}
		}
		
		System.out.println("여기까지");
		vo.setFilename(filename);
		productService.register(vo);
		System.out.println("마지막");
		return "redirect:/product/list.do";
		
		
	}
	
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {
		
		
		List<ProductVo> list = productService.list(); // 상품 리스트 뽑아오기
		mav.addObject("list", list); // 리스트 뽑은거 넣어놓깅
		mav.setViewName("shop/product_list"); //뷰페이지롱 이동
		return mav;
		
	}
	
	
	
	@RequestMapping("edit/{product_code}")
	public ModelAndView edit(@PathVariable("product_code") int product_code,ModelAndView mav) {
		mav.setViewName("/shop/product_edit");
		mav.addObject("list", productService.edit(product_code));
		return mav;
	}
	
	
	
	@RequestMapping("update.do")
	public String update(ProductVo vo,HttpServletRequest request) {
		String filename = "-";
		if(!vo.getFile1().isEmpty()) {
			filename = vo.getFile1().getOriginalFilename();
			try {
				ServletContext application = request.getSession().getServletContext();
				String path = application.getRealPath("/resources/images/");
				new File(path).mkdir();
				vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			vo.setFilename(filename);
		}
		productService.update(vo);
		return "redirect:/product/list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(Integer product_code,HttpServletRequest request) {
		
		String filename = productService.file(product_code);
		
		if(filename !=null && !filename.equals("-")) {
			ServletContext app = request.getSession().getServletContext();
			String path = app.getRealPath("/resources/images/");
			File f = new File(path+filename);
			
			if(f.exists())
				f.delete();
		}
		
		productService.delete(product_code);
		return "redirect:/product/list.do";
		
	}
	
	@RequestMapping("detail/{product_code}")
	public ModelAndView detail(@PathVariable("product_code") int product_code,ModelAndView mav) {
		
		mav.addObject("vo", productService.detail(product_code));
		mav.setViewName("shop/product_detail");
		
		return mav;
		
	}
	
	
}
