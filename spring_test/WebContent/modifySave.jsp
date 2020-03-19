<%@ page import="java.sql.Driver"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>게시글 수정 후 저장</title>
</head>
<body>
	<%
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String url = request.getParameter("id");
		StringBuffer sql = new StringBuffer();

		try {
			prestat = connection.prepareStatement("update board set Title=?, Content=? where No=?");
			prestat.setString(1, title);
			prestat.setString(2, content);
			prestat.setString(3, url);

			prestat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<script type="text/javascript">
		alert('게시글이 정상적으로 수정되었습니다.');
		location.href="/list.jsp";
	</script>
</body>
</html>