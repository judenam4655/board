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

	<br><h1 style="text-align: center;">게시글 작성</h1><br>
	
	<form action="writeCheck.jsp" method="post" accept-charset="UTF-8">
		<table class="table table-bordered">
			<tr>
				<th colspan="2" style="text-align: center">
					<a href="boardList.jsp" class="btn btn-outline-primary">목록보기</a>
				</th>
			</tr>
			<tr>
				<th scope="col">작성자</th>
				<td> <input type="text" name="bWriter" size = "30"> </td>
			</tr>
			<tr>
				<th scope="col">제목</th>
				<td> <input type="text" name="bTitle" size = "30"> </td>
			</tr>
			<tr>
				<th scope="col">내용</th>
				<td> <textarea name="bContent"  rows="10" cols="40" ></textarea> </td>
			</tr>
			<tr >
				<td colspan="2"> 
					
					<input type="submit" value="입력" class="btn btn-outline-success"> 
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>