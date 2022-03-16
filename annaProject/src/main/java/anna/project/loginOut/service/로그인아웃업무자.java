package anna.project.loginOut.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import anna.project.member.common.Member;
import anna.project.member.service.I회원업무자;

@Service
public class 로그인아웃업무자 implements I로그인아웃업무자 {
	
	@Autowired I회원업무자 회원업무자;

	@Override
	public boolean 로그인준비가능한가() {
		return true;
	}

	@Override
	public boolean 로그인이가능한가(String id, String password) {
			return 회원업무자.등록된회원인가(id, password);
		
	}

	@Override
	public Member 로그인조회하다(String id, String password) {
			return 회원업무자.회원조회하다(id, password);
	}
	
	

}
