<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="resources/css/materialize.min.css" media="screen,projection" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion des Pays SOAP</title>
</head>
<body class="bg-tourism">
	<jsp:include page="navbar.jsp" />
	<main>
	<div class="container">
		<div class="section center">
			<a class="btn wave-effect wave-light" href="Controleur">Charger
				les pays</a>
		</div>
	</div>
	</main>
	<jsp:include page="footer.jsp" />
	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="resources/js/materialize.min.js"></script>
	
</body>
</html>