package anna.project.pictureInfo.dataservice;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import anna.project.pictureInfo.common.PictureInfo;

@Mapper
public interface IPictureInfoMapper {
	
	@Insert("insert into pictureInfo(title,contents,fileName) values(#{title},#{contents},#{fileName})")
	@SelectKey(statement="select last_insert_id()", keyProperty="no", before=false, resultType=int.class)
	void 저장하다(PictureInfo 그림정보);
	
	@Select("select * from pictureInfo")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="fileName",column="fileName"),
            @Result(property="rdate",column="rdate")})
	List<PictureInfo> 모두수집하다();
	
	@Select("select * from pictureInfo where no=#{no}")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="fileName",column="fileName"),
            @Result(property="rdate",column="rdate")})
	PictureInfo 찾다By번호(@Param("no") int 그림정보번호);
}
