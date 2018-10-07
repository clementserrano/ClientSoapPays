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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/demos.css">
</head>
<body>
	<h1>Gestion des Pays SOAP</h1>
	Pays : <%= pays.getNomPays() %> <br>
	Continent : <%= pays.getNomContinent() %> <br>
	Capitale : <%= pays.getNomCapitale() %> <br>
	Nombre d'habitants : <%= pays.getNbHabitants() %> <br>
	<a href="http://localhost:8080/ClientSoapPays/Controleur">Retour à l'accueil</a>
	<div id="map"></div>
	<script>
      function initMap() {
   	    var map = new google.maps.Map(document.getElementById('map'), {
        	zoom: 5
        });
    	  
    	var geocoder = new google.maps.Geocoder();
        var pays = "<%= pays.getNomPays() %>";
        var capitale = "<%= pays.getNomCapitale() %>";
        
        geocoder.geocode( {'address' : pays}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
            }
        });
        
        var marker = new google.maps.Marker({
          map: map,
          title: capitale
        });
        
        geocoder.geocode( {'address' : capitale}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
            	marker.setPosition(results[0].geometry.location);
            }
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1xkm3xIvK0DVr7eU9cbo58PHgJmjVO98&callback=initMap"
        async defer></script>
</body>
</html>
</body>
</html>