package kr.or.ddit.helloWorld.helpBoard.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.web.IAction;

public class helpBoardPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		return "/helpBoardPage/dist/index.html";
	}

}
