package anna.project.pictureInfo.dataservice;

import java.util.List;

import anna.project.pictureInfo.common.PictureInfo;

public interface IPictureInfoDAO {
	
	int 저장하다(PictureInfo 그림정보);	
	List<PictureInfo> 모두수집하다();
	PictureInfo 찾다By번호(int 그림정보번호);
}
