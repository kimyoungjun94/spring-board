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
		<title>게시글 상세보기</title>
		<link href="tomcat.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<h2>게시글 상세보기</h2>
		view.jsp<br/><br/><br/>
		
		<form name="view.jsp">
			<div>
				No<br/>
				No<br/><br/><br/>
			</div>
		
			<div>
				Title<br/>
				Title<br/><br/><br/>
			</div>
			
			<div>
				Content<br/>
				Content<br/><br/><br/>
			</div>
		</form>
		
		<div style="text-align : center;">
			<button onclick="location.href = '/modify.jsp'">수정</button>
			<button onclick="location.href = '/delete.jsp'">삭제</button>
		</div>
		<br/>
		
		<div style="text-align : center;">
			<button onclick="location.href = '/list.jsp'">게시글 목록</button>
			
		</div>
		
	</body>
	
	<script type="text/javascript">
	
	</script>
</html>