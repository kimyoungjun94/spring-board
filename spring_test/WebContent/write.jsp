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

	/* String query = "select No from board order by No desc limit 1";
	prestat = connection.prepareStatement(query);
	rs = prestat.executeQuery(); */

	/* Date nowTime = new Date();
	String simpledate = new String();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	String date = sf.format(nowTime); */
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script type="text/javascript">
	function check() {
		var write = document.write;
		if (!write.title.value) {
			alert('제목을 입력해주세요');
			write.title.focus();
			return;
		}
		if (!write.content.value) {
			alert('내용을 입력해주세요');
			write.content.focus();
			return;
		}
		write.submit();
	}
</script>
<link href="tomcat.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h2>글쓰기</h2>
	write.jsp
	<br />
	<br />
	<br />

	<form name="write" id="write" action="writeSave.jsp" method="post">
		<table style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2">글쓰기</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><input type="text" name="title" id="title"
						placeholder="제목을 입력하세요" maxlength="80" /></td>
				</tr>
				<tr>
					<td><textarea type="text" name="content" id="content"
							placeholder="내용을 입력하세요" /></textarea></td>
				</tr>
				<%-- <tr>
					<%
						while (rs.next()) {
					%>
					<td name="no">No : <%=Integer.toString(Integer.parseInt(rs.getString("No")) + 1)%></td>
					<%
						}
					%>
				</tr> --%>
			</tbody>
		</table>
	</form>

	<div style="text-align: center;">
		<input type="submit" name="Savebutton" Onclick="javascript:check();"
			value="저장">
		<button onclick="location.href = '/list.jsp'">취소</button>
	</div>
</body>

<script type="text/javascript">
	
</script>
</html>