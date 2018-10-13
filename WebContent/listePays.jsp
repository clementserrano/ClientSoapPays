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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion des Pays SOAP</title>
</head>

<body>
	<jsp:include page="navbar.jsp" />

	<div>
		<h5 class="center">Entrez ci-dessous la destination de vos rêves
			!</h5>
	</div>

	<div class="container">
		<div class="row">
			<form class="col s12" method="post" action="Controleur">
				<div class="row">
					<div class="input-field col s9">
						<select name="pays" size="1">
							<c:forEach items="${listePays}" var="pays">
								<option value="${pays.getNomPays()}">${pays.getNomPays()}</option>
							</c:forEach>
						</select>
					</div>
					<div class="input-field col s3">
						<button class="btn waves-effect waves-light" type='submit'>
							Rechercher <i class="material-icons right">send</i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.parallax').parallax();
		});

		$(document).ready(function() {
			$('select').formSelect();
		});
	</script>

</body>
</html>
</body>
</html>