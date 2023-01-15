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
		String bId = request.getParameter("bId");
		String bWriter = request.getParameter("bWriter");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.modify(bId, bWriter, bTitle, bContent);
		
		if(result == 1){
		
	%>
	<script type="text/javascript">
		alert('글이 수정되었습니다.');
		document.location.href="contentView.jsp?bId=<%=bId%>";
	</script>
	<%}else{ %>
	<script type="text/javascript">
		alert('글이 수정되지 않았습니다.');
		document.location.href="boardList.jsp";
	</script>
	<%} %>
</body>
</html>