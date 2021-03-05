<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Admin Login Successful</h4>
	<h4>Hello, ${sessionScope.voter.userDetails.name}</h4>
	<h4>
		<a href="candidate_register.jsp">New Candidate Registration</a>
	</h4>
	<h4>${sessionScope.candidate.message}</h4>
</body>
</html>