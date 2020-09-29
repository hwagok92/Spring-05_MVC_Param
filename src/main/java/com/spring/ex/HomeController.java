package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping("person/input")
	public String input(HttpServletRequest request, Model model) {// java에서는 request를 받는 객체를 써야 request를 쓸 수 있다

		String name = request.getParameter("name");
		String age = request.getParameter("age"); // parameter로 넘어가는 age라서 밑에 콘솔 출력문에 나옴

		System.out.println("name:" + name);// kim
		System.out.println("age:" + age);// 23

		model.addAttribute("name", name + "씨~");// 씨는 parameter에 안들어간다 속성에 속해있기때문에. 여기서는 여기 규칙이 그럼 parameter가 속성으로 못받음
		model.addAttribute("age", age); // 모델에 쓴 속성은 url에 직접 넣음으로써 parameter에도 들어간다

		return "person/input";
	}

	@RequestMapping("form")
	public String form() {
		return "person/personInput";
	}

	@RequestMapping(value = "person/join1" /* method=RequestMethod.GET */)
	public String join1(HttpServletRequest request, Model model) {
		System.out.println("join1()");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");

		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("name", name);
		model.addAttribute("addr", addr);

		model.addAttribute("Mname", name + "씨");

		return "person/personView1";
	}

	@RequestMapping("person/join2")
	public String join2(@RequestParam("id") String id, 
						@RequestParam("pw") String pw, 
						@RequestParam("name") String name,
						@RequestParam("addr") String addr, 
						Model model) { 
		System.out.println("join2()");

		System.out.println("id:" + id);
		System.out.println("pw:" + pw);
		System.out.println("name:" + name);
		System.out.println("addr" + addr);
		
		Person per = new Person(id,pw,name,addr);
		model.addAttribute("per",per);
		
		return "person/personView2";
	}
	
	@RequestMapping("person/join3")
	public String join3(Person p) {//Person p만 만들었는데 묶음을 넘겨서 출력하는것까지 됨
		System.out.println("join3()");
		
		System.out.println("p.getId():"+p.getId());
		/*
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		Person p = new Person();
		p.setId(id);
		p.setPw(pw);
		p.setName(name);
		p.setAddr(addr); 이 작업들이, <public String join3(Person p)>만 써도 위의 코드 효과를 가져온다.
		*/
		return "person/personView3";
	}
	
	
	@RequestMapping("person/join4")
	public String join4(@ModelAttribute("abcd") Person p) { //@MdelAttribute("abcd")는 별칭을 지정하는 annotation이다.
		System.out.println("join4()");
		
		System.out.println("p.getId():"+p.getId());
		
		return "person/personView4";
				
	}
	
}
