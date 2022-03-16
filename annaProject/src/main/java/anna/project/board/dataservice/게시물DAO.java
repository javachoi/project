package anna.project.board.dataservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import anna.project.board.common.Board;

@Repository
public class 게시물DAO implements I게시물DAO {
	
	@Autowired IBoardMapper boardMapper;

	@Transactional
	@Override
	public void 저장하다(Board 새게시물) {
		boardMapper.게시물을저장하다(새게시물);
	}

	@Transactional
	@Override
	public List<Board> 수집하다() {
		return boardMapper.모든게시물을수집하다();
	}

	@Transactional
	@Override
	public Board 조회하다(int 게시물번호) {
		return boardMapper.게시물조회하다(게시물번호);
	}

	@Transactional
	@Override
	public Board 조회수증가하다(int 게시물번호) {
		boardMapper.게시물조회수증가하다(게시물번호);
		return boardMapper.게시물조회하다(게시물번호);
	}
	
	@Override
	public Board 번호를찾다(int 게시물번호) {
		return boardMapper.게시물번호를찾다(게시물번호);
	}

	@Override
	public void 변경하다(Board 변경게시물) {
		boardMapper.게시물변경하다(변경게시물);
	}

	@Override
	public void 삭제하다(int 게시물번호) {
		boardMapper.게시물삭제하다(게시물번호);
		
	}
}
