package kr.or.ddit.helloWorld.prod.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.helloWorld.prod.service.IProdService;
import kr.or.ddit.helloWorld.prod.service.ProdServiceImpl;
import kr.or.ddit.web.IAction;

public class ProdSelectByRegion implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8"); 
		
		String region = request.getParameter("region");
		
		IProdService service=ProdServiceImpl.getService();
		
		List<Map<String, String>> list = service.selectByRegion(region);
		
		Gson gson = new Gson();
		String result = gson.toJson(list);
		
		PrintWriter out = response.getWriter();
		out.println(result);
		response.flushBuffer();
		
		return null;
	}

}
