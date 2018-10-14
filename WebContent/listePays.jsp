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

<body class="bg-tourism">
	<jsp:include page="navbar.jsp" />

	<main>
	<div class="container">
		<div class="row card white z-depth-5">
			<div class="card-content">
				<span class="center card-title">Entrez ci-dessous la
					destination de vos rêves !</span>

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
	</div>
	</main>

	<!-- Element Showed -->
	<div class="fixed-action-btn direction-top active custom-discovery">
		<a id="menu"
			class="waves-effect waves-light btn btn-floating right-align"
			onclick="$('.tap-target').tapTarget('open')"><i
			class="material-icons">menu</i></a>
	</div>
	<!-- Tap Target Structure -->
	<div class="tap-target teal white-text bg-auteurs" data-target="menu">
		<div class="tap-target-content">
			<div class="card teal border-round">
				<div class="card-content">
					<span class="card-title">Materialize</span>
					<p>Ce projet a été réalisé avec: materializecss.com par SERRANO
						Clément et JOLIVET Nathan</p>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="resources/js/materialize.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.parallax').parallax();
		});

		$(document).ready(function() {
			$('select').formSelect();
		});

		M.toast({
			html : 'Chargement effectué'
		})

		$(document).ready(function() {
			$('.tap-target').tapTarget();
		});
	</script>

</body>
</html>
</body>
</html>