<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modules/Matiéres</title>
<link rel="stylesheet" href="././assets/css/modMat.css" type="text/css">
<script src="././assets/scripts/jquery.js"></script>
<script src="././assets/scripts/catMod.js"></script>
<title>etudiant</title>
</head>
<header> 
	
	<%@include file="header_front_admin.jsp"%>

</header>
<body>
	
		<div id="modules">
			<ul>
				<c:forEach items="${ listeModules }" var="module">


				<a href="Matiere?module=${module.idModule }" name="${module.archiver}"><li><img alt="${module.module }"
					src="assets/images/${module.image }">
				${module.module }</li>
				
				</a>

			</c:forEach>
			</ul>
		</div>
		
		<div id="matieres">
			<c:set var="module" value="true" />
			<c:forEach items="${ listeMatieres }" var="matiere">
				<c:if test="${module==true}">
					<h2>Liste des matieres de module ${ matiere.module }</h2>
					<c:set var="module" value="false" />
				</c:if>
				<a href="Chapitre?matiere=${matiere.id }" name="${matiere.archiver}" >
					<div class="matiere">
						<img src="assets/images/${matiere.icon }" alt="${ matiere.matiere }">	
						<h3>${matiere.matiere }</h3>
						<p>${matiere.description }</p>
					</div>
				</a>
					
			
			</c:forEach>
		</div>
	<div class="clear"></div>

</body>
<footer> 
	
	<%@include file="footer.jsp"%>
</footer>

</html>


