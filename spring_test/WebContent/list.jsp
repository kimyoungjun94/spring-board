<%@ page import="java.sql.Driver"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
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

	String query = "select * from board";
	prestat = connection.prepareStatement(query);
	rs = prestat.executeQuery();
	
	/* while(rs.next()){
		String No = rs.getString("No");
		String Title = rs.getString("Title");
		String Content = rs.getString("Content");
		String CreateTime = rs.getString("CreateTime");
		String UpdateTime = rs.getString("UpdateTime");
		
		System.out.println(No + "\t" + Title + "\t" + Content + "\t" + CreateTime + "\t" + UpdateTime);
	} */

    /* List<Map<String, String>> list = new ArrayList<Map<String, String>>(){{
            add(new HashMap<String, String>(){{
                    put("seq", "1");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "2");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "3");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "4");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "5");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "6");
                    put("title", "test_title");
                    put("content", "test_content");
                    put("cnt", "test_cnt");
            }});
            add(new HashMap<String, String>(){{
                	put("seq", "7");
                	put("title", "test_title");
                	put("content", "test_content");
                	put("cnt", "test_cnt");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "8");
                	put("title", "test_title");
                	put("content", "test_content");
                	put("cnt", "test_cnt");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "9");
                	put("title", "test_title");
                	put("content", "test_content");
                	put("cnt", "test_cnt");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "10");
                	put("title", "test_title");
                	put("content", "test_content");
                	put("cnt", "test_cnt");
        	}});
    }}; */

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>게시글 목록</title>
        <link href="tomcat.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <h2>게시글 목록</h2><br/>
        list.jsp<br/>
        <%-- list size : <%= list.size() %><br/> --%>

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
         		<% while(rs.next()) { %>
         		<tr onclick = "location.href='/view.jsp?id=<%= rs.getString("No") %>'">
         			<td><%= rs.getString("No") %></td>
         			<td><%= rs.getString("Title") %></td>
         			<td><%= rs.getString("Content") %></td>
         			<td><%= rs.getString("CreateTime") %></td>
         			<td><%= rs.getString("UpdateTime") %></td>
         		</tr>
         		<% } %>
            </tbody>
        </table>

<!-- 등록 -->

		<div style="text-align : center;">
        	<button onclick="location.href = '/write.jsp'">글쓰기</button> 
        </div>

    </body>

    <script type="text/javascript">


    </script>

</html>
