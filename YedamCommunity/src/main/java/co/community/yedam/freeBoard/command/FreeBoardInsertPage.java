package co.community.yedam.freeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class FreeBoardInsertPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글쓰기 페이지로 이동.
		
		return "main/freeBoard/freeBoardInsertPage";
	}

}
