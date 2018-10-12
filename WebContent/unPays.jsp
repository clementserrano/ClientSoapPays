<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="service.ServiceStub.Pays" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<% Pays pays = (Pays) request.getAttribute("pays"); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%= pays.getNomPays() %></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css"
   integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
   crossorigin=""/>
<script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"
integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA=="
crossorigin=""></script>
</head>
<body>
	<h1>Gestion des Pays SOAP</h1>
	Pays : <%= pays.getNomPays() %> <br>
	Continent : <%= pays.getNomContinent() %> <br>
	Capitale : <%= pays.getNomCapitale() %> <br>
	Nombre d'habitants : <%= pays.getNbHabitants() %> <br>
	<a href="http://localhost:8080/ClientSoapPays/Controleur">Retour à l'accueil</a>
	<div id="mapid"></div>
	<script>
		const UrlPays='https://nominatim.openstreetmap.org/search?q=<%= pays.getNomPays() %>&format=json&limit=1';
		const UrlCapitale='https://nominatim.openstreetmap.org/search?q=<%= pays.getNomCapitale() %>&format=json&limit=1';
		
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
</body>
</html>
</body>
</html>