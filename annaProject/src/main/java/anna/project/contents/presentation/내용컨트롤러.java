package anna.project.contents.presentation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import anna.project.pictureInfo.common.PictureInfo;
import anna.project.pictureInfo.service.IPictureInfo업무자;

@Controller
public class 내용컨트롤러 {
	@Autowired IPictureInfo업무자 pictureInfo업무자;

	@GetMapping("/main")
	public ModelAndView 메인페이지를주다() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("contents/main");
		return mv;
	}

	@GetMapping("/home")
	public ModelAndView 홈으로돌아가다() {

		List<PictureInfo> pictureInfos = pictureInfo업무자.모두수집하다();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contents/home");
		mv.addObject("pictureInfos", pictureInfos);
		return mv;
	}

}
