<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hi,<%=session.getAttribute("User") %><br>
	<h2>You have successfully logged</h2>
	<form action="DisplaydataServlet">
		<button>All Registered Users</button>
			
	</form>
</body>
</html>