<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
    
    List<Map<String, String>> list = new ArrayList<Map<String, String>>(){{
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
    }};

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
        list size : <%= list.size() %><br/>

        <table>
            <thead> 
                <tr>
                    <th>No</th>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Cnt</th>
                </tr>
            </thead>
            <tbody id="tbody">
                <% for(int i=0; i<list.size(); i++){ %>
                <tr onclick="location.href='/view.jsp?id=<%= list.get(i).get("seq") %>'">
                    <td><%= i+1 %></td>
                    <td><%= list.get(i).get("title") + "_" + (i+1) %></td>
                    <td><%= list.get(i).get("content") + "_" + (i+1) %></td>
                    <td><%= list.get(i).get("cnt") + " : 0" %>
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
