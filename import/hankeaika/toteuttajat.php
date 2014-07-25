<?php
	/* Toteuttajat tietokantaan */

	/* Tee MySQL-asetukset */
	$link = mysql_connect('', '', '');
      	mysql_select_db('');
	
	mysql_set_charset("utf8");

	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, "https://www.eura2007.fi/rrtiepa/projektilista.php?rahasto=ALL&type=xml");
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	$eura = curl_exec($ch);
	curl_close($ch);

    	$projektilista = simplexml_load_string($eura);

    	foreach ($projektilista->projekti as $projekti) {
		$toteuttajannimi=$projekti->toteuttajannimi;
		$toteuttajannimi = mysql_real_escape_string($toteuttajannimi);

		$olemassa = mysql_query("SELECT * FROM speaker WHERE first_name='$toteuttajannimi'");

		if ((mysql_num_rows($olemassa))==0) {
		   mysql_query("INSERT INTO speaker (first_name) VALUES ('$toteuttajannimi')");	
		   }
		   }
mysql_close($link);
?>