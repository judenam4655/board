<%@page import="com.jsp.board.BoardDTO"%>
<%@page import="com.jsp.board.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- 부트스트랩 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<style type="text/css">
	table{
		width : 50% !important;
		margin-left:25%; 
    	margin-right:25%;
		
	}
</style>

<body>

<%
	String bId = request.getParameter("bId");
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO dto = dao.contentView(bId);
	
	request.setAttribute("content_view", dto);
%>
	
	
	<form action="modifyForm.jsp" method="post" accept-charset="UTF-8">
		<input type="hidden" name="bId" value="${content_view.bId}">
		<input type="hidden" name="bWriter" value="${content_view.bWriter}">
		<input type="hidden" name="bHit" value="${content_view.bHit}">
		<input type="hidden" name="bTitle" value="${content_view.bTitle}">
		<input type="hidden" name="bContent" value="${content_view.bContent}">
		
		<br><br><div style="text-align: center">
		<a href="boardList.jsp" class="btn btn-outline-primary">목록보기</a>
		</div><br>
		
		<table class="table table-bordered">
			<tr>  
				<td> 번호 </td>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<td> 작성자 </td>
				<td> ${content_view.bWriter}</td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td>${content_view.bTitle}</td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> 
					<p>${content_view.bContent}</p>
				</td>
			</tr>
			<tr>
				<td colspan="2"> 
					<input type="submit" value="수정" class="btn btn-outline-warning">  &emsp; &emsp;
					<a href="delete.jsp?bId=${content_view.bId}" class="btn btn-outline-danger" >삭제</a> &emsp;&emsp;
					<a href="replyForm.jsp?bId=${content_view.bId}" class="btn btn-outline-info"  >답글</a>
				</td>
			</tr>
		</table>
	</form>
	<!-- 부트스트랩 자바스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>