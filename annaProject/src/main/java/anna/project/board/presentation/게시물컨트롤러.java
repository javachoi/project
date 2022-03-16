package anna.project.board.presentation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import anna.project.board.common.Board;
import anna.project.board.service.I게시물업무자;
import anna.project.member.common.Member;

@Controller
public class 게시물컨트롤러 {
	
	@Autowired I게시물업무자 게시물업무자;
	
	@GetMapping("/board")
	public ModelAndView 게시물작성준비() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물등록창");
		return mv;
	}
	
	@PostMapping("/board")
	public String 게시물등록(Board 새게시물, HttpSession session) {
		
		int 로그인한회원의번호=(int)session.getAttribute("회원번호");
		Member 작성한회원=new Member();
		작성한회원.setNo(로그인한회원의번호);
		새게시물.setWriter(작성한회원);
		게시물업무자.게시물을등록하다(새게시물); 
		return "board/게시물등록알림창";
	}
	
	@GetMapping("/boards")
	public ModelAndView 게시물목록출력(HttpSession session) {
		
		List<Board> 수집된게시물=게시물업무자.게시물을수집하다();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물목록창");
		mv.addObject("boards",수집된게시물);
		return mv;
	}
	
	@GetMapping("/board/{게시물번호}")
	public ModelAndView 게시물상세조회(@PathVariable int 게시물번호,HttpSession session) {
		
		Board 찾은게시물=게시물업무자.게시물조회수증가하다(게시물번호);
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
	}
	
    @GetMapping("/update/{게시물번호}")
	public ModelAndView 게시물변경준비(@PathVariable int 게시물번호) {
		
		Board 찾은게시물=게시물업무자.게시물을조회하다(게시물번호);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물변경창");
		mv.addObject("board", 찾은게시물 );
		return mv;
	}
	
	@PostMapping("/update")
	public String 게시물변경(Board 변경게시물) {
	
		Board 찾은게시물 = 게시물업무자.게시물을조회하다(변경게시물.getNo());
			if(변경게시물.getTitle()!=null) {
				찾은게시물.setTitle(변경게시물.getTitle());
		}
			if(변경게시물.getContents()!=null) {
				찾은게시물.setContents(변경게시물.getContents());
		}
			게시물업무자.게시물을변경하다(찾은게시물);
			return "board/게시물변경알림창";
	}

	@GetMapping("/delete")
	public String 게시물삭제(@RequestParam("no") int 게시물번호) {
		
		게시물업무자.게시물을삭제하다(게시물번호);
		return "redirect:/boards";
	}
	
	@GetMapping("/album")
	public ModelAndView 사진을보다() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contents/album");
		return mv;
	}
}
