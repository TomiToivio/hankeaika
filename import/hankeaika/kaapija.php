<?php 

/* Kaapii koko projektilistan ja kaikki projektikuvaukset eura.csv-tiedostoon. 
   Ajaminen saattaa kestää muutaman tunnin. */

    $handle = fopen("eura.csv", "w");
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "https://www.eura2007.fi/rrtiepa/projektilista.php?rahasto=ALL&type=xml");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $eura = curl_exec($ch);
    curl_close($ch);
    $eura = preg_replace("/&/", "", $eura);

    $projektilista = simplexml_load_string($eura);

    foreach ($projektilista->projekti as $projekti):
        $projektikoodi=$projekti->projektikoodi;
	$rahasto=$projekti->rahasto;
	$projektinnimi=$projekti->projektinnimi;
	$ohjelmaosio=$projekti->ohjelmaosio;
	$toimintalinjanumero=$projekti->toimintalinjanumero;
	$viranomainen=$projekti->viranomainen;
	$toiminnantila=$projekti->toiminnantila;
	$aloituspvm=$projekti->aloituspvm;
	$paattymispvm=$projekti->paattymispvm;
	$toteuttajannimi=$projekti->toteuttajannimi;
	$euvaltionrahoitusmyonnetty=$projekti->valtionrahoitusmyonnetty;
	$euvaltionrahoitustoteutunut=$projekti->euvaltionrahoitustoteutunut;
	$julkinenrahoitussuunniteltu=$projekti->julkinenrahoitussuunniteltu;
	$julkinenrahoitustoteutunut=$projekti->julkinenrahoitustoteutunut;
	$ch = curl_init();
    	curl_setopt($ch, CURLOPT_URL, "https://www.eura2007.fi/rrtiepa/projekti.php?projektikoodi=" . $projektikoodi);
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    	$kuvaus = curl_exec($ch);
    	curl_close($ch);
	$start=strpos($kuvaus, "<div");
      	$end=strpos($kuvaus, "<img",$start);
      	$kuvaus = substr($kuvaus,$start,$end-$start);
	$teksti = array($projektikoodi,$rahasto,$projektinnimi,$ohjelmaosio,$toimintalinjanumero,$viranomainen,$toiminnantila,$aloituspvm,$paattymispvm,$toteuttajannimi,$euvaltionrahoitusmyonnetty,$euvaltionrahoitustoteutunut,$julkinenrahoitussuunniteltu,$julkinenrahoitustoteutunut,$kuvaus);
	fputcsv($handle, $teksti,"|");
	echo $kuvaus;
    endforeach;

    fclose($handle);

?>