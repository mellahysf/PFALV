<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="ma.ensao.entity.User" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catégories/Modules</title>
<link rel="stylesheet" href="././assets/css/catMod.css" type="text/css">
<script src="././assets/scripts/jquery.js"></script>
<script src="././assets/scripts/catMod.js"></script>
</head>
<header> 
	<%!
		User user = new User();
	%>
	<%
		user = (User) request.getSession(true).getAttribute("user");
		if (user.getStatus().equals("admin")){
			
		
	%>
	<%@include file="header_front_admin.jsp"%>
	<%
		}
		if(user.getStatus().equals("prof")){
			
		
	%>
	<%@include file="header_front_prof.jsp"%>
	<%} %>
</header>
<body>

	<div id="categories">
		<ul>
			<c:forEach items="${ categories }" var="categorie">
				<a href="Front?idCategorie=${categorie.id }" name="${categorie.archiver}"><li><img
						alt="${categorie.categorie }" src="assets/images/${categorie.icon }">
						${categorie.categorie }</li> </a>
			</c:forEach>
		</ul>
	</div>
	<div id="modules">
		<c:set var="categorie" value="true" />
		<c:forEach items="${ listModule }" var="module">
			<c:if test="${categorie==true}">
				<h2 >Liste des modules de la categorie ${ module.categorie }</h2>
				<c:set var="categorie" value="false" />
			</c:if>
			<a href="Matiere?module=${module.id }" name="${module.archiver}">
				<div class="module">
					<img src="assets/images/${module.image }" alt="${ module.module }">
					<h3>${module.module }</h3>
					<p>${module.description }</p>
				</div>
			</a>
		</c:forEach>
	</div>
	<div class="clear"></div>
</body>
<footer id="footer"> 
	
	<%@include file="footer.jsp"%>
</footer>
</html>