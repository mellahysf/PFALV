<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Coursaline - formation videos et cours en ligne">
    <title>Ajoutez des cours pdf</title>
    <link rel="stylesheet" href="styles/formCours.css">

</head>


<?php
require_once ("../Models/GestionDB.php");
$gdb=new GestionDB();

?>
<?php
if(isset($_POST["titre"]))
{
    extract($_POST);
    $titreimg=str_replace(" ", "-",$titre);

    $imageCour=$titreimg."-".$_FILES["image"]["name"];
    copy($_FILES["image"]["tmp_name"],"../images/cours/{$imageCour}");
    $nomFichier=$titre."-".$_FILES["fichier"]["name"];
    copy($_FILES["fichier"]["tmp_name"],"../coursPDF/{$nomFichier}");
    $sql="insert into cours(titre,description,image,fichier,categorie,nbrPages,type) VALUES (?,?,?,?,?,?,?)";
    $data=array($titre,$description,$imageCour,$nomFichier,$categorie,$nbrPages,$type);
    $gdb -> updateDB($sql,$data);

    echo("<h1> cours ajouté avec succes</h1>");
}
?>
<header>
    <?php
    require_once "headerBack.php";
    ?>
</header>

<body>
<section id="formulaireCours">
    <div class="titre">
        <h1>Ajouter un cour</h1>
    </div>
    <form method="post" enctype="multipart/form-data">
        <label for="titre">Titre du cour </label><input type="text" placeholder="titre" name="titre" required><br><br>
        <label for="nbrpages">Nbr de pages/heures</label><input type="text" placeholder="nombre de pages ou d'heures" name="nbrPages" required><br><br>
        <label for="description">Description: </label><textarea id="description" placeholder="description" name="description" rows="6" required ></textarea><br><br>
        <label for="image">Image du cour</label><input type="file" name="image"><br><br>
        <label for="file">Importer cours</label><input type="file" name="fichier"><br><br>
        <label for="categorie">Ctégorie</label><select name="categorie" id="categorie">
            <option>&nbsp;</option>
            <?php
            $sql="select * from categorie ORDER BY categorie ASC ";
            $categories=$gdb->selectFromDB($sql);
            foreach ($categories as $categorie) {
                ?>
                <option value="<?php echo($categorie->idCategorie); ?>"> <?php echo($categorie->categorie) ?> </option>
                <?php
            }
            ?>
        </select><br><br>
        <label for="type">type du cour</label>
        <select name="type" id="type">
            <option>&nbsp;</option>
            <?php
            $sql="select * from typeCours ORDER BY type ASC ";
            $types=$gdb->selectFromDB($sql);
            foreach ($types as $type) {
                ?>
                <option value="<?php echo($type->id); ?>"> <?php echo($type->type) ?> </option>
                <?php
            }
            ?>
        </select>

        <input type="submit" value="Ajouter"><br><br>

    </form>
    <div class="clear"></div>

</section>
</body>

</html>

