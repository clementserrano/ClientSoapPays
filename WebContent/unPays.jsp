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
</head>
<body>
	<h1>Gestion des Pays SOAP</h1>
	Pays : <%= pays.getNomPays() %> <br>
	Continent : <%= pays.getNomContinent() %> <br>
	Capitale : <%= pays.getNomCapitale() %> <br>
	Nombre d'habitants : <%= pays.getNbHabitants() %> <br>
	<a href="http://localhost:8080/ClientSoapPays/Controleur">Retour à l'accueil</a>
</body>
</html>
</body>
</html>