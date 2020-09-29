<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- public String join3(Person p)를 사용하면 person변수가 자동으로 만들어져서 ${person.id}로 출력이 가능하다 -->
    ID1: ${p.id}<br>
    ID2: ${person.id}<br>
    ID3: ${person.getId()}<br>
    ID4: ${requestScope.person.id}<br><br>
    
    PW1: ${person.pw }<br>
    PW2: ${person.getPw() }<br>
    PW3: ${requestScope.person.pw }<br><br>
    
    NAME1: ${person.name }<br>
    NAME2: ${person.getName() }<br>
    NAME3: ${requestScope.person.name }<br><br>
    
    ADDR1: ${person.addr }<br>
    ADDR2: ${person.getAddr() }<br>
    ADDR3: ${requestScope.person.addr }<br><br>
    
    