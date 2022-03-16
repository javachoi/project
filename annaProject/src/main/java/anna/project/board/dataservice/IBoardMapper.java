package anna.project.board.dataservice;

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

@Mapper
public interface IBoardMapper {
	
	@Insert("insert into board(title,contents,writer) values(#{title},#{contents},#{writer.no})")
	//("insert into board(title,contents,writer) values(?,?,?)");
	void 게시물을저장하다(Board 새게시물);

	@Select("select*from board")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title", column="title"),
			@Result(property="contents", column="contents"),
			@Result(property="writer", column="writer",
			one=@One(select="anna.project.member.dataservice.IMemberMapper.찾다회원번호")),
			@Result(property="views", column="views"),
			@Result(property="rdate", column="rdate")})
	List<Board> 모든게시물을수집하다();
	
	@Select("select*from board where no=#{no}")
	//("select no,title,contents,writer,views from board where no=?");
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="writer", column="writer",
			one=@One(select="anna.project.member.dataservice.IMemberMapper.찾다회원번호")),
			@Result(property="views",column="views"),
			@Result(property="rdate", column="rdate")})
	Board 게시물조회하다(@Param("no") int 게시물번호);
	
	@Update("update board set views=views+1 where no=#{no}")
	//("update board set views=views+1 where no=?");
	void 게시물조회수증가하다(@Param("no") int 게시물번호);
	
	@Select("select * from board where no=#{no}")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
            @Result(property="writer", column="writer",
            one=@One(select="anna.project.member.dataservice.IMemberMapper.찾다회원번호")),
			@Result(property="views",column="views"),
			@Result(property="rdate", column="rdate")})
	Board 게시물번호를찾다(@Param("no") int 게시물번호);
	
	@Update("update board set title=#{title},contents=#{contents} where no=#{no}")
	//("update board set title=?,contents=?,where no=?");
	void 게시물변경하다(Board 변경한게시물);

	@Delete("delete from board where no=#{no}")
	//("delete from board where no=?")
	void 게시물삭제하다(@Param("no") int 게시물번호);

}

