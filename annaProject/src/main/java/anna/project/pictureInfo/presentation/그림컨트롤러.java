package anna.project.pictureInfo.presentation;


import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import anna.project.pictureInfo.common.PictureInfo;
import anna.project.pictureInfo.service.IPictureInfo업무자;

@Controller
public class 그림컨트롤러 {
	@Autowired IPictureInfo업무자 pictureInfo업무자;
	
	@GetMapping("/pictureInfo")	
	public String 그림정보등록준비하다() {
		
		return "pictureInfo/그림정보등록창";
	}

	@PostMapping("/pictureInfo")	
	public String 그림정보등록하다(PictureInfo 새그림정보, HttpSession session) {
		
		//1.픽쳐인포DB에 저장하여 픽쳐인포의 번호 구하기 
		int 저장된그림정보번호 =pictureInfo업무자.등록하다(새그림정보);
		//2.새 픽쳐인포 폴더 만들기 
		String imgPath=session.getServletContext().getRealPath("/img");
		String 새그림정보번호경로=imgPath+"//"+저장된그림정보번호;
		File folder=new File(새그림정보번호경로);
		folder.mkdir();
		//3.폴더에 픽쳐 저장 
		File 첨부파일 = new File(새그림정보번호경로+"//"+새그림정보.getPictureFile().getOriginalFilename());
		//예: File 첨부파일 = new File("D://........//imgd/1/my.jpg");
		try {
			새그림정보.getPictureFile().transferTo(첨부파일);
		} catch (Exception e) {	e.printStackTrace();}
		//
		return "pictureInfo/그림정보등록알림창";
	}

}
