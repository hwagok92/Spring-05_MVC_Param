<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person/input.jsp<br><br>


name1 : ${name }<br>
name2 : ${requestScope.name }<br>
name3 : <%=request.getAttribute("name") %> <br>
name4 : <%=request.getParameter("name") %><br> <!-- 속성 으로 넘어온 "씨~"는 못받는다.-->
name5 : ${param.name}<br><br> <!-- 속성 으로 넘어온 "씨~"는 못받는다.-->

age1 : ${age }<br>
age2 : ${requestScope.age }<br>
age3 : <%=request.getAttribute("age") %> <br><br>

