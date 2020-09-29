<%@page import="com.spring.ex.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person\personView4.jsp<br><br>
	
	<!--@ModelAttribute("abcd")로 정해 놓았기 때문에 자동으로 만들어진 person참조변수는 사용하지 않는다.  -->
 	ID1: ${p.id}<br>
    ID2: ${person.id}<br>
    ID3: ${person.getId()}<br>
    ID4: ${requestScope.person.id}<br><br>
    
    ID5: ${abcd.id}<br>
    ID6: ${requestScope.abcd.id}<br>
    ID7: ${requestScope.abcd.getId()}<br>
    ID8: <%=((Person)request.getAttribute("abcd")).getId() %><br><br>
    
    PW1: ${person.pw }<br>
    PW2: ${abcd.getPw() }<br>
    PW3: ${requestScope.abcd.pw }<br>
    PW4: <%=((Person)request.getAttribute("abcd")).getId() %><br><br>
    
    NAME1: ${person.name }<br>
    NAME2: ${person.getName() }<br>
    NAME3: ${requestScope.person.name }<br><br>
    
    ADDR1: ${person.addr }<br>
    ADDR2: ${person.getAddr() }<br>
    ADDR3: ${requestScope.person.addr }<br><br>
    
