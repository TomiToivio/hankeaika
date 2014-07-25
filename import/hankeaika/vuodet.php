<?php
	/* Skripti dokumenttien luomiseksi tietokantaan */

	/* MySQL-asetukset */
	$link = mysql_connect('', '', '');
      	mysql_select_db('');

	mysql_set_charset("utf8");

	$year = 1999;

	while ($year < 2015) {      
	      $query = "INSERT INTO document (id,title,year) VALUES ($year,'$year',$year)";
              mysql_query($query); 
	      $year++;
	}

mysql_close($link);
?>