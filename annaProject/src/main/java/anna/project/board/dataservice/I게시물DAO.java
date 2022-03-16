package anna.project.board.dataservice;

import java.util.List;

import anna.project.board.common.Board;

public interface I게시물DAO {
	
	void 저장하다(Board 새게시물);
	List<Board> 수집하다();
	Board 조회하다(int 게시물번호);
	Board 조회수증가하다(int 게시물번호);
	Board 번호를찾다(int 게시물번호);
	void 변경하다(Board 변경게시물);
	void 삭제하다(int 게시물번호);
}
