<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page  import="model.RegistrationModel"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
		<table border="1">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Id</th>
				</tr>
					<% 
						List<RegistrationModel> list=(List<RegistrationModel>)request.getAttribute("List");
						for(int i=0;i<list.size();i++)
						{%>
							<tr>
							<td><%= list.get(i).getFirstName()%></td>
							<td><%= list.get(i).getLastName() %></td>
							<td><%= list.get(i).getEmailId() %></td>
							</tr>
						<% 
							
						}
						
					%>
				
		</table>
		</form>
</body>
</html>