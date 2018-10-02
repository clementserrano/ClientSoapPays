<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion des Pays SOAP</title>
</head>
<body>
	<h1>Gestion des Pays SOAP</h1>
	<h3>Entrez ci-dessous la destination de vos rêves !</h3>
	<form method="post" action="Controleur">
		<select name="pays" size="1" style="width:200px">
			<c:forEach items="${listePays}" var="pays">
				<option value="${pays.getNomPays()}">${pays.getNomPays()}</option>
			</c:forEach>
		</select> <input type='submit' value="Rechercher">
	</form>
</body>
</html>
</body>
</html>