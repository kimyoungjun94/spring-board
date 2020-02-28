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
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "3");
                    put("title", "test_title");
                    put("content", "test_content");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "5");
                    put("title", "test_title");
                    put("content", "test_content");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "7");
                    put("title", "test_title");
                    put("content", "test_content");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "9");
                    put("title", "test_title");
                    put("content", "test_content");
            }});
            add(new HashMap<String, String>(){{
                    put("seq", "11");
                    put("title", "test_title");
                    put("content", "test_content");
            }});
            add(new HashMap<String, String>(){{
                	put("seq", "13");
                	put("title", "test_title");
                	put("content", "test_content");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "15");
                	put("title", "test_title");
                	put("content", "test_content");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "17");
                	put("title", "test_title");
                	put("content", "test_content");
        	}});
            add(new HashMap<String, String>(){{
                	put("seq", "19");
                	put("title", "test_title");
                	put("content", "test_content");
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
                </tr>
            </thead>
            <tbody id="tbody">
                <% for(int i=0; i<list.size(); i++){ %>
                <tr onclick="location.href='/view.jsp?id=<%= list.get(i).get("seq") %>'">
                    <td><%= i+1 %></td>
                    <td><%= list.get(i).get("title") + "_" + (i+1) %></td>
                    <td><%= list.get(i).get("content") + "_" + (i+1) %></td>
                </tr>
                <% } %>
            </tbody>
        </table>


        <button onclick="location.href = '/view.jsp'">상세보기</button>
        <button onclick="location.href = '/write.jsp'">등록</button>
        

    </body>

    <script type="text/javascript">


    </script>

</html>
