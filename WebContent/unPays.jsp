<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="service.ServiceStub.Pays"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%
	Pays pays = (Pays) request.getAttribute("pays");
%>
<head>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="resources/css/materialize.min.css" media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=pays.getNomPays()%></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css"
	integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
	crossorigin="" />
<script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"
	integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA=="
	crossorigin=""></script>
</head>
<body class="bg-tourism">
	<jsp:include page="navbar.jsp" />
	<main>
	<div class="container">
		<div class="section card white z-depth-5">
			<div class="row card-content">

				<div class="col s4">
					<table>


						<tbody>
							<tr>
								<th class="s4">Pays</th>
								<td class="s8"><%=pays.getNomPays()%></td>
							</tr>
							<tr>
								<th class="s4">Continent</th>
								<td class="s8"><%=pays.getNomContinent()%></td>
							</tr>
							<tr>
								<th class="s4">Capitale</th>
								<td class="s8"><%=pays.getNomCapitale()%></td>
							</tr>
							<tr>
								<th class="s4">Nombre d'habitants</th>
								<td class="s8"><%=pays.getNbHabitants()%></td>
							</tr>
						</tbody>
					</table>

					<br> <a class="waves-effect waves-light btn"
						href="http://localhost:8080/ClientSoapPays/Controleur">Retour
						à l'accueil <i class="material-icons left">chevron_left</i>
					</a>

				</div>
				<div class="col s8">
					<div id="mapid"></div>
				</div>
			</div>

		</div>
	</div>
	</main>
	<jsp:include page="footer.jsp" />


	<script>
			let nomPays='<%= pays.getNomPays() %>';
			let nomCapitale='<%= pays.getNomCapitale() %>';
			nomPays = nomPays.normalize('NFD').replace(/[\u0300-\u036f]/g, "")
			nomCapitale = nomCapitale.normalize('NFD').replace(/[\u0300-\u036f]/g, "")
		
			const UrlPays='https://nominatim.openstreetmap.org/search?q='+nomPays+'&format=json&limit=1';
			const UrlCapitale='https://nominatim.openstreetmap.org/search?q='+nomCapitale+'&format=json&limit=1';
			
			$.getJSON(UrlPays, function(resultPays){
				const latPays = resultPays[0]['lat'];
				const lonPays = resultPays[0]['lon'];
				$.getJSON(UrlCapitale, function(resultCapitale){
					const latCapitale = resultCapitale[0]['lat'];
					const lonCapitale = resultCapitale[0]['lon'];
					var mymap = L.map('mapid').setView([latPays, lonPays], 5);
					L.tileLayer('https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png?access_token={accessToken}', {
						attribution: '&copy; Openstreetmap France | &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
					    maxZoom: 15,
					    id: 'mapbox.streets',
					    accessToken: 'pk.eyJ1IjoiY2xlbWVudHNlcnJhbm8iLCJhIjoiY2puNXJ0NW1qMTJxcTNwcnU4bzd6ODIweCJ9.S9udPKh8SXDxqF3Jpc_atg'
					}).addTo(mymap);
					var marker = L.marker([latCapitale, lonCapitale]).addTo(mymap);
				})
			})
			
			
			
			</script>
	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="resources/js/materialize.min.js"></script>
</body>
</html>
</body>
</html>