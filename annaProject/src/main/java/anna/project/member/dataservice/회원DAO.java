package anna.project.member.dataservice;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import anna.project.member.common.Member;


@Repository
public class 회원DAO implements I회원DAO {
	
	@Autowired IMemberMapper memberMapper;
	
	@Transactional
	@Override
	public boolean ID가있는가(String id) {
		return memberMapper.ID가있는가(id);
	}

	@Transactional
	@Override
	public void 회원정보저장하다(Member 새회원) {
		memberMapper.회원정보저장하다(새회원);
	}
	
	@Transactional
	@Override
	public boolean 회원인가(String id, String password) {
		return memberMapper.회원인가(id, password);
	}

	@Transactional
	@Override
	public Member 찾다ID와PASSWORD(String id, String password) {
		return memberMapper.찾다ID와PASSWORD(id, password);
	}

	@Transactional
	@Override
	public Member 찾다회원번호(int no) {
		 return memberMapper.찾다회원번호(no);
	}
}


