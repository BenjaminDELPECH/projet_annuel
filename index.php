<?php session_start();
$_SESSION['title']="Carte Interactive";
?>


<?php include('header.php');?>
	<button class=" 
	mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect button-1 color-t" onclick="window.location='menujeux_fr.php'"
			style="margin-top:10px;">Retour</button>
	
	<div class="mdl-cell mdl-cell--5-col center">
	<?php include('form_changer_langue.php');?>
	
	</div>
  <?php include('footer.php');?>