<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="voter" class="beans.VoterBean" scope="session" />
<jsp:setProperty property="*" name="voter" />

<body>
	<%-- <h5>Authentication Status : ${sessionScope.voter.validateUser()}</h5> --%>
	<!-- session.getAttribute("voter").validateUser() -->

	<!--  forward the client to the next page in the SAME request : RD's forward -->
	<jsp:forward page="${sessionScope.voter.validateUser()}.jsp" />
	<!-- RD rd =request.getRD(session.getAttribute("voter").validateUser().concat(".jsp") -->
</body>
</html>