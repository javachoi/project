package anna.project.member.presentation;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import anna.project.member.common.Member;
import anna.project.member.service.*;

@Controller
public class 회원컨트롤러 {
	
	@Autowired I회원관리자 회원관리자;
	
	@GetMapping("/id")
	public String ID중복검사준비하다() {
		return("member/아이디중복검사창");
	}

	@PostMapping("/id")
	ModelAndView ID중복검사하다(String id) {
		
		boolean ID사용가능여부 = 회원관리자.ID사용가능여부판단하다(id);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("member/아이디중복검사창");
		mv.addObject("id",id);
		mv.addObject("usable",ID사용가능여부);
		return mv;
	}
	
	@GetMapping("/member")
	ModelAndView 새회원등록준비하다(HttpSession session) {
		
		ModelAndView mv=new ModelAndView();
		boolean 로그인중 = (session.getAttribute("id")!= null) ? true : false;
		mv.setViewName("member/회원등록창");
		mv.addObject("isLogin",로그인중);
		return mv;
	}
	
	@PostMapping("/member")
	ModelAndView 새회원등록하다(Member 새회원) {
		
		회원관리자.회원등록하다(새회원);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("member/회원등록알림창");
		mv.addObject("name", 새회원.getName());
		return mv;
	}
	
	@GetMapping("/mypage")
	public ModelAndView 내정보를보다(HttpSession session) {
		
		int 회원번호 = (int)session.getAttribute("회원번호");
		Member 찾은회원 = 회원관리자.찾다By번호(회원번호);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("member/마이페이지");
		mv.addObject("member",찾은회원);
		return mv;
	}

	/*
	 * Board 찾은게시물=게시물업무자.게시물조회수증가하다(게시물번호);
		ModelAndView mv=new ModelAndView();
		boolean 로그인중 = (session.getAttribute("id")!= null) ? true : false;
		mv.setViewName("board/게시물상세창");
		mv.addObject("board",찾은게시물);
		
		Boolean 로그인회원와게시물작성자가동일인물인가=null;
	    if(session!=null) {
	    	Integer 회원번호=(Integer)session.getAttribute("회원번호");
	    	 if(회원번호!=null) { 
	    		 if(회원번호==찾은게시물.getWriter().getNo()) {
	    			 로그인회원와게시물작성자가동일인물인가=true;
	    		 }else{
	    			 로그인회원와게시물작성자가동일인물인가=false;
	    		 }
	    	 }
	    }
		mv.addObject("isWriter", 로그인회원와게시물작성자가동일인물인가);
		return mv;
	 */
	
	
	
	
	
	
}
