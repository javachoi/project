package anna.project.member.service;

import anna.project.member.common.Member;

public interface I회원업무자 {
	
	boolean 등록된회원인가(String id,String password);
	Member 회원조회하다(String id,String password);
	Member 회원번호찾다(int no);

}
