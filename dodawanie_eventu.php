<?php
	session_start();
?>
<html>
<head>   
<link href="kalendarz.css" type="text/css" rel="stylesheet" />
    <title>Grzegorz Domina</title>
</head>
<body>
<div id="dodawanie_eventu">

	<?php
		$rok1 = $_SESSION['currY'];
		$day=$_GET['day']-1;
		$month=$_GET['month'];
		$_SESSION['dzien']=$day;
		$_SESSION['miesiac']=$month;
		echo '<h2><b>Nowe wydarzenie w dniu '.$day.'.'.$month.'.'.$rok1.':</b></h2><br><br>';
	?>

	<form method="post" action="dodawanie.php">
		Godzina: <input type="time" name="godzina"><br><br>
		Nazwa wydarzenia: <input type="text" name="tytul"><br><br>
		Opis: <input type="text" name="opis"><br><br>
		<input type="checkbox" name="rekurencja" value="1" > W każdym tygodniu<br><br>
		<input  class="back" type="submit" name="submit" value="Nowe wydarzenie"><br><br>

	</form>

	<br><br>
	
	<?php 
		echo '<a class="back" href="index.php?month='.$month.'">Podgląd kalendarza</a>';
	?>


</div>



</body>
</html>     