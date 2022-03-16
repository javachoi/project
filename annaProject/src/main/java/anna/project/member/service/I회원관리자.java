package anna.project.member.service;



import anna.project.member.common.Member;

public interface I회원관리자 {
	
	boolean ID사용가능여부판단하다(String id);
	void 회원등록하다(Member 새회원);
	Member 찾다By번호(int 회원번호);

	
}
