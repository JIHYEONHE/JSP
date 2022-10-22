<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  //스크립틀릿
	//deleteCart.jsp?cartId=6B5BE6998A142803CC64973E9C7FC8A9 <= session.getId()
	//요청 파라미터의 cartId를 받아보자
	String id = request.getParameter("cartId");//6B5BE6998A142803CC64973E9C7FC8A9

	//cartId가 없네? => cart.jsp로 이동
	if(id==null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//장바구니 비우기
// 	session.removeAttribute("cartlist");
	session.invalidate(); //모든 세션을 삭제
	
	response.sendRedirect("cart.jsp");
%>