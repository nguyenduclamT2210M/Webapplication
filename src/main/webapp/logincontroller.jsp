
<%@ page import="java.io.Console" %>
<%@ page import="com.example.webapplication.LoginBean" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/14/2024
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <title>Login Controller</title>
        <%
            //Step 1 call Controller
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            // Step2: Call instance of JavaBean(model)
            LoginBean loginBean = new LoginBean();
            boolean status;
            try {
             status = loginBean.checkLogin(email, password);
            } catch (Exception e) {
                throw new Exception(e);

            }
            if(status ) { %>
        <%--Step 3: --%>
        <jsp:forward page="success.jsp"/>
        <%}else {%>
        <jsp:forward page="false.jsp"/>
        <%} %>
        %>
    </head>

<body>

</body>
</html>
