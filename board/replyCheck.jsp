<%@page import="board.BoardDAO"%>
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
		String bId = request.getParameter("bId");
		String bWriter = request.getParameter("bWriter");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bGroup = request.getParameter("bGroup");
		String bStep = request.getParameter("bStep");
		String bIndent = request.getParameter("bIndent");
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.reply(bWriter, bTitle, bContent, bGroup, bStep, bIndent);
		
		if(result == 1){
	%> 
		<script>
			alert('글이 등록되었습니다.');
			window.location = 'boardList.jsp';
		</script>
	
	<%
		}else{
	%>
		<script>
			alert('글이 등록되지 않았습니다.');
			history.back();
		</script>
	
	<%
		}
	%>
	
</body>
</html>