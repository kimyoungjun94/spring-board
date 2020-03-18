<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.sql.Driver"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page session="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	Connection connection = null;
	PreparedStatement prestat = null;
	ResultSet rs = null;

	String dbURL = "jdbc:mysql://localhost:3306/my_web_board?serverTimezone=UTC";
	String dbID = "root";
	String dbPassword = "kyj!1994";
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(dbURL, dbID, dbPassword); // DB 연동

	System.out.println("connection : " + connection);

	String query = "select * from board order by No desc";
	prestat = connection.prepareStatement(query); // DB 연동
	rs = prestat.executeQuery();

	int cnt = 0;

	
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>게시글 목록</title>
<link href="tomcat.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h2>게시글 목록</h2>
	<br /> list.jsp
	<br />
	<br />
	<br />
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>Title</th>
				<th>Content</th>
				<th>CreateTime</th>
				<th>UpdateTime</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<%
				while (rs.next()) {
			%>
			<tr onclick="location.href='/view.jsp?id=<%=rs.getString("No")%>'">
				<td style="border:1px solid black; max-width:100px; overflow:hidden; text-overflow:ellipsis;"><%=rs.getString("No")%></td>
				<td style="border:1px solid black; max-width:100px; overflow:hidden; text-overflow:ellipsis;"><%=rs.getString("Title")%></td>
				<td style="border:1px solid black; max-width:100px; overflow:hidden; text-overflow:ellipsis;"><%=rs.getString("Content")%></td>
				<td style="border:1px solid black; max-width:100px; overflow:hidden; text-overflow:ellipsis;"><%=rs.getString("CreateTime")%></td>
				<td style="border:1px solid black; max-width:100px; overflow:hidden; text-overflow:ellipsis;"><%=rs.getString("UpdateTime")%></td>
				<%
					cnt++;
				%>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

	<!-- 등록 -->

	<br />
	<br /> list size :
	<%=cnt%><br />
	<div style="text-align: center;">
		<button onclick="location.href = '/write.jsp'">글쓰기</button>
	</div>

</body>

<script type="text/javascript">
	
</script>

</html>
