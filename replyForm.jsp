<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
	table{
		width : 50% !important;
		margin-left:25%; 
    	margin-right:25%;
		
	}
</style>

</head>
<body>

	<%
		String bId = request.getParameter("bId");
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = dao.replyView(bId);
		 
		request.setAttribute("reply_view", dto);
	%>
	<br><h1 style="text-align: center">${reply_view.bTitle} : 답글쓰기</h1><br>
	<form action="replyCheck.jsp" method="post" accept-charset="UTF-8">
		<input type="hidden" name="bId" value="${reply_view.bId}">
		<input type="hidden" name="bGroup" value="${reply_view.bGroup}">
		<input type="hidden" name="bStep" value="${reply_view.bStep}">
		<input type="hidden" name="bIndent" value="${reply_view.bIndent}">
		<table class="table table-bordered">
			<tr>
				<td colspan="2">
				<a href="boardList.jsp" class="btn btn-outline-primary" >목록</a>
				</td>
			</tr>
			<tr>
				<td> 번호 </td>
				<td> ${reply_view.bId} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${reply_view.bHit} </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> <input type="text" name="bWriter"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" cols="40"  name="bContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="답글" class="btn btn-outline-success"> 
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>