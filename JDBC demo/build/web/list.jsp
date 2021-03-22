<%-- 
    Document   : list
    Created on : Jan 19, 2021, 2:04:46 PM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="model.Categories"%>
<%@page import="java.util.Locale.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of categories</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Describe</th>
            </tr>
           <%-- <jsp:useBean id="cats" class="dal.CategoryDAO"/>
           --%>
           <%
               List<Categories>cats=(List<Categories>)request.getAttribute("data");
               %>
            <%
                for(Categories c:cats){
                    String id=c.getId();
                    String name=c.getName();
                    String des=c.getDescribe();
                    %>
                    <tr>
                        <td>= id % ></td>
                        <td>= name  % ></td>
                        <td>= des % ></td>
                    </tr>
                    <%
                }
                %>
        </table>
    </body>
</html>
