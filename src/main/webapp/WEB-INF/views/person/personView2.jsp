<%@page import="com.spring.ex.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person/personView2.jsp<br><br>

	ID: ${param.id}<br>
    PW: <%=request.getParameter("pw") %><br>
    NAME: ${param.name }<br>
    ADDR: ${param.addr}<br><br>
	
	묶음으로 출력<br>
	per.id1 : ${requestScope.per.getId() }<br>
	per.id2 : ${requestScope.per.id }<br>
	per.id3 : ${per.getId() }<br>
	per.id4 : ${per.id }<br><br>
	
	per.id5 : <%=request.getAttribute("per") %><br> <!--이렇게 쓰면 주소만 나옴  -->
	per.id6 : <%=((Person)request.getAttribute("per")).getId() %><br><br>
	
	per.pw1 : ${per.pw }<br>
	per.pw2 : ${requestScope.per.pw }<br>
	per.pw3 : ${requestScope.per.getPw() }<br>
	per.pw4 : ${per.getPw() }<br>
	per.pw5 : <%=((Person)request.getAttribute("per")).getPw() %><br><br>
	
	per.name1 : ${per.name }<br>
	per.name2 : ${requestScope.per.name }<br>
	per.name3 : ${requestScope.per.getName() }<br>
	per.name4 : ${per.getName() }<br>
	per.name5 : <%=((Person)request.getAttribute("per")).getName() %><br><br>
	
	per.addr1 : ${per.addr }<br>
	per.addr2 : ${requestScope.per.addr }<br>
	per.addr3 : ${requestScope.per.getAddr() }<br>
	per.addr4 : ${per.getAddr() }<br>
	per.addr5 : <%=((Person)request.getAttribute("per")).getAddr() %><br><br>
	

