<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    ID: ${id}<br>
    PW: <%=request.getAttribute("pw") %><br>
    NAME: ${requestScope.name }<br>
    ADDR: ${param.addr}<br><br>
    
    NAME2: ${param.Mname }<br>
    NAME3: ${Mname }<br>
    NAME4: ${requestScope.Mname }<br>
    NAME5: <%=request.getAttribute("Mname") %><br>
    
    
    