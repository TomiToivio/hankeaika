<?php
	/* Projektit eura.csv-tiedostosta tietokantaan */

	/* MySQL-asetukset */
	$link = mysql_connect('', '', '');
      	mysql_select_db('');

	mysql_set_charset("utf8");

    	$handle = fopen("eura.csv", "r");

	while (($data = fgetcsv($handle,0,"|")) !== FALSE) {
	      $doc_id = $data[0];
      	      $paiva = $data[7];
      	      $unixaika = strtotime($paiva);
      	      $paivamaara = date("Y-m-d",$unixaika);
      	      $year = date("Y",$unixaika);
      	      $speaker_first_name = $data[5];
      	      $text = strip_tags($data[14]);
      	      $text = preg_replace("/\n/", " ", $text);
      	      $text = preg_replace("/\r/", " ", $text);
      	      $text = strip_tags($text);
      	      $text = mysql_real_escape_string($text);
      	      $text = stripslashes($text);

      	      $speaker_id = mysql_query("SELECT * FROM speaker WHERE first_name='" . $speaker_first_name . "'");
      	      $speaker_id = mysql_fetch_row($speaker_id);
      	      $speaker_id = $speaker_id[0];

      	      $query = "INSERT INTO action (text,speaker_id,speaker_first_name,date,year,doc_id,speaker_number) VALUES ('$text',$speaker_id,'$speaker_first_name','$paivamaara',$year,'$year',$speaker_id)";
    	      mysql_query($query); 
}
mysql_close($link);
?>