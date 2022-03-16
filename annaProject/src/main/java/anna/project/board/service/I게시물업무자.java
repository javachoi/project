package anna.project.board.service;

import java.util.List;



import anna.project.board.common.Board;

public interface I게시물업무자 {
	
	boolean 게시물작성이가능한가();
	void 게시물을등록하다(Board 새게시물);
	List<Board> 게시물을수집하다();
	Board 게시물을조회하다(int 게시물번호);
	Board 게시물조회수증가하다(int 게시물번호);
	Board 게시물변경준비를하다(int no);
	void 게시물을변경하다(Board 변경게시물);
	void 게시물을삭제하다(int 게시물번호);
	
}
