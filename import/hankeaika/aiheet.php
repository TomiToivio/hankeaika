<?php
	
	/* Skripti aiheiden luomiseksi tietokantaan eura.csv -tiedostosta */

	/* MySQL-asetukset */
	$link = mysql_connect('', '', '');
      	mysql_select_db('');

	mysql_set_charset("utf8");

    	$handle = fopen("eura.csv", "r");

	while (($data = fgetcsv($handle,0,"|")) !== FALSE) {
	      $aihe = $data[2];
      	      $paiva = $data[7];
      	      $unixaika = strtotime($paiva);
      	      $year = date("Y",$unixaika);
	      $doc_id = mysql_real_escape_string($doc_id);
      	      $query = "INSERT INTO subject(subject,doc_id) VALUES ('$aihe','$year')";
	}
mysql_close($link);
?>