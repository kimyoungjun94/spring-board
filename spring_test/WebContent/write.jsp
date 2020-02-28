<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page session="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>글쓰기</title>
		<link href="tomcat.css" rel="stylesheet" type="text/css" />
	</head>
	
	<body>
		<h2>글쓰기</h2>
		write.jsp<br/><br/><br/>
		
		<form name = "write.jsp">
			<div>
				No<br/>
				No<br/><br/><br/>
			</div>
			
			<div>
				Title<br/>
				<input name="title" id="title" size="80" placeholder="제목을 입력하세요">
				<br/><br/>
			</div>
			
			<div>
				Content<br/>
				<textarea name="content" id="content" rows="10" cols="100" placeholder="내용을 입력하세요"></textarea>
			</div>
		
		</form>
		
		<div style="text-align : center;">
			<button onclick="location.href = '/list.jsp'">저장</button>
			<button onclick="location.href = '/list.jsp'">취소</button>
		</div>
	</body>
	
	<script type="text/javascript">


    </script>
</html>