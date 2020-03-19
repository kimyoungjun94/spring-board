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

	System.out.println("connection : " + connection);

	String url = request.getParameter("id");
	/* System.out.println(url); */ //id=1 에서 1만 가져온다
	String query = "select * from board where No=" + url;
	prestat = connection.prepareStatement(query);
	rs = prestat.executeQuery(); // Query 실행
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<script type="text/javascript">
	function check() {
		var modify = document.modify;
		if (!modify.title.value) {
			alert('제목을 입력해주세요');
			modify.title.focus();
			return;
		}
		if (!modify.content.value) {
			alert('내용을 입력해주세요');
			modify.content.focus();
			return;
		}
		modify.submit();
	}
</script>
<link href="tomcat.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h2>게시글 수정</h2>
	modify.jsp
	<br />
	<br />
	<br />

	<form name="modify" id="modify" action="modifySave.jsp?id=<%=url%>" method="post">
		<table>
			<tbody id="tbody">
				<%
					while (rs.next()) {
				%>
				<tr>
					<td>No</td>
					<td><%=rs.getString("No")%></td>
				</tr>
				<tr>
					<td>Title</td>
					<td><input type="text" name="title" id="title" size="80"
						placeholder="<%=rs.getString("Title")%>"></td>
				</tr>
				<tr>
					<td>Content</td>
					<td><textarea type="text" name="content" id="content" rows="10" cols="100"
							placeholder="<%=rs.getString("Content")%>"></textarea></td>
				</tr>
				<tr>
					<td>CreateTime</td>
					<td><%=rs.getString("CreateTime")%></td>
				</tr>
				<tr>
					<td>UpdateTime</td>
					<td><%=rs.getString("UpdateTime")%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</form>
	<div style="text-align: center;">
		<input type="submit" name="Update" id="Update" Onclick="javascript:check();"
			value="저장">
		<button onclick="location.href = '/view.jsp?id=<%=url%>'">취소</button>
	</div>
</body>

<script type="text/javascript">
	
</script>
</html>