package product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import product.Dao.ProductDao;
import product.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productDao.getAllProducts();
		m.addAttribute("products",products);
		return "home";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","add product");
		return "add-product";
	}
	
	@RequestMapping(value="/handle-add-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView  redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
	}
	
	
	@RequestMapping("/handle-delete/{productId}")
	public RedirectView handleDelete(@PathVariable("productId") int pid,HttpServletRequest request) {
		
		productDao.deleteProduct(pid);
		RedirectView  redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
	}

	@RequestMapping("/handle-edit/{productId}")
	public String handleDelete(@PathVariable("productId") int pid,Model m) {
		
		Product product = productDao.getProduct(pid);
		m.addAttribute("product",product);
		return "edit-form";
	}
	
}





















