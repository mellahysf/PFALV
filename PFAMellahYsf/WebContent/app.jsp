<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Coursaline - formation videos et cours en ligne">
    <title>Coursaline - formation videos et cours en ligne</title>
    <link rel="stylesheet" href="assets/css/home.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="assets/scripts/index.js"></script>
</head>
<header>
  <%@include file="WEB-INF/frontOffice/header_app.jsp"%>
</header>
<body>
    <section id="slideShow">
        <div class="slideShow">
            
                <div class="slide">
                    
					<img src="assets/image/Slides/img1.jpg">
					
                </div>
                <div class="slide">
					<img src="assets/image/Slides/img2.jpg">
				
                </div>
            	<div class="slide">
					<img src="assets/image/Slides/img3.jpg">
                </div>
            	<div class="slide">
					<img src="assets/image/Slides/img4.jpg">
                </div>
                <div class="slide">
					<img src="assets/image/Slides/img5.jpg">
                </div>
                <div class="slide">
					<img src="assets/image/Slides/img6.jpg">
                </div>
            
            
        </div>
        <div class="offre">
            <h1>Le meilleur accompagnement pour apprendre</h1>
            <a href="login.jsp"><button id="but">Commencer</button></a>
        </div>
    </section>

    <section id="categories">
        <div class="titre">
            <h1>Les formations les plus populaires</h1>
            <hr>
        </div>
        <div id="left">
            <div class="grandCover">
                <img  class="backCover" src="assets/image/categories/python.jpg" alt="formez vous avec le langage python">
                <div class="titreFormation">
                    <div>
                    <img src="assets/image/categories/python-logo.png" alt="python">
                    <h2>Python</h2>
                    </div>
                </div>
            </div>
        </div>
        <div id="right">
            <div class="formation">
                <img class="backFormation" src="assets/image/categories/java.jpg" alt="programmez avec java">
                <div class="titreFormation cour1">
                        <div>
                            <img src="assets/image/categories/java-logo.png" alt="java">
                            <h2>Java</h2>
                        </div>
                </div>
            </div>
            <div class="formation">
                <img class="backFormation" src="assets/image/categories/android.jpeg" alt="developpement mobile pour android">
                <div class="titreFormation cour2">
                        <div>
                            <img src="././assets/image/categories/android-logo.png" alt="android">
                            <h2>Android</h2>
                        </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </section>
    <section id="statistique">
        <div class="statistique">
            <img src="assets/image/statistique/video.png" alt="auto-formation">
            <br>
            <strong>30</strong>
            <br>
            <strong>Videos</strong>
        </div>
        <div class="statistique">
            <img src="assets/image/statistique/tuto.png" alt="tutoriel PDF">
            <br>
            <strong>58</strong>
            <br>
            <strong>Cours</strong>
        </div>
        <div class="statistique">
            <img src="assets/image/statistique/astuces.png" alt="Astuces">
            <br>
            <strong>10</strong>
            <br>
            <strong>Astuces</strong>
        </div>
        <div class="clear"></div>
    </section>
    <section id="presentation">
        <div class="text">
            <H1>Comment ça marche ?</H1>
            <p> <b> Coursaline </b> se compose de trois éspaces : Administration , Proffesseur et Etudiant . Tous d'abord il faut s'inscrire à la plateforme pour s'authentifier , puis selon l'éspace choisie vous pouvez : <br> En tent qu'administrateur : Ajouter , modifier archiver et visualiser tous les cours. <br> En tent que professeur : Ajouter , modifier ou archiver ses propres cours ainsi de visualiser tous les cours.  <br> En tent qu'Etudiant : visualiser tous les cours et suivre une formation selon ses prérequis.  </p>
           
        </div>


        <div class="image">
            <img src ="assets/image/img.jpg" alt="">
        </div>

        <div class="clear"></div>

    </section>

</body>


<footer id="footer">
    <%@include file="WEB-INF/frontOffice/footer.jsp"%>
</footer>
</html>