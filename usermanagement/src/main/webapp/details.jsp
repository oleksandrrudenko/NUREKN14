<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="user" class="com.rudenko.usermanagement.User" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User management. Details</title>
    </head>
    <body>
    	Id: ${user.id}<br>
        First name: ${user.firstName}<br>
        Last name: ${user.lastName}<br>
        <fmt:parseDate value="${user.dateOfBirthday}" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
        Date of birth <fmt:formatDate value="${parsedDate}" type="date" pattern="dd.MM.yyyy" dateStyle="medium"/><br>
        <form action="<%=request.getContextPath()%>/details" method="get">
            <input type="submit" value="Ok"  name="okButton" />
        </form>
        <c:if test="${requestScope.error != null}">
            <script>
            alert('${requestScope.error}');
            </script>
        </c:if>
    </body>
</html>