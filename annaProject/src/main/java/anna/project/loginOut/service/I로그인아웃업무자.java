package anna.project.loginOut.service;

import anna.project.member.common.Member;

public interface I로그인아웃업무자 {
	
	boolean 로그인준비가능한가();
	boolean 로그인이가능한가(String id, String password);
	Member 로그인조회하다(String id,String password);
}
