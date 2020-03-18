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
	connection = DriverManager.getConnection(dbURL, dbID, dbPassword);

	System.out.println("connection : " + connection);
	System.out.println("DataBase 연결 성공");

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
<title>게시글 상세보기</title>
<script type="text/javascript">
	
	function deleteData(url){
		if(confirm("게시글을 삭제하시겠습니까?")==true){
			location.href="/delete.jsp?id=" + url;
		}
	}

	function modifyData(url){
		location.href="/modify.jsp?id=" + url;
	}
	
</script>
<link href="tomcat.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h2>게시글 상세보기</h2>
	<br /> view.jsp
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
			<tr>
				<td><%=rs.getString("No")%></td>
				<td><%=rs.getString("Title")%></td>
				<td><%=rs.getString("Content")%></td>
				<td><%=rs.getString("CreateTime")%></td>
				<td><%=rs.getString("UpdateTime")%></td>
				<td><input type="button" onclick="deleteData(<%=url%>)"
					value="삭제"></td>
				<td><input type="button" onclick="modifyData(<%=url%>)"
					value="수정"></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>


	<div style="text-align: center;">
		<button onclick="location.href = '/list.jsp'">게시글 목록</button>
	</div>

</body>

<script type="text/javascript">
	
</script>
</html>