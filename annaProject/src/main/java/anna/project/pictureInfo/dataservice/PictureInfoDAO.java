package anna.project.pictureInfo.dataservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import anna.project.pictureInfo.common.PictureInfo;

@Repository
public class PictureInfoDAO implements IPictureInfoDAO{
    @Autowired IPictureInfoMapper pictureInfoMapper;
	
	@Override
	public int 저장하다(PictureInfo 그림정보) {
		pictureInfoMapper.저장하다(그림정보);
	    return 그림정보.getNo();	
	}

	@Override
	public List<PictureInfo> 모두수집하다() {
		return pictureInfoMapper.모두수집하다();
	}

	@Override
	public PictureInfo 찾다By번호(int 그림정보번호) {
		return pictureInfoMapper.찾다By번호(그림정보번호);
	}

}
