<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Registration Form</h4>
	<form action="check_registration.jsp" method="post">
		<table style="background-color: cyan; margin: auto;">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Party</td>
				<td><input type="text" name="party" /></td>
			</tr>
			<tr>
				<td>Dob</td>
				<td><input type="date" name="dob" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
		<h4>${sessionScope.candidate.message}</h4>
	</form>
</body>
</html>