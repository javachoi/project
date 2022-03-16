package anna.project.pictureInfo.common;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class PictureInfo {
	
	int no;
	String title;
	String contents;
	MultipartFile pictureFile;
	String fileName;
	Date rdate;
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public MultipartFile getPictureFile() {
		return pictureFile;
	}
	
	public void setPictureFile(MultipartFile pictureFile) {
		this.pictureFile = pictureFile;
	}
	
	public String getFileName() {
		if(fileName==null) {
			fileName = pictureFile.getOriginalFilename();
		}
		return fileName;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public Date getRdate() {
		return rdate;
	}
	
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
}
