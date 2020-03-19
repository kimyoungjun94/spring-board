<%@ page import="java.sql.Driver"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page session="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8" language="java"%>
<%
	Connection connection = null;
	PreparedStatement prestat = null;
	ResultSet rs = null;

	String dbURL = "jdbc:mysql://localhost:3306/my_web_board?serverTimezone=UTC";
	String dbID = "root";
	String dbPassword = "kyj!1994";
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(dbURL, dbID, dbPassword);

	System.out.println("connection : " + connection + " DataBase Connect Success");
	
	String url = request.getQueryString().substring(3);
	/* System.out.println(url); */ //id=1 에서 1만 가져온다
	String query = "delete from board where No=" + url;
	prestat = connection.prepareStatement(query);
	prestat.executeUpdate(); // Query 실행
	System.out.println("No : " + url + " 이 삭제되었습니다.");

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link href="tomcat.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<script type="text/javascript">
		alert('게시글이 정상적으로 삭제되었습니다.');
		location.href="/list.jsp";
	</script>
	<div style="text-align: center;">
		<button onclick="location.href = '/list.jsp'">게시글 목록</button>

	</div>

</body>

</html>