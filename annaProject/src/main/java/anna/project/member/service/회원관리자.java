package anna.project.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.project.member.common.Member;
import anna.project.member.dataservice.*;

@Service
public class 회원관리자 implements I회원관리자 {
	
	@Autowired I회원DAO 회원DAO;

	@Override
	public boolean ID사용가능여부판단하다(String id) {
		return !회원DAO.ID가있는가(id);
	}

	@Override
	public void 회원등록하다(Member 새회원) {
		회원DAO.회원정보저장하다(새회원);
	}

	@Override
	public Member 찾다By번호(int 회원번호) {
		return 회원DAO.찾다회원번호(회원번호);
	}

}


