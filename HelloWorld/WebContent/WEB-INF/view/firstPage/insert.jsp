<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String aa = (String)request.getAttribute("insertReslut");
	if(aa == null) {
		
%>
	{
		"result" : "실패!!"	
	}
		
	
<%
	} else {
		
%>		
	{
		"result" : "성공!!"
	}
	
<%
	
	}
	
%>
