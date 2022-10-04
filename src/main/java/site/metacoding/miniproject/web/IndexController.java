package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public String companyMain() {
		return "demo/companyMain";
	}
	
	@GetMapping("/login")
	public String login() {
		return "demo/login";
	}
	
	@GetMapping("/inform")
	public String apply() {
		return "demo/companyInform";
	}
	
	@GetMapping("/demo")
	public String demo() {
		return "demo/demo";
	}
	
}
