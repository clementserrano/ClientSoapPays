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
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion des Pays SOAP</title>
</head>
<body>
	<div class="container">
		<div class="section">
			<h1>Gestion des Pays SOAP</h1>
			<h3>Entrez ci-dessous la destination de vos rêves !</h3>

			<div class="row">
				<form class="col s12" method="post" action="Controleur">
					<div class="row">
						<div class="input-field col s12">
							<select name="pays" size="1">
								<c:forEach items="${listePays}" var="pays">
									<option value="${pays.getNomPays()}">${pays.getNomPays()}</option>
								</c:forEach>
							</select>
							<button class="btn waves-effect waves-light" type='submit'>
								Rechercher <i class="material-icons right">send</i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>Choose your option</option>
				<option value="1">Option 1</option>
				<option value="2">Option 2</option>
				<option value="3">Option 3</option>
			</select> <label>Materialize Select</label>
		</div>
	</div>

	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
</body>
</html>