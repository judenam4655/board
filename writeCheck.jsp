<%@page import="com.jsp.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String bWriter = request.getParameter("bWriter");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.insert(bWriter, bTitle, bContent);
		
		if(result == 1){
	%>
		<script>
			alert('글이 등록 되었습니다.');
			window.location = "boardList.jsp";
		</script>
	<%} else{%>
		<script>
			alert('글이 등록되지 않았습니다.');
			window.location = "boardList.jsp";
		</script>
	<%} %> 
		
</body>
</html>