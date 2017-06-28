<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>etudiant</title>
<link href="././assets/css/chapitre.css" type="text/css" rel="stylesheet">
<script src="././assets/scripts/jquery.js"></script>
<script src="././assets/scripts/catMod.js"></script>
</head>


<header> 

	<%@include file="header_front_admin.jsp"%>

</header>
<body>
	<section>
	
	
		<h1>Pour accéder a la matiere ${chapitre.matiere } veuillez repondre au questions suivantes:</h1>
		
		
				<table>
					<c:forEach items="${listeChapitre }"  var="chapitre">
						<tr name="${chapitre.archiver}">
							<td>${chapitre.question }?</td>
							<td><button id="oui" class="butClass">Oui</button></td>	
							<td><button><a href="cours/${chapitre.fichier }" class="butClass">Non</a></button></td>
						</tr>
					</c:forEach>
				</table>
				
				
				
			
		
		<h1>Accéder à la matiére : </h1>  <button id="but"><a href="cours/${requestScope.cours}">Commancer</a></button>
	</section>
	
</span>	
</body>
<footer> 
	
	<%@include file="footer.jsp"%>
</footer>
</html>