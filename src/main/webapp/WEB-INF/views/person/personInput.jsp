<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

person\personInput.jsp<br><br>
<!--http://localhost:8080/ex/form 요청 해야한다  -->
<form action="person/join4" method="get">
	
	<table border=1>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id"></td>
		</tr>
		
		<tr>
			<td>PW</td>
			<td><input type="text" name="pw"></td>
		</tr>
		
		<tr>
			<td>NAME</td>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
			<td>ADDR</td>
			<td><input type="text" name="addr"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="전송">
			</td>
		</tr>
	</table>
	
</form>