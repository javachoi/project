package anna.project.pictureInfo.dataservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.project.pictureInfo.common.PictureInfo;
import anna.project.pictureInfo.service.IPictureInfo업무자;

@Service
public class PictureInfo업무자 implements IPictureInfo업무자 {
	@Autowired IPictureInfoDAO pictureInfoDAO;
	
	@Override
	public int 등록하다(PictureInfo 그림정보) {
		return pictureInfoDAO.저장하다(그림정보);
	}

	@Override
	public List<PictureInfo> 모두수집하다() {
		return pictureInfoDAO.모두수집하다();
	}

	@Override
	public PictureInfo 찾다By번호(int 그림정보번호) {
		return pictureInfoDAO.찾다By번호(그림정보번호);
	}

}
