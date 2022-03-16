package anna.project.member.dataservice;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import anna.project.board.common.Board;
import anna.project.member.common.Member;

@Mapper
public interface IMemberMapper {
	
	@Select("select if(count(*)=1,1,0) from member where id=#{id}")
	//("select count(*) from member where id=?");
	boolean ID가있는가(String id);
	
	@Insert("insert into member(id,password,name,tel,email,post,address,detailAddress) values(#{id},#{password},#{name},#{tel},#{email},#{post},#{address},#{detailAddress})")
	//("insert into member(id,password,name,tel,email,post,address,detailaddress) values(?,?,?,?,?,?,?,?)");
	void 회원정보저장하다(Member 새회원);
	
	@Select("select if(count(*)=1,1,0) from member where id=#{id} and password=#{password}")
	//("select count(*) from member where id=? and password=?");
	boolean 회원인가(String id,String password);
	
	@Select("select * from member where id=#{id} and password=#{password}")
	//("select no,name from member where id=? and password=?");
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="id",column="id"),
			@Result(property="password",column="password"),
			@Result(property="name",column="name"),
            @Result(property="tel",column="tel"),
			@Result(property="email",column="email"),
			@Result(property="post",column="post"),
			@Result(property="address",column="address"),
			@Result(property="detailAddress",column="detailAddress"),
			@Result(property="rdate", column="rdate")})
	Member 찾다ID와PASSWORD(@Param ("id") String id,@Param ("password")String password);
	
	@Select("select * from member where no=#{no}")
	//("select no,name,id from member where no=?");
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="id",column="id"),
			@Result(property="password",column="password"),
			@Result(property="name",column="name"),
            @Result(property="tel",column="tel"),
			@Result(property="email",column="email"),
			@Result(property="post",column="post"),
			@Result(property="address",column="address"),
			@Result(property="detailAddress",column="detailAddress"),
			@Result(property="rdate", column="rdate")})
	Member 찾다회원번호(int no);
	
	@Select("select*from member")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="id",column="id"),
			@Result(property="password",column="password"),
			@Result(property="name",column="name"),
            @Result(property="tel",column="tel"),
			@Result(property="email",column="email"),
			@Result(property="post",column="post"),
			@Result(property="address",column="address"),
			@Result(property="detailAddress",column="detailAddress"),
			@Result(property="rdate", column="rdate")})
	List<Member> 내정보를보다();

}
