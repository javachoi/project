package anna.project.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.project.member.common.Member;
import anna.project.member.dataservice.I회원DAO;

@Service
public class 회원업무자 implements I회원업무자 {
	
	@Autowired I회원DAO 회원DAO;

	@Override
	public boolean 등록된회원인가(String id, String password) {
		return 회원DAO.회원인가(id, password);
	}

	@Override
	public Member 회원조회하다(String id, String password) {
		return 회원DAO.찾다ID와PASSWORD(id, password);
	}

	
	@Override
	public Member 회원번호찾다(int no) {
		return 회원DAO.찾다회원번호(no);
	}

	}
	

