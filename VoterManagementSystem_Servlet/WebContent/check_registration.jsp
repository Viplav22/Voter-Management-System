<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- create candidate bean instance --%>
<jsp:useBean id="candidate" class="beans.CandidateBean" scope="session" />
<%-- CandidateBean constr will be called --%>

<%-- invoke matching setters --%>
<jsp:setProperty property="*" name="candidate" />
<%-- setName(),setParty(),setDob --%>
<body>
	<%-- invoke BL method for candidate ie. registerCandidate --%>
	<!--  forward the client to the next page in the SAME request : RD's forward -->
	<jsp:forward
		page="${sessionScope.candidate.validateNRegisterCandidate()}.jsp" />
	<!-- RD rd =request.getRD(session.getAttribute("candidate").registerCandidate().concat(".jsp") -->
</body>
</html>