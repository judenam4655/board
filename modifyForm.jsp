<%@page import="com.jsp.board.BoardDTO"%>
<%@page import="com.jsp.board.BoardDAO"%>
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
	request.setCharacterEncoding("UTF-8");
%>
	
	<br>
	<h1 style="text-align: center;">게시글 수정</h1><br>
	
	<form action="modifyCheck.jsp" method="post" accept-charset="UTF-8">
		<input type="hidden" name="bId" value="${param.bId}">
		<table class="table table-bordered">
			<tr style="text-align: center">
				<th colspan="2"><a href="boardList.jsp" class="btn btn-outline-primary">목록보기</a></th>
			</tr>
			<tr> 
				<th scope="col">번호</th>
				<td> ${param.bId} </td>
			</tr>
			
			<tr>
				<th scope="col">조회수</th>
				<td> ${param.bHit} </td>
			</tr>
			
			<tr>
				<th scope="col">작성자</th>
				<td> <input type="text" name="bWriter" value="${param.bWriter}"></td>
			</tr>
			
			<tr>
				<th scope="col">제목</th>
				<td> <input type="text" name="bTitle" value="${param.bTitle}"></td>
			</tr>
			
			<tr>
				<th scope="col">내용</th>
				<td> 
					<textarea rows="10" cols="30" name="bContent" >${param.bContent}</textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" style="text-align: center"> 
					
					<input type="submit" value="수정" class="btn btn-outline-warning" > 
				</td>
			</tr>
			
		</table>
	</form>
	
	<!-- 부트스트랩 자바스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>