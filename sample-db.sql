-- MySQL dump 10.13  Distrib 5.1.69, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: puh2
-- ------------------------------------------------------
-- Server version	5.1.69-0ubuntu0.11.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `lang` enum('fi','se') CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `doc_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `pos` int(11) NOT NULL,
  `abs_pos` int(11) NOT NULL,
  `speaker_id` int(11) NOT NULL,
  `words_found` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `speaker_group` varchar(16) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `speaker_last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `speaker_first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `speaker_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `docId` (`doc_id`),
  KEY `speakerId` (`speaker_id`),
  KEY `subject_id` (`subject_id`),
  KEY `speakerId_date_absPos` (`speaker_id`,`date`,`abs_pos`)
) ENGINE=MyISAM AUTO_INCREMENT=137280 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135522,'Arvoisa puhemies! Jos oikein kuulin, edustaja Lindström perussuomalaisen ryhmän puheenvuorossa totesi, että ministereitä kiinnostavat työpaikat Euroopassa, ja sehän pitää ihan paikkansa. Me tarvitsemme Eurooppaan paljon lisää työpaikkoja. Erityisesti nuorisotyöttömyys on vakava ongelma. Itseäni jäi vähän askarruttamaan, mikä asia kiinnostaa perussuomalaisen puolueen puheenjohtajaa, edustaja Soinia, mutta sitähän me emme tänään saakaan tässä salissa valitettavasti kuulla. (Välihuutoja)\n\nTässä salissa on yritetty hakea ratkaisua siihen, miten voidaan kattaa 3 miljardin vaje valtiontaloudessa. Kuuntelin edustaja Lindströmin puhetta, ja hän ehdotti ratkaisuksi muun muassa luopumista windfall-verosta. Tiedoksi edustaja Lindströmille: jos luovutaan windfall-verosta, se ei kata tätä vajetta vaan kasvattaa sitä vajetta. Edustaja Lindström esitti myös, että turpeen tukea kasvatetaan. Sekään ei kata tätä vajetta vaan kasvattaa sitä vajetta. (Eduskunnasta: Höpö höpö!) Nyt kannustaisin kaikkia kollegoita miettimään keinoja kuroa umpeen tätä vajetta eikä kasvattaa sitä.','fi','3-2014','2014-02-05',43,43,77,119,17970,2014,'vihr','Tynkkynen','Oras',846);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135531,'Arvoisa puhemies! Kestävyysvajeessa on 8—9 miljardin euron aukko. Hallitus on lupaillut, mitään ei ole käytännössä tehnyt sen kuromiseksi. Julkisen talouden luvatussa tasapainottamisessa on 3 miljardin aukko. Tämä on tilanteessa, jossa Suomen kansantalous supistuu, vienti tulee alas ja monella muullakin mittarilla työttömyys kasvaa rajusti, monilla muilla mittareilla Suomen talous eriytyy muun Euroopan unionin tilanteesta. Me menemme alas kaiken aikaa.\n\nHallitus ei pysty tässä tilanteessa itse sanomaan, mitä tuon 3 miljardin tasapainottomuuden suhteen pitäisi tehdä. No, ei tietystikään toteuttaa sitä ensi vuonna. Minua ihmetyttää, miksei näissä oloissa, (Välihuutoja sosialidemokraattien ryhmästä — Ben Zyskowicz: Onko tämä keskustan kanta?) miksi ette te pysty jo tässä tilanteessa sanomaan, että ette te voi 3 miljardin euron lisäsopeutusta tehdä. Miksi te ette pysty sitä sanomaan? Jos jokin on saamattomuutta ja tavallaan tietämättömyyttä siitä, miten pitäisi mennä, niin nimenomaan se, että te ette pysty tätä asiaa sanomaan.\n\nMitä tulee siihen, mitä pitäisi tehdä: kasvua, kasvua, työtä suomalaisille yrittäjyyden hyväksi ja niin poispäin. Ja mitä tulee energiaan: Kun kivihiilen hinta maailmanmarkkinoilla tuli alas, mitä teki Suomen hallitus? Heikensi suomalaisen puun kilpailukykyä, otti sen tuesta kolmanneksen pois (Puhemies koputtaa) ja nosti turpeen veron sellaiseksi, että puu ja turve eivät kilpaile kivihiilen kanssa. (Puhemies: Jaha, nyt aika on täynnä!) Ja, ympäristöministeri, Suomeen tuodaan erittäin paljon... [Puhemies antoi puheenvuoron seuraavalle puhujalle.] (Ben Zyskowicz: Pekkarinen keskustan ryhmän johtoon! — Naurua)','fi','3-2014','2014-02-05',52,52,101,170,17970,2014,'kesk','Pekkarinen','Mauri',212);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135538,'Arvoisa puhemies! Olin radio-ohjelmassa edustaja Eero Lehden kanssa ja totesin suurin piirtein tähän tapaan, että minun ymmärtääkseni pohjassa vuodelle 2015 on noin miljardin euron tasapainottamistoimet jo valmiiksi. Jos siihen päälle lätkästään 3 miljardia lisää, niin sellaisen sopeutuksen tekeminen yhtenä vuonna on aivan mahdoton asia. En missään tapauksessa kannattanut sitä. (Ben Zyskowicz: Kuulitteko, Tiilikainen?)\n\nTätä taustaa vasten, mitä nyt tässä sanoin, minulle on aivan käsittämätöntä, että hallitus ei pysty sanomaan vielä, miten se juttu oikein on: Pidättekö te kiinni edelleen siitä, että se 4 miljardia pitää ensi vuonna sopeuttaa? Eikö nyt jo tämän keskustelun jälkeen voisi jonkunlaista vastausta teiltä odottaa? \n\nMitä tulee sitten edustaja Skinnariin, koko Vanhasen hallitusten ajan, joka vuosi vuodesta 2003 lähtien vuoteen 2009 saakka, hallitus pystyi ylijäämäiseen julkiseen talouteen. Minulla on tässä kopio siitä. Kun Lehman Brothersin syöksy tuli, ei tietystikään pystytty, eikä tarvinnutkaan. Mutta nyt, kun te olette antanut lupauksia ja kun se Suomelle kaikkein edunmukaisinta on, niin vähitellen nyt pitäisi kasvu saada aikaan ja konkreettisia esityksiä siitä, miten, joutaisi myös hallituksen kertoa.','fi','3-2014','2014-02-05',59,59,101,165,17970,2014,'kesk','Pekkarinen','Mauri',212);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135632,'Arvoisa puhemies! Monissa maissa Euroopassa työttömyys on vähenemään päin, talous on lievässä kasvussa. Tämä on se toimintaympäristö.\n\nArvoisa pääministeri, vuoden aikaan, viime vuoden aikaan, TEMin tilastojen mukaan työttömien määrä lisääntyi Suomessa lähes tarkalleen 50 000 ihmisellä. Se on valtava lisäys yhden vuoden aikaan.\n\nJa sitten toinen asia. Nuorten alle 25-vuotiaitten työttömien määrä lisääntyi runsaasta 34 000 työttömästä 44 000 työttömään. Nuorisotakuun, jota te olette mainostanut, jonka terän piti taittaa nuorisotyöttömyys, voimassa ollen nuorten työttömien määrä on lisääntynyt 10 000:lla, itse asiassa yli neljänneksellä. Nyt se kysymys kuuluu: mitä toimia, tai onko hallitus ylipäänsä valmis toimiin, joilla pikaisesti taitetaan tämä rujo työttömyyskehitys Suomessa? Me emme kestä tätä kauan. Julkisella sektorilla (Puhemies koputtaa) tiedetään, miten käy yksityisellä palvelusektorilla. Mikä on teidän vastauksenne?','fi','4-2014','2014-02-06',19,19,101,103,17977,2014,'kesk','Pekkarinen','Mauri',212);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135636,'Arvoisa puhemies! Hyvä niin. Te maalaatte kuvan, että voisi olla vielä pahemmin, ja saattaa ollakin niin, ilman nuorisotakuuta. (Jukka Gustafsson: Juuri näin!) Mutta ei se hyvä ole, jos 10 000 nuorella, alle 25-vuotiaalla nuorella, on nuorisotakuun voimassa ollen nuorten työttömien määrä lisääntynyt. Se kysymys kuuluu, ministeri, teille, olisiko aika vähän ruuvata uuteen asentoon tuota nuorisotakuuta ja tehdä siitä iskevämpi esimerkiksi niin, että entistä suurempi määrä siitä väestä voitaisiin rekrytoida suoraan yrityksiin yrityksiä siinä auttaen, näitä nuoria siinä auttaen, molempia auttaen. Monia muitakin konsteja on parantaa juoksua, ja sitä on parannettava.','fi','4-2014','2014-02-06',23,23,101,92,17977,2014,'kesk','Pekkarinen','Mauri',212);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135665,'Arvoisa puhemies! Tekijänoikeuslaki tunnetusti jakaa mielipiteitä. Karkeasti keskustelussa on jaettu ihmiset kahteen leiriin: toisaalta kulttuurin tuottajiin, toisaalta kulttuurin kuluttajiin, siis tekijöihin ja käyttäjiin. Tällainen vastakkainasettelu on kuitenkin vanhentunutta. Se on harhaanjohtavaa, ja se on tämän keskustelun kannalta vahingollista. Ilman tekijöitä ei tietenkään ole käyttäjiä millekään kulttuurin tuotteille. Toisaalta aika harva kulttuurin tuotos saavuttaa suuria yleisöjä ja sitä kautta tuo tuloja tekijöille, ellei niitä käyttäjiäkään ole. Nykyään onneksi yhä useammin tekijät toimivat vuoropuhelussa ja yhteistyössä käyttäjien kanssa, ja toisaalta käyttäjät monissa tilanteissa saattavat olla itse tuottamassa kulttuuriin sisältöjä.\n\nNo, riippumatta siitä, mihin leiriin tai koulukuntaan itse kukin tässä keskustelussa itsensä lukee, niin voisin kuvitella, että on tunnistettavissa tekijänoikeuslainsäädännössä joitakin yleisiä periaatteita, joita aika laajalti voitaisiin yhdessä kannattaa. Ensimmäinen on nähdäkseni selkeys. Nykyinen tekijänoikeussääntely on aika vaikea hahmottaa jopa parkkiintuneelle juristille, saatikka sitten jollekin tavalliselle koululaiselle tai kotiäidille. Klassinen esimerkki tästä on vaikkapa YouTube-videot. Jos YouTube-videoita katsoo suoratoistona, siis suoraan verkossa, niin se on yleisimmän tulkinnan mukaan ihan laillista. Mutta jos saman videon upottaa vaikka omaan blogiinsa tai lataa sen saman videon koneelleen, niin jälleen yleisimmän tulkinnan mukaan se saattaakin olla laitonta. Sanon nimenomaan \"yleisimmän tulkinnan mukaan\", koska jopa asiantuntijoiden kesken on vähän eriäviä näkemyksiä siitä, mikä on laitonta, mikä laillista. No, yleensäkin on aika hankalaa, jos yhteiskunnassa on epäselvää, mitä saa tehdä ja mitä ei saa tehdä, ja koko ajan joutuu miettimään, missä se laillisen ja laittoman raja menee. Sen takia varmaankin ainakin selkeydessä on parantamisen varaa tekijänoikeuslaissa.\n\nToinen luultavasti aika laajalti jaettu periaate voisi olla tehokkuus sanan siinä merkityksessä, että tekijänoikeuslaki saavuttaa sille asetetut tavoitteet mahdollisimman vähäisellä byrokratialla ja niin, että sen toteuttaminen on kaikille osapuolille mahdollisimman helppoa. Tämäkään periaate ei kauhean hyvin nykylainsäädännössä valitettavasti toteudu. Olen itse esimerkiksi jättänyt kirjallisen kysymyksen siitä, minkälaisia korvauksia peritään DJ:ltä. Meillä on sellainen tilanne, että pahimmassa tapauksessa DJ, joka soittaa tuolla jossain klubissa tai bileissä musiikkia levyltä, saattaa joutua maksamaan neljä eri kertaa samasta soittamastaan kappaleesta, ja oli sitten mitä mieltä yleensä tekijänoikeuksien korvausten tasosta ja laajuudesta, niin se, että samasta teoksesta voi joutua maksamaan neljä eri kertaa, tuskin on kauhean järkevää.\n\nNo, kolmas, toivoisin, aika yleisesti tunnustettu ja toivottu periaate voisi olla kohtuus, josta tasavallan presidenttikin hyvin omassa avauspuheenvuorossaan taannoin puhui. Kohtuus ei ole tietenkään helppo määrittää. Varmasti riippuen siitä, millä puolella neuvottelupöytää istuu, se näkemys kohtuudesta voi olla aika erilainen. Mutta uskon, että osa nykylainsäädännön piirteistä varmaan useimmista meistä tuntuu aika lailla kohtuuttomalta. (Puhemies: 3 minuuttia!) — Anteeksi, olin luullut, että on 5 minuutin raja.','fi','4-2014','2014-02-06',2,52,77,341,17981,2014,'vihr','Tynkkynen','Oras',846);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135690,'Arvoisa puhemies! Niin kuin ministeri Arhinmäkikin totesi, tämä on kiistainalainen aihe, ja silloin kannattaa pää pitää tietysti kylmänä, ja ratkaisu ei välttämättä ole toistaa yhden osapuolen näkemyksiä ihan kritiikittä. \n\nAika moni kollega rohkeasti väittää täällä, että aloitteen allekirjoittajat eivät ymmärrä, mitä ovat tukemassa. Muistuttaisin, että kun te näin sanotte, te aliarvioitte paitsi näitä allekirjoittajia niin myös teidän omia nuorisojärjestöjänne. Tämän kansalaisaloitteen takana ovat muun muassa perussuomalaisten nuorisojärjestö, vasemmistoliiton nuorisojärjestö, sosialidemokraattien nuorisojärjestö, Kokoomusnuoret, RKP:n nuoret, Vihreät nuoret ja niin edelleen, ja jos te ette luota kansalaisiin, niin koettakaa nyt edes luottaa omiin nuorisojärjestöihinne siinä, että joku juju tässä kansalaisaloitteessa saattaa olla taustalla. \n\nSamoin kannustan siihen, että jos olette eri mieltä tämän kansalaisaloitteen esityksistä, niin tuokaa rohkeasti pöytään omia ehdotuksianne, miten näitä tekijänoikeuslain ongelmia voidaan ratkaista omasta mielestänne paremmin, eikä vain niin, että täällä niitataan ja kumotaan näitä kansalaisaloitteessa tehtyjä esityksiä. ','fi','4-2014','2014-02-06',27,77,77,129,17981,2014,'vihr','Tynkkynen','Oras',846);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135707,'Arvoisa puhemies! Näin alkuun haluan todeta väärinkäsitysten välttämiseksi, että olen itse saanut elantoni luovasta työstä.\n\nTietääkseni en riko tekijänoikeuslakia, en ainakaan tarkoituksellisesti, mutta koska laki on jossain määrin epäselvä, niin tahattomista rikkomuksista en voi mennä takuuseen, ja maksan itse erittäin mielelläni laillisista sisältöpalveluista. Perusajatus, että tekijälle kuuluu korvaus työstä, on ehdottoman kannatettava, ja sitä haluan itsekin tukea. Samalla pidän kuitenkin edelleen ilmeisenä, että nykyisen kaltaisessa tekijänoikeuslaissa on merkittäviä ongelmia.\n\nJoitakin kommentteja tähänastiseen keskusteluun.\n\nEdustajat Pekonen ja Alatalo esittivät, että kansalaisaloitteessa on kirjoitettu väärää tietoa lataamisesta. He eivät kuitenkaan yksilöineet sitä, missä kohtaa ja mitä virheellistä tietoa sieltä löytyy, minkä takia siihen väitteeseen on vähän vaikea pureutua.\n\nEdustaja Erkki Virtanen toivotti arvokkaita hautajaisia kansalaisaloitteelle. Kun aika moni edustaja tässä salissa on päinvastoin toivonut asiallista käsittelyä kansalaisaloitteille, on ehkä vähän ennenaikaista lähteä arvokkaita hautajaisia järjestämään. Itse toivon, että valiokunta ja suuri sali aikanaan paneutuvat tähän kansalaisaloitteeseen perusteellisesti, ja sitten, jos hautajaiset ovat aloitteelle paikallaan, niin sitten ne hautajaiset pidetään, mutta ettei nyt ennenaikaisesti näitä hautajaisia aleta jo järjestelemään.\n\nEdustaja Mäkisalo-Ropponen arvioi, että tämän kansalaisaloitteen läpi mentyä opetusmateriaalia voisi hyödyntää vapaasti ja se johtaisi siihen, että sitä ei kannattaisi tuottaa. Mutta itse asiassa tässä kansalaisaloitteessa todetaan, että muihin kuin opetus- tai tutkimustarkoituksiin tehtyjen teosten käyttäminen opetus- tai tutkimustarkoituksiin on sallittua. Eli jos vaikka edustaja Rauhala on tehnyt hyvän oppikirjan sairaanhoito-opiskelijoille, niin edelleenkään sitä ei kuka tahansa voisi noin vain kopioida korvauksetta, vaan edelleenkin siitä kuuluisi asiaankuuluva korvaus edustaja Rauhalalle.\n\nEdustaja Alatalo esitti, että tekijänoikeudet eivät estä tutkimuskäyttöä. Voisin kuvitella ja toivon, että näin valtaosin onkin, mutta meillä on myös tapauksia, joissa tutkimusta hankaloittaa nykyinen tekijänoikeussääntely. Yksi tunnettu esimerkki on vaikka se, että jos kielentutkija haluaa käydä läpi laajan tekstimassan ja sen laajan tekstimassan perusteella tunnistaa joitakin ilmiöitä — vaikkapa nyt ajankohtaisena esimerkkinä, että milloin \"alkaa tekemään\" on voittanut \"alkaa tehdä\" -muodon joissakin tekstimassoissa — niin se edellyttää sitä, että niitä tekstimassoja voi aika laajalti ottaa tutkimuskäyttöön. Ainakin joidenkin tutkijoiden mukaan nykyinen tekijänoikeussääntely ei tällaista käyttöä mahdollista.\n\nEdustaja Mattila oli sitä mieltä, että kansalaisaloitteen rajanveto luvallisen ja luvattoman parodian välillä on ongelmallista ja tulkinnanvaraista, mutta kyllä tämä nykyinenkin oikeustila parodian suhteen on vähintäänkin epäselvä. Eli rajanveto-ongelmia meillä varmaan on nyt ja tulevaisuudessa, mutta me voimme lainsäätäjinä yrittää vaikuttaa siihen, mihin kohtaan se raja vedetään.','fi','4-2014','2014-02-06',44,94,77,316,17981,2014,'vihr','Tynkkynen','Oras',846);
INSERT INTO `action` (`id`, `text`, `lang`, `doc_id`, `date`, `pos`, `abs_pos`, `speaker_id`, `words_found`, `subject_id`, `year`, `speaker_group`, `speaker_last_name`, `speaker_first_name`, `speaker_number`) VALUES (135710,'Arvoisa puhemies! Ensinnäkin edustaja Heinoselle: Kansalaisaloitettahan voi kannattaa ainakin kahdella eri perusteella. Ensimmäinen on se, että kannattaa jokaista kansalaisaloitteen esitystä pilkkua ja pistettä myöten, tai voi kannattaa kansalaisaloitetta sen takia, että saa tärkeäksi kokemansa asian meidän kansanedustajien käsittelyyn. Uskon, että moni tämänkin kansalaisaloitteen kannattaja olisi tyytyväinen, jos eduskunta asiaa perusteellisesti punnittuaan päätyisi hylkäämään osan kansalaisaloitteen esityksistä mutta hyväksyisi osan.\n\nMutta, arvoisa puhemies, tänään on salissa oltu paljosta eri mieltä mutta nähdäkseni myös paljosta samaa mieltä. Ensinnäkin täällä aika lailla kaikki tuntuivat olevan sitä mieltä, että on tärkeää keskustella tekijänoikeuksista myös täällä eduskunnassa. Tämän takia haluankin kiittää kansalaisaloitteen tekijöitä, koska, kiitos heidän, me saamme tätä keskustelua nyt tänään täällä käydä.\n\nToiseksi, kaikki tuntuvat olevan yhtä mieltä siitä, että nykyisessä tekijänoikeuslaissa on puutteita. Mitä puutteita ja kuinka vakavia, siitä varmasti meillä on erilaisia näkemyksiä, mutta puutteita yhtä kaikki löytyy, ja niihin on hyvä etsiä ratkaisuja.\n\nUseimmissa puheenvuoroissa tuntuu vallitsevan myös sellainen näkemys, että tässä kansalaisaloitteessa kaikista mahdollisista puutteistaan huolimatta on myös elementtejä, jotka ansaitsevat mahdollisesti tulla hyväksytyksi. Esimerkiksi tämä kansalaisaloitteen kohtuullisuusesitys kuulosti hyvinkin samankaltaiselta kuin mitä ministeri Arhinmäki kuvaili, että hän on pyytänyt tekijänoikeuslain uudistusta varten selvittämään.\n\nYhden asian haluan vielä tuoda esiin. Osa näistä kansalaisaloitteen esityksistä on sellaisia tekijänoikeuslainsäädännön piirteitä, jotka jo ovat joissakin maissa käytössä tai joita parhaillaan harkitaan joissakin muissa maissa hyväksyttäviksi. Sen takia uskon, että yksi tapa paneutua tähän kansalaisaloitteeseen voisi olla tehdä kansainvälistä vertailua ja katsoa, miten joissakin muissa maissa tekijänoikeuksien turvaa on järjestetty.','fi','4-2014','2014-02-06',47,97,77,208,17981,2014,'vihr','Tynkkynen','Oras',846);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_subscription`
--

DROP TABLE IF EXISTS `action_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `speaker_id` int(11) DEFAULT NULL,
  `speaker_group` varchar(16) DEFAULT NULL,
  `keywords` longtext,
  `latest_action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_subscription`
--

LOCK TABLES `action_subscription` WRITE;
/*!40000 ALTER TABLE `action_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add permission',1,'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (2,'Can change permission',1,'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (3,'Can delete permission',1,'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (4,'Can add group',2,'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (5,'Can change group',2,'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (6,'Can delete group',2,'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (7,'Can add user',3,'add_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (8,'Can change user',3,'change_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (9,'Can delete user',3,'delete_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (10,'Can add message',4,'add_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (11,'Can change message',4,'change_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (12,'Can delete message',4,'delete_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (13,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (14,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (15,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (16,'Can add session',6,'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (17,'Can change session',6,'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (18,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (19,'Can add site',7,'add_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (20,'Can change site',7,'change_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (21,'Can delete site',7,'delete_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (22,'Can add action',9,'add_action');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (23,'Can change action',9,'change_action');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (24,'Can delete action',9,'delete_action');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (25,'Can add speaker',8,'add_speaker');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (26,'Can change speaker',8,'change_speaker');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (27,'Can delete speaker',8,'delete_speaker');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (28,'Can add word',10,'add_word');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (29,'Can change word',10,'change_word');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (30,'Can delete word',10,'delete_word');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (31,'Can add word occurrence',11,'add_wordoccurrence');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (32,'Can change word occurrence',11,'change_wordoccurrence');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (33,'Can delete word occurrence',11,'delete_wordoccurrence');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (34,'Can add log entry',12,'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (35,'Can change log entry',12,'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (36,'Can delete log entry',12,'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (37,'Can add document',13,'add_document');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (38,'Can change document',13,'change_document');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (39,'Can delete document',13,'delete_document');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES (1,'naapuri','Tuomas','Salo','tuomas.salo@iki.fi','(change-this-to-a-hash)',1,1,1,'2012-01-15 00:03:19','2011-10-13 15:41:08');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_swedish_ci,
  `object_repr` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (1,'permission','auth','permission');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (2,'group','auth','group');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (3,'user','auth','user');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (4,'message','auth','message');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (5,'content type','contenttypes','contenttype');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (6,'session','sessions','session');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (7,'site','sites','site');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (8,'speaker','taysistunto','speaker');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (9,'action','taysistunto','action');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (10,'word','taysistunto','word');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (11,'word occurrence','taysistunto','wordoccurrence');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (12,'log entry','admin','logentry');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (13,'document','taysistunto','document');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (14,'subject','taysistunto','subject');
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (15,'follower','taysistunto','follower');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES (1,'puheenvuorot.kansanmuisti.fi','Puheenvuorot-sivusto');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `weight` float NOT NULL,
  `title` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `details_c` text COLLATE utf8_swedish_ci NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` (`id`, `date`, `weight`, `title`, `link`, `details_c`, `year`) VALUES ('3-2014','2014-02-05',24,'Täysistunto','','{\"action_count\":\"134\",\"speakers\":[{\"Weight\":5,\"first_name\":\"Jyrki\",\"group\":\"kok\",\"id\":\"56\",\"last_name\":\"Katainen\",\"number\":\"571\"},{\"Weight\":2,\"first_name\":\"Kimmo\",\"group\":\"kesk\",\"id\":\"59\",\"last_name\":\"Tiilikainen\",\"number\":\"790\"},{\"Weight\":2,\"first_name\":\"Paula\",\"group\":\"kok\",\"id\":\"113\",\"last_name\":\"Risikko\",\"number\":\"809\"},{\"Weight\":1,\"first_name\":\"Kalle\",\"group\":\"kok\",\"id\":\"177\",\"last_name\":\"Jokinen\",\"number\":\"1056\"},{\"Weight\":1,\"first_name\":\"Jari\",\"group\":\"ps\",\"id\":\"93\",\"last_name\":\"Lindström\",\"number\":\"1146\"},{\"Weight\":1,\"first_name\":\"Erkki\",\"group\":\"vas\",\"id\":\"49\",\"last_name\":\"Virtanen\",\"number\":\"793\"},{\"Weight\":1,\"first_name\":\"Timo\",\"group\":\"kok\",\"id\":\"9\",\"last_name\":\"Heinonen\",\"number\":\"967\"},{\"Weight\":1,\"first_name\":\"Jutta\",\"group\":\"sd\",\"id\":\"83\",\"last_name\":\"Urpilainen\",\"number\":\"808\"},{\"Weight\":1,\"first_name\":\"Lenita\",\"group\":\"kok\",\"id\":\"75\",\"last_name\":\"Toivakka\",\"number\":\"932\"},{\"Weight\":1,\"first_name\":\"Hanna\",\"group\":\"sd\",\"id\":\"129\",\"last_name\":\"Tainio\",\"number\":\"1112\"},{\"Weight\":1,\"first_name\":\"Outi\",\"group\":\"vihr\",\"id\":\"70\",\"last_name\":\"Alanko-Kahiluoto\",\"number\":\"914\"},{\"Weight\":1,\"first_name\":\"Anna\",\"group\":\"vas\",\"id\":\"183\",\"last_name\":\"Kontula\",\"number\":\"1155\"},{\"Weight\":1,\"first_name\":\"Mikaela\",\"group\":\"r\",\"id\":\"62\",\"last_name\":\"Nylander\",\"number\":\"769\"},{\"Weight\":1,\"first_name\":\"Leena\",\"group\":\"kd\",\"id\":\"142\",\"last_name\":\"Rauhala\",\"number\":\"593\"},{\"Weight\":1,\"first_name\":\"Markku\",\"group\":\"kok\",\"id\":\"27\",\"last_name\":\"Eestilä\",\"number\":\"1094\"},{\"Weight\":1,\"first_name\":\"Susanna\",\"group\":\"sd\",\"id\":\"187\",\"last_name\":\"Huovinen\",\"number\":\"565\"},{\"Weight\":1,\"first_name\":\"Mikko\",\"group\":\"kesk\",\"id\":\"12\",\"last_name\":\"Savola\",\"number\":\"1106\"},{\"Weight\":1,\"first_name\":\"Hanna\",\"group\":\"ps\",\"id\":\"6\",\"last_name\":\"Mäntylä\",\"number\":\"1088\"},{\"Weight\":1,\"first_name\":\"Kimmo\",\"group\":\"ps\",\"id\":\"4\",\"last_name\":\"Kivelä\",\"number\":\"1138\"},{\"Weight\":1,\"first_name\":\"Pauli\",\"group\":\"kok\",\"id\":\"154\",\"last_name\":\"Kiuru\",\"number\":\"1137\"},{\"Weight\":1,\"first_name\":\"Mika\",\"group\":\"sd\",\"id\":\"158\",\"last_name\":\"Kari\",\"number\":\"1133\"},{\"Weight\":1,\"first_name\":\"Reijo\",\"group\":\"ps\",\"id\":\"157\",\"last_name\":\"Tossavainen\",\"number\":\"1123\"},{\"Weight\":1,\"first_name\":\"Mauri\",\"group\":\"kesk\",\"id\":\"101\",\"last_name\":\"Pekkarinen\",\"number\":\"212\"},{\"Weight\":1,\"first_name\":\"Ben\",\"group\":\"kok\",\"id\":\"67\",\"last_name\":\"Zyskowicz\",\"number\":\"301\"},{\"Weight\":1,\"first_name\":\"Annika\",\"group\":\"kesk\",\"id\":\"140\",\"last_name\":\"Saarikko\",\"number\":\"1157\"},{\"Weight\":1,\"first_name\":\"Pekka\",\"group\":\"vihr\",\"id\":\"61\",\"last_name\":\"Haavisto\",\"number\":\"118\"},{\"Weight\":1,\"first_name\":\"Ilkka\",\"group\":\"kok\",\"id\":\"44\",\"last_name\":\"Kanerva\",\"number\":\"170\"},{\"Weight\":1,\"first_name\":\"Annika\",\"group\":\"vas\",\"id\":\"60\",\"last_name\":\"Lapintie\",\"number\":\"479\"},{\"Weight\":1,\"first_name\":\"Markus\",\"group\":\"vr\",\"id\":\"42\",\"last_name\":\"Mustajärvi\",\"number\":\"802\"},{\"Weight\":1,\"first_name\":\"Petteri\",\"group\":\"kok\",\"id\":\"85\",\"last_name\":\"Orpo\",\"number\":\"947\"},{\"Weight\":1,\"first_name\":\"Eero\",\"group\":\"kok\",\"id\":\"190\",\"last_name\":\"Suutari\",\"number\":\"1111\"},{\"Weight\":1,\"first_name\":\"Jukka\",\"group\":\"sd\",\"id\":\"22\",\"last_name\":\"Kärnä\",\"number\":\"1145\"},{\"Weight\":1,\"first_name\":\"Miapetra\",\"group\":\"sd\",\"id\":\"96\",\"last_name\":\"Kumpula-Natri\",\"number\":\"807\"},{\"Weight\":1,\"first_name\":\"Kimmo\",\"group\":\"kok\",\"id\":\"20\",\"last_name\":\"Sasi\",\"number\":\"261\"},{\"Weight\":1,\"first_name\":\"Suna\",\"group\":\"sd\",\"id\":\"55\",\"last_name\":\"Kymäläinen\",\"number\":\"1144\"},{\"Weight\":1,\"first_name\":\"Tuomo\",\"group\":\"kesk\",\"id\":\"141\",\"last_name\":\"Puumala\",\"number\":\"946\"},{\"Weight\":1,\"first_name\":\"Kari\",\"group\":\"sd\",\"id\":\"153\",\"last_name\":\"Rajamäki\",\"number\":\"228\"},{\"Weight\":1,\"first_name\":\"Arto\",\"group\":\"kok\",\"id\":\"103\",\"last_name\":\"Satonen\",\"number\":\"784\"},{\"Weight\":1,\"first_name\":\"Mari\",\"group\":\"kesk\",\"id\":\"64\",\"last_name\":\"Kiviniemi\",\"number\":\"465\"},{\"Weight\":1,\"first_name\":\"Pirkko\",\"group\":\"ps\",\"id\":\"25\",\"last_name\":\"Mattila\",\"number\":\"1152\"},{\"Weight\":1,\"first_name\":\"Kari\",\"group\":\"vas\",\"id\":\"76\",\"last_name\":\"Uotila\",\"number\":\"507\"},{\"Weight\":1,\"first_name\":\"Vesa-Matti\",\"group\":\"ps\",\"id\":\"72\",\"last_name\":\"Saarakkala\",\"number\":\"1041\"},{\"Weight\":1,\"first_name\":\"Jouko\",\"group\":\"kd\",\"id\":\"117\",\"last_name\":\"Jääskeläinen\",\"number\":\"405\"},{\"Weight\":1,\"first_name\":\"Mika\",\"group\":\"ps\",\"id\":\"7\",\"last_name\":\"Niikko\",\"number\":\"1092\"},{\"Weight\":1,\"first_name\":\"Lea\",\"group\":\"ps\",\"id\":\"100\",\"last_name\":\"Mäkipää\",\"number\":\"214\"},{\"Weight\":1,\"first_name\":\"Oras\",\"group\":\"vihr\",\"id\":\"77\",\"last_name\":\"Tynkkynen\",\"number\":\"846\"},{\"Weight\":1,\"first_name\":\"Pirkko\",\"group\":\"ps\",\"id\":\"40\",\"last_name\":\"Ruohonen-Lerner\",\"number\":\"920\"},{\"Weight\":1,\"first_name\":\"Paula\",\"group\":\"kesk\",\"id\":\"203\",\"last_name\":\"Lehtomäki\",\"number\":\"581\"},{\"Weight\":1,\"first_name\":\"Jussi\",\"group\":\"ps\",\"id\":\"33\",\"last_name\":\"Halla-aho\",\"number\":\"1109\"},{\"Weight\":1,\"first_name\":\"Satu\",\"group\":\"vihr\",\"id\":\"35\",\"last_name\":\"Haapanen\",\"number\":\"1104\"},{\"Weight\":1,\"first_name\":\"Anne-Mari\",\"group\":\"kok\",\"id\":\"148\",\"last_name\":\"Virolainen\",\"number\":\"948\"},{\"Weight\":1,\"first_name\":\"Seppo\",\"group\":\"kesk\",\"id\":\"97\",\"last_name\":\"Kääriäinen\",\"number\":\"202\"},{\"Weight\":1,\"first_name\":\"Kauko\",\"group\":\"ps\",\"id\":\"43\",\"last_name\":\"Tuupainen\",\"number\":\"1130\"},{\"Weight\":1,\"first_name\":\"Kaj\",\"group\":\"ps\",\"id\":\"132\",\"last_name\":\"Turunen\",\"number\":\"1128\"},{\"Weight\":1,\"first_name\":\"Ville\",\"group\":\"ps\",\"id\":\"169\",\"last_name\":\"Vähämäki\",\"number\":\"1136\"},{\"Weight\":1,\"first_name\":\"Jouni\",\"group\":\"sd\",\"id\":\"58\",\"last_name\":\"Backman\",\"number\":\"133\"},{\"Weight\":1,\"first_name\":\"Antti\",\"group\":\"kesk\",\"id\":\"18\",\"last_name\":\"Kaikkonen\",\"number\":\"772\"},{\"Weight\":1,\"first_name\":\"Antti\",\"group\":\"sd\",\"id\":\"104\",\"last_name\":\"Lindtman\",\"number\":\"1147\"},{\"Weight\":1,\"first_name\":\"Antti\",\"group\":\"kesk\",\"id\":\"139\",\"last_name\":\"Rantakangas\",\"number\":\"592\"},{\"Weight\":1,\"first_name\":\"Sirpa\",\"group\":\"sd\",\"id\":\"68\",\"last_name\":\"Paatero\",\"number\":\"887\"},{\"Weight\":1,\"first_name\":\"Jouko\",\"group\":\"sd\",\"id\":\"3\",\"last_name\":\"Skinnari\",\"number\":\"267\"},{\"Weight\":1,\"first_name\":\"Johanna\",\"group\":\"sd\",\"id\":\"86\",\"last_name\":\"Ojala-Niemelä\",\"number\":\"971\"},{\"Weight\":1,\"first_name\":\"Pietari\",\"group\":\"ps\",\"id\":\"74\",\"last_name\":\"Jääskeläinen\",\"number\":\"1052\"},{\"Weight\":1,\"first_name\":\"Johanna\",\"group\":\"vihr\",\"id\":\"87\",\"last_name\":\"Karimäki\",\"number\":\"921\"},{\"Weight\":1,\"first_name\":\"Elsi\",\"group\":\"kesk\",\"id\":\"165\",\"last_name\":\"Katainen\",\"number\":\"939\"},{\"Weight\":1,\"first_name\":\"James\",\"group\":\"m11\",\"id\":\"147\",\"last_name\":\"Hirvisaari\",\"number\":\"1117\"},{\"Weight\":1,\"first_name\":\"Ritva\",\"group\":\"ps\",\"id\":\"30\",\"last_name\":\"Elomaa\",\"number\":\"1096\"}],\"subject_count\":\"6\",\"top_words\":[[\"hallitus\",5],[\"resepti\",3],[\"sähköinen\",3],[\"miljardi\",3],[\"talous\",3],[\"kasvu\",3],[\"pääministeri\",3],[\"eurooppa\",2],[\"suomalainen\",2],[\"euro\",2],[\"työ\",2],[\"palvelu\",2],[\"keskusta\",2],[\"työllisyys\",2],[\"järjestelmä\",2],[\"lääkäri\",2],[\"ihminen\",2],[\"lääkemääräys\",2],[\"ministeri\",2],[\"velkaantuminen\",2]]}',2014);
INSERT INTO `document` (`id`, `date`, `weight`, `title`, `link`, `details_c`, `year`) VALUES ('4-2014','2014-02-06',14.2222,'Täysistunto ja suullinen kyselytunti','','{\"action_count\":\"106\",\"speakers\":[{\"Weight\":5,\"first_name\":\"Timo\",\"group\":\"kok\",\"id\":\"9\",\"last_name\":\"Heinonen\",\"number\":\"967\"},{\"Weight\":4,\"first_name\":\"Paavo\",\"group\":\"vas\",\"id\":\"37\",\"last_name\":\"Arhinmäki\",\"number\":\"917\"},{\"Weight\":3,\"first_name\":\"Oras\",\"group\":\"vihr\",\"id\":\"77\",\"last_name\":\"Tynkkynen\",\"number\":\"846\"},{\"Weight\":3,\"first_name\":\"Susanna\",\"group\":\"sd\",\"id\":\"187\",\"last_name\":\"Huovinen\",\"number\":\"565\"},{\"Weight\":2,\"first_name\":\"Silvia\",\"group\":\"vas\",\"id\":\"184\",\"last_name\":\"Modig\",\"number\":\"1153\"},{\"Weight\":2,\"first_name\":\"Leena\",\"group\":\"kd\",\"id\":\"142\",\"last_name\":\"Rauhala\",\"number\":\"593\"},{\"Weight\":2,\"first_name\":\"Lauri\",\"group\":\"sd\",\"id\":\"127\",\"last_name\":\"Ihalainen\",\"number\":\"1121\"},{\"Weight\":2,\"first_name\":\"Mikko\",\"group\":\"kesk\",\"id\":\"160\",\"last_name\":\"Alatalo\",\"number\":\"786\"},{\"Weight\":2,\"first_name\":\"Jyrki\",\"group\":\"kok\",\"id\":\"56\",\"last_name\":\"Katainen\",\"number\":\"571\"},{\"Weight\":2,\"first_name\":\"Tuula\",\"group\":\"sd\",\"id\":\"298\",\"last_name\":\"Peltonen\",\"number\":\"955\"},{\"Weight\":2,\"first_name\":\"Mikaela\",\"group\":\"r\",\"id\":\"62\",\"last_name\":\"Nylander\",\"number\":\"769\"},{\"Weight\":1,\"first_name\":\"Raija\",\"group\":\"kok\",\"id\":\"11\",\"last_name\":\"Vahasalo\",\"number\":\"605\"},{\"Weight\":1,\"first_name\":\"Jan\",\"group\":\"kok\",\"id\":\"57\",\"last_name\":\"Vapaavuori\",\"number\":\"766\"},{\"Weight\":1,\"first_name\":\"Kauko\",\"group\":\"ps\",\"id\":\"43\",\"last_name\":\"Tuupainen\",\"number\":\"1130\"},{\"Weight\":1,\"first_name\":\"Anne-Mari\",\"group\":\"kok\",\"id\":\"148\",\"last_name\":\"Virolainen\",\"number\":\"948\"},{\"Weight\":1,\"first_name\":\"Juho\",\"group\":\"ps\",\"id\":\"26\",\"last_name\":\"Eerola\",\"number\":\"1093\"},{\"Weight\":1,\"first_name\":\"Sinuhe\",\"group\":\"kok\",\"id\":\"13\",\"last_name\":\"Wallinheimo\",\"number\":\"1131\"},{\"Weight\":1,\"first_name\":\"Pirkko\",\"group\":\"ps\",\"id\":\"25\",\"last_name\":\"Mattila\",\"number\":\"1152\"},{\"Weight\":1,\"first_name\":\"James\",\"group\":\"m11\",\"id\":\"147\",\"last_name\":\"Hirvisaari\",\"number\":\"1117\"},{\"Weight\":1,\"first_name\":\"Aino-Kaisa\",\"group\":\"vas\",\"id\":\"124\",\"last_name\":\"Pekonen\",\"number\":\"1097\"},{\"Weight\":1,\"first_name\":\"Maria\",\"group\":\"ps\",\"id\":\"15\",\"last_name\":\"Tolppanen\",\"number\":\"1116\"},{\"Weight\":1,\"first_name\":\"Mikko\",\"group\":\"kesk\",\"id\":\"12\",\"last_name\":\"Savola\",\"number\":\"1106\"},{\"Weight\":1,\"first_name\":\"Olli\",\"group\":\"ps\",\"id\":\"149\",\"last_name\":\"Immonen\",\"number\":\"1122\"},{\"Weight\":1,\"first_name\":\"Maria\",\"group\":\"ps\",\"id\":\"143\",\"last_name\":\"Lohela\",\"number\":\"1148\"},{\"Weight\":1,\"first_name\":\"Outi\",\"group\":\"vihr\",\"id\":\"70\",\"last_name\":\"Alanko-Kahiluoto\",\"number\":\"914\"},{\"Weight\":1,\"first_name\":\"Simo\",\"group\":\"kesk\",\"id\":\"163\",\"last_name\":\"Rundgren\",\"number\":\"803\"},{\"Weight\":1,\"first_name\":\"Mauri\",\"group\":\"kesk\",\"id\":\"101\",\"last_name\":\"Pekkarinen\",\"number\":\"212\"},{\"Weight\":1,\"first_name\":\"Kimmo\",\"group\":\"ps\",\"id\":\"4\",\"last_name\":\"Kivelä\",\"number\":\"1138\"},{\"Weight\":1,\"first_name\":\"Merja\",\"group\":\"sd\",\"id\":\"23\",\"last_name\":\"Mäkisalo-Ropponen\",\"number\":\"1087\"},{\"Weight\":1,\"first_name\":\"Vesa-Matti\",\"group\":\"ps\",\"id\":\"72\",\"last_name\":\"Saarakkala\",\"number\":\"1041\"},{\"Weight\":1,\"first_name\":\"Tarja\",\"group\":\"sd\",\"id\":\"180\",\"last_name\":\"Filatov\",\"number\":\"451\"},{\"Weight\":1,\"first_name\":\"Erkki\",\"group\":\"sd\",\"id\":\"114\",\"last_name\":\"Tuomioja\",\"number\":\"357\"},{\"Weight\":1,\"first_name\":\"Petteri\",\"group\":\"kok\",\"id\":\"85\",\"last_name\":\"Orpo\",\"number\":\"947\"},{\"Weight\":1,\"first_name\":\"Hanna\",\"group\":\"ps\",\"id\":\"6\",\"last_name\":\"Mäntylä\",\"number\":\"1088\"},{\"Weight\":1,\"first_name\":\"Jukka\",\"group\":\"kok\",\"id\":\"175\",\"last_name\":\"Kopra\",\"number\":\"1142\"},{\"Weight\":1,\"first_name\":\"Krista\",\"group\":\"sd\",\"id\":\"19\",\"last_name\":\"Kiuru\",\"number\":\"960\"},{\"Weight\":1,\"first_name\":\"Risto\",\"group\":\"vas\",\"id\":\"34\",\"last_name\":\"Kalliorinne\",\"number\":\"1132\"},{\"Weight\":1,\"first_name\":\"Kimmo\",\"group\":\"kesk\",\"id\":\"59\",\"last_name\":\"Tiilikainen\",\"number\":\"790\"},{\"Weight\":1,\"first_name\":\"Ilkka\",\"group\":\"kok\",\"id\":\"44\",\"last_name\":\"Kanerva\",\"number\":\"170\"},{\"Weight\":1,\"first_name\":\"Jukka\",\"group\":\"sd\",\"id\":\"115\",\"last_name\":\"Gustafsson\",\"number\":\"116\"},{\"Weight\":1,\"first_name\":\"Annika\",\"group\":\"kesk\",\"id\":\"140\",\"last_name\":\"Saarikko\",\"number\":\"1157\"},{\"Weight\":1,\"first_name\":\"Miapetra\",\"group\":\"sd\",\"id\":\"96\",\"last_name\":\"Kumpula-Natri\",\"number\":\"807\"},{\"Weight\":1,\"first_name\":\"Anu\",\"group\":\"kesk\",\"id\":\"79\",\"last_name\":\"Vehviläinen\",\"number\":\"508\"},{\"Weight\":1,\"first_name\":\"Elsi\",\"group\":\"kesk\",\"id\":\"165\",\"last_name\":\"Katainen\",\"number\":\"939\"},{\"Weight\":1,\"first_name\":\"Pekka\",\"group\":\"vihr\",\"id\":\"61\",\"last_name\":\"Haavisto\",\"number\":\"118\"},{\"Weight\":1,\"first_name\":\"Lars Erik\",\"group\":\"r\",\"id\":\"171\",\"last_name\":\"Gästgivars\",\"number\":\"1103\"},{\"Weight\":1,\"first_name\":\"Lauri\",\"group\":\"ps\",\"id\":\"189\",\"last_name\":\"Heikkilä\",\"number\":\"1115\"},{\"Weight\":1,\"first_name\":\"Christina\",\"group\":\"r\",\"id\":\"195\",\"last_name\":\"Gestrin\",\"number\":\"623\"},{\"Weight\":1,\"first_name\":\"Harri\",\"group\":\"kok\",\"id\":\"95\",\"last_name\":\"Jaskari\",\"number\":\"972\"},{\"Weight\":1,\"first_name\":\"Janne\",\"group\":\"kok\",\"id\":\"172\",\"last_name\":\"Sankelo\",\"number\":\"1105\"},{\"Weight\":1,\"first_name\":\"Erkki\",\"group\":\"vas\",\"id\":\"49\",\"last_name\":\"Virtanen\",\"number\":\"793\"},{\"Weight\":1,\"first_name\":\"Arto\",\"group\":\"kesk\",\"id\":\"50\",\"last_name\":\"Pirttilahti\",\"number\":\"1101\"},{\"Weight\":1,\"first_name\":\"Laila\",\"group\":\"ps\",\"id\":\"434\",\"last_name\":\"Koskela\",\"number\":\"1143\"},{\"Weight\":1,\"first_name\":\"Matti\",\"group\":\"sd\",\"id\":\"5\",\"last_name\":\"Saarinen\",\"number\":\"253\"},{\"Weight\":1,\"first_name\":\"Päivi\",\"group\":\"sd\",\"id\":\"168\",\"last_name\":\"Lipponen\",\"number\":\"915\"},{\"Weight\":1,\"first_name\":\"Mirja\",\"group\":\"kesk\",\"id\":\"136\",\"last_name\":\"Vehkaperä\",\"number\":\"962\"},{\"Weight\":1,\"first_name\":\"Eero\",\"group\":\"kok\",\"id\":\"167\",\"last_name\":\"Lehti\",\"number\":\"935\"},{\"Weight\":1,\"first_name\":\"Jari\",\"group\":\"ps\",\"id\":\"93\",\"last_name\":\"Lindström\",\"number\":\"1146\"}],\"subject_count\":\"8\",\"top_words\":[[\"aloite\",5],[\"tekijä\",4],[\"työ\",4],[\"kansalaisaloite\",4],[\"palvelu\",3],[\"tekijänoikeus\",3],[\"ihminen\",3],[\"hallitus\",3],[\"ministeri\",3],[\"korvaus\",3],[\"tekijänoikeuslaki\",3],[\"koputtaa\",2],[\"laillinen\",2],[\"laiton\",2],[\"luova\",2],[\"oikeus\",2],[\"lainsäädäntö\",2],[\"musiikki\",2],[\"teos\",2],[\"käsittely\",2]]}',2014);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_subscription`
--

DROP TABLE IF EXISTS `document_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `latest_send_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_subscription`
--

LOCK TABLES `document_subscription` WRITE;
/*!40000 ALTER TABLE `document_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speaker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `number` int(11) DEFAULT NULL,
  `group` varchar(16) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details_c` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `is_current` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=439 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaker`
--

LOCK TABLES `speaker` WRITE;
/*!40000 ALTER TABLE `speaker` DISABLE KEYS */;
INSERT INTO `speaker` (`id`, `first_name`, `last_name`, `number`, `group`, `title`, `details_c`, `is_current`) VALUES (77,'Oras','Tynkkynen',846,'vihr',NULL,'{\"action_count\":[\"395\"],\"top_words\":[[\"arvio\",2],[\"edeltää\",2],[\"edistäminen\",2],[\"energia\",3],[\"esitetty\",2],[\"hallitus\",5],[\"hinta\",2],[\"ihminen\",3],[\"kasvaa\",2],[\"kestävä\",2],[\"kestää\",2],[\"maailma\",2],[\"ministeri\",4],[\"näkemys\",2],[\"pekkarinen\",2],[\"peruste\",2],[\"perustella\",2],[\"päästö\",3],[\"suomalainen\",3],[\"sähkö\",2],[\"tulevaisuus\",3],[\"tuottaa\",2],[\"tuulivoima\",2],[\"uusiutua\",3],[\"uusiutuva\",3],[\"vihreä\",3],[\"viitata\",2],[\"vähentää\",2],[\"ydinvoima\",2],[\"yhteiskunta\",2]],\"top_words_by_year\":{\"2004\":[[\"ainesosa\",2],[\"ala-nissilä\",2],[\"elinkaarianalyysi\",2],[\"hallitus\",2],[\"huovinen\",2],[\"journalismi\",2],[\"järjestelmä\",2],[\"jättää\",2],[\"kiinnittää\",2],[\"lausunto\",3],[\"myöhemmin\",2],[\"myöhä\",2],[\"nykyään\",2],[\"näkökulma\",2],[\"ongelmallinen\",2],[\"pakkaus\",2],[\"pakkausjärjestelmä\",2],[\"palata\",2],[\"perustua\",2],[\"pullo\",2],[\"tiusanen\",2],[\"toimivuus\",2],[\"venäjä\",2],[\"viitata\",5],[\"viitta\",3],[\"vähentäminen\",2],[\"ydinvoimala\",2],[\"ydinvoimalka\",2],[\"yle\",2],[\"ympäristövaliokunta\",2]],\"2005\":[[\"auto\",3],[\"edistäminen\",2],[\"edistää\",2],[\"energia\",2],[\"energialähde\",2],[\"esitetty\",2],[\"fortumin\",2],[\"hallitus\",5],[\"hinta\",3],[\"ihminen\",4],[\"kasvaa\",2],[\"kestävä\",3],[\"kestää\",3],[\"maailma\",2],[\"ministeri\",4],[\"nainen\",3],[\"pekkarinen\",2],[\"päästö\",4],[\"ruotsi\",2],[\"strategia\",2],[\"syrjintä\",2],[\"sähkö\",2],[\"tuotanto\",2],[\"tuottaa\",3],[\"uusiutua\",4],[\"uusiutuva\",4],[\"valiokunta\",2],[\"vihreä\",4],[\"vähentää\",3],[\"yhteiskunta\",3]],\"2006\":[[\"edistäminen\",3],[\"edistää\",2],[\"energia\",3],[\"hallitus\",5],[\"ihminen\",3],[\"ilmastonmuutos\",2],[\"kestävä\",3],[\"kestää\",4],[\"kohtuullinen\",2],[\"kunta\",2],[\"käytäntö\",2],[\"mietintö\",2],[\"ministeri\",3],[\"nainen\",2],[\"pekkarinen\",3],[\"peruste\",2],[\"päästö\",3],[\"päästökauppa\",3],[\"päästöoikeus\",2],[\"syöttötariffi\",3],[\"sähkö\",2],[\"talousvaliokunta\",2],[\"tuottaa\",2],[\"turve\",2],[\"tutkimus\",2],[\"uusiutua\",5],[\"uusiutuva\",5],[\"vihreä\",4],[\"yhtiö\",2],[\"yleishyödyllinen\",2]],\"2007\":[[\"auto\",2],[\"edeltää\",2],[\"edistäminen\",4],[\"energia\",3],[\"euro\",3],[\"hallitus\",5],[\"hallitusohjelma\",5],[\"hinta\",3],[\"ihminen\",3],[\"ilmastonmuutos\",3],[\"joukkoliikenne\",2],[\"kannustaa\",3],[\"kassi\",2],[\"kasvaa\",3],[\"kasvava\",2],[\"kiinnittää\",2],[\"korotus\",3],[\"laatia\",2],[\"liikenne\",3],[\"ministeri\",2],[\"onnistua\",3],[\"perustulo\",3],[\"päästö\",4],[\"suunnata\",3],[\"tuottaa\",2],[\"uusiutua\",2],[\"vero\",4],[\"vähentää\",3],[\"väittää\",2],[\"ydinvoima\",2]],\"2008\":[[\"energia\",3],[\"energiatehokkuus\",3],[\"eu\",2],[\"haaste\",3],[\"hallitus\",5],[\"hieman\",2],[\"ilmasto\",2],[\"ilmastonmuutos\",3],[\"ilmastopolitiikka\",2],[\"kansainvälinen\",4],[\"kasvaa\",2],[\"kasvattaa\",3],[\"kestävä\",2],[\"kestää\",3],[\"ministeri\",3],[\"näkemys\",2],[\"päästö\",4],[\"selonteko\",3],[\"selvitys\",2],[\"sopimus\",3],[\"strategia\",4],[\"sähkö\",2],[\"teollisuus\",3],[\"tulevaisuus\",4],[\"uusiutua\",4],[\"uusiutuva\",4],[\"vihreä\",4],[\"viitata\",3],[\"vuode\",2],[\"vähentää\",4]],\"2009\":[[\"aiemmin\",2],[\"arvio\",2],[\"energia\",2],[\"energiatehokkuus\",2],[\"hallitus\",5],[\"kauppa\",2],[\"kestävä\",2],[\"kestää\",2],[\"kööpenhamina\",1],[\"leikata\",2],[\"liikenne\",1],[\"mietintö\",2],[\"ministeri\",2],[\"pari\",2],[\"peruste\",2],[\"päästö\",2],[\"sosialidemokraatti\",2],[\"sähköauto\",2],[\"sähkönkulutus\",2],[\"talous\",1],[\"teollisuus\",1],[\"tulevaisuus\",2],[\"tulevaisuusselonteko\",2],[\"tuulivoima\",1],[\"uusiutua\",2],[\"uusiutuva\",2],[\"vanha\",2],[\"vanhempi\",2],[\"vihreä\",2],[\"ydinvoima\",2]],\"2010\":[[\"arvio\",4],[\"energia\",3],[\"esitetty\",2],[\"esittämä\",2],[\"hallitus\",4],[\"kasvaa\",3],[\"kestävä\",2],[\"kestää\",3],[\"kotimainen\",2],[\"malli\",3],[\"ministeri\",4],[\"onnistua\",2],[\"pekkarinen\",3],[\"perustua\",2],[\"päästö\",3],[\"päätyä\",3],[\"syöttötariffi\",2],[\"sähkö\",3],[\"terawattitunti\",2],[\"tulevaisuus\",3],[\"tuotanto\",3],[\"tuottaa\",3],[\"tuulivoima\",3],[\"uusiutua\",5],[\"uusiutuva\",5],[\"vaihtoehto\",3],[\"vihreä\",3],[\"väittää\",2],[\"ydinvoima\",3],[\"ydinvoimala\",3]],\"2011\":[[\"aloittaa\",2],[\"avaaminen\",3],[\"edetä\",2],[\"edistäminen\",2],[\"hallitus\",5],[\"hallitusohjelma\",5],[\"hyöty\",3],[\"ilmastolaki\",2],[\"ilmastopolitiikka\",2],[\"joukkoliikenne\",2],[\"joukkoliikennehanke\",3],[\"julkinen\",2],[\"kirjattu\",2],[\"kirjaus\",3],[\"korotus\",3],[\"kyllönen\",2],[\"löytää\",2],[\"ministeri\",3],[\"määräraha\",2],[\"perussuomalainen\",2],[\"päästötavoite\",2],[\"rahoitus\",4],[\"ryhmä\",2],[\"saatava\",2],[\"säästö\",3],[\"talous\",2],[\"tarjota\",2],[\"tiukka\",2],[\"valtakunnallinen\",2],[\"vihreä\",3]],\"2012\":[[\"auto\",3],[\"avioliitto\",3],[\"avioliittolaki\",2],[\"hallitus\",2],[\"ihminen\",5],[\"joukkoliikenne\",3],[\"järkevä\",2],[\"kunta\",4],[\"liikenne\",3],[\"ministeri\",3],[\"näkemys\",3],[\"oikeus\",3],[\"palvelu\",2],[\"pari\",2],[\"peruste\",3],[\"perustella\",3],[\"perustua\",2],[\"päästö\",3],[\"sukupuoli\",2],[\"suomalainen\",4],[\"sähköauto\",2],[\"tarjota\",3],[\"toteutua\",2],[\"tulevaisuus\",3],[\"turvata\",2],[\"tutkimus\",3],[\"vaihtoehto\",2],[\"vanha\",3],[\"vanhempi\",2],[\"yhteiskunta\",3]],\"2013\":[[\"edeltää\",2],[\"eläin\",3],[\"energia\",3],[\"hallitus\",3],[\"hinta\",2],[\"hyvinvointi\",2],[\"ihminen\",3],[\"kansainvälinen\",2],[\"kasvaa\",2],[\"keskusta\",2],[\"maailma\",3],[\"ministeri\",2],[\"näkemys\",2],[\"opiskelija\",2],[\"perussuomalainen\",2],[\"peruste\",3],[\"päästö\",2],[\"sali\",2],[\"suomalainen\",5],[\"sähkö\",2],[\"tulevaisuus\",3],[\"tuottaa\",2],[\"turvata\",2],[\"tuulivoima\",2],[\"työ\",2],[\"uusiutua\",2],[\"uusiutuva\",2],[\"vihreä\",4],[\"vähentää\",2],[\"yhteiskunta\",2]],\"2014\":[[\"avioliitto\",3],[\"avioliittolaki\",5],[\"edeltää\",2],[\"hakea\",2],[\"hallitus\",3],[\"ihminen\",3],[\"jälleen\",2],[\"kansalainen\",3],[\"kansalaisaloite\",5],[\"kollega\",2],[\"korvaus\",2],[\"kunta\",2],[\"käyttäjä\",2],[\"käytäntö\",2],[\"ministeri\",3],[\"minkälainen\",2],[\"niikko\",2],[\"nokia\",2],[\"näkemys\",3],[\"oikeus\",3],[\"peruste\",2],[\"sali\",3],[\"sukupuoli\",2],[\"suo\",2],[\"säätää\",2],[\"tarkka\",2],[\"tasa-arvoinen\",4],[\"tekijänoikeuslaki\",2],[\"tuntua\",2],[\"väite\",2]]}}',1);
INSERT INTO `speaker` (`id`, `first_name`, `last_name`, `number`, `group`, `title`, `details_c`, `is_current`) VALUES (101,'Mauri','Pekkarinen',212,'kesk',NULL,'{\"action_count\":[\"1961\"],\"top_words\":[[\"ala\",1],[\"energia\",1],[\"euro\",2],[\"eurooppa\",2],[\"hallitus\",5],[\"hanke\",1],[\"hinta\",1],[\"ihminen\",1],[\"julkinen\",1],[\"kasvu\",1],[\"kerrata\",2],[\"keskusta\",1],[\"kunta\",2],[\"käytäntö\",1],[\"maailma\",2],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",2],[\"niistää\",1],[\"raha\",2],[\"suomalainen\",2],[\"sähkö\",1],[\"talous\",1],[\"tarkka\",1],[\"tuottaa\",1],[\"työ\",1],[\"uusiutua\",2],[\"uusiutuva\",2],[\"vastaava\",1],[\"yrittää\",1]],\"top_words_by_year\":{\"1999\":[[\"budjetti\",2],[\"eläkeläinen\",3],[\"hallitus\",5],[\"ihminen\",2],[\"kakku\",2],[\"kansalainen\",2],[\"kansanedustaja\",2],[\"kasvaa\",2],[\"kerrata\",2],[\"keskusta\",2],[\"kunta\",3],[\"käsittely\",2],[\"käytäntö\",2],[\"leikata\",3],[\"leikkaus\",1],[\"markka\",3],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",2],[\"palvelu\",2],[\"perustella\",2],[\"perä\",1],[\"pohjaosa\",2],[\"tavata\",2],[\"tavaton\",2],[\"tiusanen\",2],[\"tulo\",2],[\"vero\",1],[\"väärä\",2],[\"äänestää\",2]],\"2000\":[[\"ajatus\",1],[\"aloite\",1],[\"hallitus\",5],[\"hinta\",2],[\"ihminen\",2],[\"järjestelmä\",1],[\"kansalainen\",2],[\"kasvaa\",1],[\"kerrata\",2],[\"keskusta\",2],[\"kunta\",2],[\"käytäntö\",1],[\"leikata\",1],[\"lipponen\",1],[\"markka\",3],[\"miljardi\",2],[\"ministeri\",2],[\"palvelu\",2],[\"perustella\",1],[\"pääministeri\",2],[\"sali\",2],[\"seikka\",1],[\"suomalainen\",2],[\"tavaton\",1],[\"tulo\",1],[\"työ\",2],[\"vero\",2],[\"verotus\",2],[\"yhtyä\",1],[\"äänestää\",2]],\"2001\":[[\"alueellinen\",1],[\"finanssipolitiikka\",1],[\"hallitus\",5],[\"heikko\",2],[\"ihminen\",1],[\"kansalainen\",1],[\"kasvaa\",1],[\"kasvu\",1],[\"kerrata\",1],[\"keskusta\",2],[\"kunta\",3],[\"leikata\",1],[\"leikkaus\",1],[\"markka\",2],[\"miljardi\",2],[\"ministeri\",3],[\"niinistö\",1],[\"oppositio\",1],[\"palvelu\",1],[\"perustella\",1],[\"pienituloinen\",1],[\"pois\",1],[\"pääministeri\",2],[\"sanoma\",2],[\"talous\",2],[\"tapahtunut\",1],[\"tavaton\",1],[\"verotus\",1],[\"yrittää\",1],[\"zyskowicz\",2]],\"2002\":[[\"budjetti\",1],[\"hallitus\",5],[\"hallituspuolue\",1],[\"ihminen\",2],[\"kansalainen\",2],[\"kasvu\",1],[\"kerrata\",1],[\"keskus\",1],[\"keskusta\",2],[\"koputtaa\",2],[\"kunta\",2],[\"kuukausi\",1],[\"käsittely\",1],[\"leikata\",2],[\"liittyvä\",1],[\"lipponen\",1],[\"markka\",2],[\"miljardi\",1],[\"ministeri\",3],[\"pienituloinen\",1],[\"pääministeri\",2],[\"raha\",2],[\"ryhmä\",1],[\"sali\",2],[\"sanoma\",1],[\"vastaava\",1],[\"verotus\",1],[\"yrittää\",1],[\"zyskowicz\",2],[\"äänestää\",1]],\"2003\":[[\"edellytys\",1],[\"euro\",2],[\"fortum\",2],[\"fortumin\",1],[\"hallitus\",5],[\"hallitusohjelma\",2],[\"ihminen\",1],[\"ikä\",1],[\"jnp\",1],[\"kehys\",1],[\"kerrata\",1],[\"keskusta\",1],[\"kevennys\",2],[\"keventää\",1],[\"luvata\",1],[\"malli\",1],[\"ministeri\",1],[\"näkemys\",1],[\"omistus\",1],[\"osaaminen\",1],[\"sasi\",1],[\"suomalainen\",1],[\"suora\",1],[\"tarkka\",2],[\"tarkoittua\",1],[\"vaalikausi\",1],[\"veroratkaisu\",1],[\"verotus\",2],[\"yhtiö\",2],[\"zyskowicz\",3]],\"2004\":[[\"edellyttää\",1],[\"edellytys\",1],[\"euro\",2],[\"eurooppa\",1],[\"hallitus\",5],[\"hanke\",1],[\"hinta\",2],[\"jakaa\",1],[\"järjestelmä\",2],[\"kerrata\",1],[\"kiinnittää\",2],[\"kolme\",1],[\"komissio\",1],[\"koputtaa\",1],[\"käytäntö\",1],[\"lyhyt\",1],[\"maailma\",2],[\"miljoona\",1],[\"ministeri\",3],[\"ministeriö\",2],[\"myöntää\",1],[\"sisä\",1],[\"suomalainen\",2],[\"tapahtunut\",1],[\"tavaton\",1],[\"työ\",2],[\"unioni\",1],[\"vero\",1],[\"voima\",1],[\"yrittää\",2]],\"2005\":[[\"ala\",1],[\"edistää\",1],[\"euro\",2],[\"fortumin\",1],[\"hallitus\",5],[\"hanke\",1],[\"hinta\",1],[\"kerrata\",1],[\"kerto\",1],[\"kolmas\",1],[\"käytäntö\",2],[\"liikenne\",1],[\"maailma\",2],[\"markkina\",2],[\"miljoona\",2],[\"ministeri\",2],[\"niistää\",2],[\"optiosopimus\",1],[\"palvelu\",2],[\"raha\",1],[\"selvitys\",1],[\"suomalainen\",1],[\"suora\",1],[\"tarkka\",2],[\"tuotanto\",1],[\"uusiutua\",2],[\"uusiutuva\",2],[\"yhtiö\",2],[\"yrittäjä\",1],[\"yrittää\",2]],\"2006\":[[\"energia\",2],[\"euro\",2],[\"eurooppa\",2],[\"hallitus\",5],[\"hanke\",2],[\"hinta\",2],[\"jnp\",2],[\"kansallinen\",2],[\"kerrata\",2],[\"käytäntö\",2],[\"maailma\",2],[\"markkina\",2],[\"miljoona\",2],[\"myöntää\",2],[\"näkemys\",2],[\"palvelu\",2],[\"pois\",2],[\"raha\",2],[\"suomalainen\",3],[\"sähkö\",3],[\"toimija\",2],[\"tuottaa\",2],[\"turve\",2],[\"työ\",2],[\"unioni\",2],[\"uusiutua\",2],[\"uusiutuva\",2],[\"valmistelu\",2],[\"vastaava\",2],[\"yhteisö\",2]],\"2007\":[[\"ala\",1],[\"edellytys\",1],[\"energia\",2],[\"eu\",1],[\"euro\",2],[\"eurooppa\",2],[\"haaste\",2],[\"hallitus\",5],[\"hanke\",2],[\"järjestelmä\",1],[\"kerrata\",1],[\"komissio\",2],[\"maailma\",2],[\"markkina\",1],[\"miljoona\",3],[\"ministeri\",2],[\"myydä\",2],[\"niistää\",2],[\"päästö\",2],[\"päästökauppajärjestelmä\",1],[\"raha\",2],[\"suomalainen\",1],[\"tarkka\",2],[\"tuottaa\",1],[\"työ\",2],[\"uusiutua\",2],[\"uusiutuva\",2],[\"vaalikausi\",1],[\"vastaava\",2],[\"velvoite\",1]],\"2008\":[[\"ala\",2],[\"energia\",2],[\"euro\",3],[\"eurooppa\",2],[\"hallitus\",5],[\"hinta\",2],[\"julkinen\",2],[\"järjestelmä\",2],[\"kulua\",2],[\"kuukausi\",2],[\"maailma\",2],[\"markkina\",2],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",2],[\"minuutti\",2],[\"raha\",3],[\"rahoitus\",2],[\"strategia\",2],[\"suomalainen\",3],[\"sähkö\",2],[\"tuottaa\",2],[\"tutkimus\",2],[\"työ\",2],[\"unioni\",2],[\"uusiutua\",3],[\"uusiutuva\",3],[\"valmistella\",2],[\"yhde\",2],[\"yrittää\",2]],\"2009\":[[\"ala\",2],[\"energia\",2],[\"eu\",1],[\"euro\",3],[\"eurooppa\",1],[\"hallitus\",5],[\"hanke\",2],[\"ihminen\",1],[\"kertaalleen\",1],[\"kommentti\",1],[\"kulua\",1],[\"liittyvä\",2],[\"maailma\",2],[\"markkina\",1],[\"metsäteollisuus\",1],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",2],[\"minuutti\",3],[\"myöntää\",2],[\"niistää\",2],[\"raha\",2],[\"suomalainen\",3],[\"tarkka\",1],[\"työ\",2],[\"uusiutua\",2],[\"uusiutuva\",2],[\"varsinainen\",1],[\"vienti\",2],[\"yrittää\",2]],\"2010\":[[\"ajatus\",2],[\"ala\",2],[\"arvio\",2],[\"energia\",3],[\"euro\",3],[\"hallitus\",5],[\"hinta\",3],[\"ihminen\",2],[\"jnp\",2],[\"kerrata\",2],[\"käytäntö\",2],[\"maailma\",3],[\"miljoona\",4],[\"ministeri\",2],[\"minuutti\",2],[\"myöntää\",2],[\"peruste\",2],[\"puu\",3],[\"raha\",3],[\"suomalainen\",3],[\"sähkö\",3],[\"tarkka\",2],[\"terawattitunti\",2],[\"toimija\",2],[\"tuottaa\",3],[\"työ\",2],[\"uusiutua\",5],[\"uusiutuva\",5],[\"ydinvoima\",2],[\"yrittää\",2]],\"2011\":[[\"ajatus\",1],[\"ervv\",2],[\"euro\",4],[\"euroalue\",1],[\"euromaa\",2],[\"eurooppa\",2],[\"evm\",1],[\"hallitus\",5],[\"kasvu\",2],[\"kerrata\",1],[\"keskusta\",2],[\"kreikka\",2],[\"kunta\",2],[\"käytäntö\",2],[\"leikata\",2],[\"maailma\",2],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",2],[\"niistää\",2],[\"pankki\",2],[\"pääministeri\",1],[\"raha\",2],[\"sopimus\",1],[\"suomalainen\",2],[\"talous\",2],[\"uusiutua\",2],[\"uusiutuva\",2],[\"vastaava\",1],[\"verotus\",1]],\"2012\":[[\"edellytys\",1],[\"euro\",4],[\"eurooppa\",2],[\"evm\",2],[\"hallitus\",5],[\"hanke\",2],[\"julkinen\",2],[\"kasvu\",1],[\"kerrata\",2],[\"keskusta\",2],[\"kilpailukyky\",1],[\"kreikka\",2],[\"kunta\",3],[\"maakunta\",2],[\"miljardi\",3],[\"miljoona\",2],[\"ministeri\",3],[\"niistää\",1],[\"no\",2],[\"palvelu\",2],[\"pankki\",2],[\"peruste\",1],[\"pois\",1],[\"pääministeri\",1],[\"raha\",2],[\"saksa\",2],[\"selvitä\",2],[\"suomalainen\",2],[\"talous\",2],[\"vastaava\",2]],\"2013\":[[\"euro\",3],[\"eurooppa\",2],[\"hallitus\",5],[\"ihminen\",1],[\"kerrata\",2],[\"keskus\",1],[\"keskusta\",2],[\"kivihiili\",2],[\"koputtaa\",2],[\"kunta\",3],[\"käytäntö\",2],[\"maakunta\",2],[\"miljardi\",2],[\"miljoona\",2],[\"ministeri\",3],[\"niistää\",1],[\"peruste\",1],[\"pois\",1],[\"puu\",2],[\"raha\",2],[\"rahoitus\",1],[\"suomalainen\",3],[\"sähkö\",1],[\"takana\",1],[\"tarkka\",2],[\"tuottaa\",1],[\"uusiutua\",2],[\"uusiutuva\",2],[\"valiokunta\",1],[\"yrittää\",1]],\"2014\":[[\"energia\",2],[\"euro\",2],[\"eurooppa\",2],[\"hallitus\",5],[\"hanke\",2],[\"julkinen\",2],[\"kasvaa\",1],[\"keskusta\",1],[\"kivihiili\",2],[\"koputtaa\",2],[\"kunta\",3],[\"malli\",2],[\"metsä\",2],[\"miljardi\",2],[\"ministeri\",3],[\"niistää\",1],[\"no\",1],[\"palvelu\",2],[\"puu\",2],[\"rahoitus\",1],[\"rooli\",2],[\"suomalainen\",3],[\"suora\",2],[\"talous\",1],[\"tarkka\",2],[\"tuote\",2],[\"turve\",1],[\"unioni\",2],[\"voima\",2],[\"yhteistyö\",2]]}}',1);
/*!40000 ALTER TABLE `speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `doc_id` varchar(16) DEFAULT NULL,
  `action_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18058 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`id`, `subject`, `doc_id`, `action_count`) VALUES (17970,'Pääministerin ilmoitus hallituksen politiikasta vuonna 2014 ja keskeisimmistä eduskunnalle annettavista esityksistä ','3-2014',101);
INSERT INTO `subject` (`id`, `subject`, `doc_id`, `action_count`) VALUES (17977,'Työllisyyden parantaminen','4-2014',21);
INSERT INTO `subject` (`id`, `subject`, `doc_id`, `action_count`) VALUES (17981,'Kansalaisaloite: Järkeä tekijänoikeuslakiin (KAA 2/2013 vp)','4-2014',49);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` char(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stop` enum('Stop','Nonstop','Unknown') NOT NULL DEFAULT 'Unknown',
  `known` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=350249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1,'tarvita','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4,'ne','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8,'kuulua','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9,'yli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14,'nähdä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15,'selvittää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16,'turvata','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (18,'jopa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (19,'asia','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21,'oma','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (26,'keskustelu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (29,'tai','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (30,'niin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (32,'sama','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (34,'tuki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (36,'takia','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (37,'noki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (40,'miljardi','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (58,'maa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (60,'entistää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (61,'puolue','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (63,'me','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (68,'kiittää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (69,'auttaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (71,'vaikea','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (72,'voima','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (73,'ratkaisu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (75,'jo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (76,'mukaan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (77,'euro','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (84,'paljo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (86,'toivoa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (88,'yrittää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (89,'rekrytoida','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (95,'valittaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (96,'mahdollinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (97,'suomalainen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (101,'hyvin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (108,'puhemies','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (109,'huolia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (111,'käydä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (113,'vaikuttaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (114,'tuoda','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (115,'tällainen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (117,'jokainen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (126,'tukea','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (127,'kuuluu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (130,'muu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (132,'uusi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (137,'tuli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (139,'kasvu','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (144,'yhä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (145,'he','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (148,'ottaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (149,'kanta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (155,'kestää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (158,'seurata','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (166,'siellä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (170,'esitys','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (172,'vaan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (177,'toivo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (178,'tehdä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (180,'näin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (181,'lisääntyä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (190,'tietää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (191,'valitettava','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (192,'täällä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (195,'mutta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (196,'vähäinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (197,'merkitä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (202,'suomi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (204,'haluta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (206,'turva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (210,'yksi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (212,'tieto','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (213,'ei','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (215,'pystyä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (217,'entinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (219,'aukko','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (220,'nuo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (223,'puoli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (225,'jälki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (227,'toimi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (228,'lisätä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (230,'eli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (231,'lähes','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (233,'määrä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (238,'mikä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (239,'noin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (240,'vuosi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (241,'tämä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (243,'julkinen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (244,'myös','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (246,'lähteä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (248,'viime','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (252,'ihminen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (253,'jälkeen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (254,'hän','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (255,'puhua','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (256,'sanoa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (258,'hakea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (261,'pitää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (263,'paras','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (264,'mielipide','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (265,'suuri','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (271,'toimia','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (273,'ehdoton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (279,'tulla','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (280,'ja','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (281,'samoin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (286,'kohtuuton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (291,'hallitus','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (294,'pysty','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (299,'myödä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (300,'aivan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (302,'tahansa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (311,'käsittely','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (314,'nämä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (317,'varma','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (318,'siittää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (319,'se','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (321,'saada','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (323,'pyytää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (324,'kaksi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (326,'erilainen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (327,'kuin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (328,'joka','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (329,'antaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (335,'pää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (337,'merkittävä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (344,'tapa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (345,'työttömyys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (348,'aina','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (349,'omia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (351,'oikea','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (355,'että','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (358,'toteuttaminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (365,'tärkeä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (366,'siitä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (367,'paitsi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (371,'tulevaisuus','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (372,'eduskunta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (376,'kuu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (379,'parantaminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (383,'eri','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (392,'parantaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (396,'olla','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (398,'tietty','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (400,'osa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (408,'elää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (409,'vielä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (412,'toteuttaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (415,'täysi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (416,'kun','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (423,'usea','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (424,'voida','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (426,'yhdessä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (427,'voi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (433,'aika','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (435,'arvoisa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (444,'kasvaa','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (450,'ongelma','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (458,'hyvä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (462,'yleinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (464,'tilanne','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (469,'alku','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (473,'päin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (480,'lisä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (481,'muassa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (484,'jäädä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (488,'kuitenkaan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (500,'kaikki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (507,'riippua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (513,'huolima','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (514,'yhteiskunta','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (515,'tähkä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (518,'edessä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (521,'riippumatta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (525,'huolimatta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (526,'johtaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (527,'kokea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (536,'tulo','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (541,'jakaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (542,'riippuma','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (546,'vuotaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (548,'vuode','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (550,'työ','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (555,'saanut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (557,'oikein','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (558,'vuo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (563,'oltu','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (565,'erittäin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (569,'periä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (572,'sana','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (574,'tekeminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (586,'vaikka','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (591,'parannettava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (592,'kautta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (595,'maksa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (596,'neljä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (598,'joku','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (602,'selkeys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (605,'maksaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (608,'sellainen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (620,'minä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (623,'tieten','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (626,'lainsäätäjä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (627,'esimerkki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (634,'itse','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (637,'ratkaista','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (640,'mieli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (641,'miten','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (643,'jos','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (646,'nykyinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (647,'toinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (650,'keino','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (651,'helppo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (658,'kuka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (661,'yksityinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (666,'kansalainen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (667,'katsoa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (670,'valtava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (672,'arvioida','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (673,'kausi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (682,'käytäntö','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (693,'kyllä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (694,'nimenomaan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (696,'kysymys','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (698,'ajaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (702,'vähän','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (706,'esillä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (711,'nimenoma','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (717,'vähä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (723,'kuva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (724,'puheenjohtaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (725,'moni','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (735,'tarkka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (738,'kuulla','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (739,'toimiva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (740,'määri','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (744,'tila','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (749,'silloin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (753,'seuraava','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (755,'silla','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (762,'ymmärtää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (764,'tilata','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (766,'silta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (770,'todeta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (775,'kollega','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (776,'niittää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (783,'tuntua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (785,'löytyä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (788,'eurooppa','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (791,'vain','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (792,'lukea','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (794,'nyt','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (798,'joki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (800,'kansanedustaja','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (802,'puheenvuoro','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (821,'alkaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (822,'luoda','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (823,'nostaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (835,'joutua','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (839,'käsittämätön','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (840,'aleta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (846,'kannustaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (848,'kuinka','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (849,'saattava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (854,'uudistus','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (861,'koska','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (862,'saattaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (865,'virheellinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (868,'valmis','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (869,'läpi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (871,'erityinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (872,'aihe','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (873,'kannattaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (880,'vara','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (883,'toisaalla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (886,'varata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (890,'ihan','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (896,'tehty','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (908,'johto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (912,'edustaja','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (917,'oleva','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (928,'yle','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (930,'yleensä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (933,'tyytyväinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (934,'jälleen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (938,'paha','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (942,'toteutua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (945,'sali','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (948,'tehnyt','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (958,'minuutti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (964,'vähetä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (966,'edes','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (967,'tuo','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (969,'käyttö','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (973,'sitten','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (975,'odottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (983,'talous','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (989,'kansainvälinen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1031,'mahdollistaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1033,'mennä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1034,'pikainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1035,'kerta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1037,'valiokunta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1041,'laaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1047,'eritä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1055,'muistuttaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1058,'pois','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1067,'laki','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1068,'hinta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1069,'jokin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1071,'asetettu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1072,'kanssa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1076,'tapaus','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1083,'toivottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1095,'hankala','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1098,'asettaa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1109,'järjestämä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1112,'kattaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1113,'tavoite','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1124,'tunnettu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1131,'suhde','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1141,'nuori','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1150,'väli','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1163,'tuntea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1168,'ensimmäinen','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1170,'laajuus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1172,'peruste','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1183,'konkreettinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1197,'tosi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1203,'suora','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1212,'maksama','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1216,'maksamaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1218,'kohdata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1222,'kohta','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1239,'soittaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1244,'kertoa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1259,'korvaus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1260,'harva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1261,'koko','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1274,'soittama','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1276,'kuultaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1279,'ettei','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1281,'vuotias','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1284,'tekijä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1285,'tutkija','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1296,'hyödyntää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1299,'alla','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1301,'kolmas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1309,'miettiä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1312,'hyödyntä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1314,'hahmottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1324,'kiinni','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1328,'sektori','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1338,'merkitys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1341,'vakava','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1342,'nuora','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1343,'päätyä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1356,'kiito','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1359,'kiitos','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1372,'taso','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1386,'ilmiö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1387,'välttämä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1392,'laajalti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1393,'keskustella','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1403,'tilasto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1406,'muoto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1414,'paikka','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1423,'välttää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1453,'lisääntynyt','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1479,'järjestää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1484,'unioni','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1502,'tausta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1523,'hyväksyä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1541,'omata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1547,'ilmiyö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1597,'ken','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1630,'presidentti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1639,'vertailu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1649,'puute','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1672,'kuvitella','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1673,'kokema','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1685,'voimassa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1715,'pidetä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1720,'näkemys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1721,'ajankohtainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1722,'ensi','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1735,'ala','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1743,'ilmeinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1777,'samastaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1797,'varten','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1802,'periaate','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1809,'runsas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1813,'kukin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1817,'ehkä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1823,'työstää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1827,'mikään','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1832,'tekemä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1837,'yhtä','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1874,'olo','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1878,'juuria','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1880,'tuottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1882,'tie','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1883,'ilma','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1889,'ilman','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1892,'juuri','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1896,'koettaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1904,'nykyään','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1924,'esittää','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1937,'ehdottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1941,'toivonut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1946,'molempi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1980,'no','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1983,'selvittämä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1985,'pureutua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1991,'uskoa','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (1994,'usko','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2018,'nykylainsäädäntö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2038,'vetää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2039,'päinvastoin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2041,'aloite','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2048,'etsiä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2104,'siis','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2126,'kannatettava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2136,'kolmannes','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2139,'tavallinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2140,'tasapainottaminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2142,'käyttäjä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2162,'vähintään','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2183,'ehdotus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2212,'pohja','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2214,'väärä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2226,'estää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2267,'kohtu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2276,'sallia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2287,'kulttuuri','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2305,'tappaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2313,'sallittu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2321,'takana','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2322,'menty','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2347,'yhtenä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2371,'työpaikka','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2380,'ensin','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2400,'puhe','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2453,'yleisö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2469,'mäkisalo-ropponen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2477,'heikentää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2489,'kaltainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2519,'rikkoa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2521,'tuote','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2529,'käyttäminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2593,'kuunnella','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2598,'tee','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2601,'asiantuntija','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2607,'te','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2618,'olka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2637,'ellei','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2653,'vanhentua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2656,'vanhentunut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2659,'yhteistyö','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2713,'sanoma','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2719,'vero','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2720,'laillinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2724,'konsti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2727,'ryhmä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2738,'kommentti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2742,'anteeksi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2747,'anne','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2781,'perusteellinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2795,'paneutua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2807,'raju','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2813,'määrittää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2841,'osapuoli','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2859,'kuluttaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2870,'kansainväli','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2897,'pöytä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2906,'järjestetty','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2912,'kirjoittaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2948,'tulkinta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2951,'pääministeri','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2970,'tavata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2977,'vihreä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2978,'kerto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (2982,'kansainvälistää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3017,'yritys','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3090,'arhinmäki','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3138,'kansantalous','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3149,'raja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3154,'tukema','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3171,'kiinnostaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3203,'kiinnostava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3274,'toistaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3282,'vastaus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3320,'opettua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3324,'väittää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3349,'kerrata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3375,'lla','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3402,'antanut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3460,'verkko','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3463,'elementti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3479,'opetus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3482,'valtaosa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3500,'kesken','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3516,'minkälainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3535,'kappale','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3543,'hyväksyttävä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3566,'hyväksyttää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3586,'asiallinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3625,'ongelmallinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3657,'edellyttää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3673,'järkevä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3751,'ministeri','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3759,'jaettu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3760,'vapaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3768,'tutkimus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3787,'jättää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3837,'juttu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3851,'harkita','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3852,'ylipää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3876,'kirjoitettu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3923,'hyväksytty','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (3989,'byrokratia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4128,'luulla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4178,'vähenemä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4198,'arvokas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4210,'saakka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4230,'vallita','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4263,'vallitseva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4304,'pekkarinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4318,'soini','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4330,'työtön','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4332,'välihuuto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4344,'valtiontalous','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4399,'kestävyysvaje','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4408,'vienti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4429,'saati','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4484,'istua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4490,'luvata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4499,'kritiikki','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4506,'miettimä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4512,'saavuttaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4514,'kylmä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4518,'erkki','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4534,'vanhanen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4536,'nauru','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4550,'perussuomalainen','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4551,'virtanen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4586,'ansaita','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4595,'vasemmistoliitto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4617,'kauas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4624,'keskusta','Nonstop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4638,'lisäys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4673,'tuntuva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4702,'milla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4721,'yrittäjyys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4731,'milloin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4791,'voittaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4832,'sisältö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4833,'tahaton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4889,'toimintaympäristö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4890,'takuu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4899,'tunnustaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4935,'tänään','Stop',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (4987,'kuulostaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5003,'tuottama','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5018,'mittari','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5061,'zyskowicz','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5126,'rohkea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5138,'kilpailukyky','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5163,'vasten','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5201,'luottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5202,'ben','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5212,'kuroa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5222,'umpi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5247,'tehokkuus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5277,'kannattanut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5296,'nuorisotyöttömyys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5312,'pystytty','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5325,'sopeutus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5443,'eduskunnas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5496,'sosialidemokraatti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5541,'luopuma','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5556,'luopua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5591,'vaje','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5594,'tarvinnut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5628,'väite','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5631,'lupaus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5633,'tuska','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5679,'mahdoton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5721,'energia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5747,'mainostaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5822,'ympäristöministeri','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5901,'väki','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5931,'koputtaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (5935,'puhuja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6026,'tiilikainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6085,'tuottaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6124,'turve','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6179,'turpea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6184,'iskeä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6213,'yksilöidä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6449,'neuvottelupöytä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6487,'hylätä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6564,'luova','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6589,'tunnistaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6594,'tunnistettava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6608,'nuorisotakuu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6629,'puu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6639,'sopeuttaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6654,'alas','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6658,'ansaitseva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6680,'alanen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6708,'myöten','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6793,'vastakkainasettelu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6881,'jonkunlainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6903,'tunnustettu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6916,'iskevä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6957,'epäselvä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6964,'yritetty','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6979,'heinonen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (6999,'onni','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7014,'kuunteli','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7029,'pyytänyt','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7042,'tuotos','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7111,'syöksyä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7130,'kasvattaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7146,'maalata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7156,'tukemassa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7210,'taittaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7214,'tasavalta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7273,'tuskin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7277,'ltä','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7349,'rkp','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7447,'lindström','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7535,'vuodella','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7607,'esityksinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7685,'gustafsson','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (7953,'ennenaikainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8062,'kukka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8065,'kukkia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8357,'luultava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8484,'kilpailla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8700,'kannattaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8816,'vähitellen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (8853,'ylijäämäinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9046,'tekijänoikeuslainsäädäntö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9834,'punnita','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9877,'elanto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9910,'osapuola','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9935,'jukka','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (9973,'teos','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10132,'kuula','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10167,'tarkalleen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10265,'harhaanjohtaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10280,'harhaanjohtava','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10311,'kopioida','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10352,'kuvailla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10372,'kauhea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10391,'aliarvioida','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10395,'piste','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10419,'voinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10439,'piirre','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10484,'lehti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10667,'lätkäistä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10695,'lievä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10698,'joutaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10767,'samankaltainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10961,'luvattu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (10978,'kone','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11044,'jättänyt','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11061,'kotiäiti','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11302,'askarruttaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11306,'askarruttama','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11577,'karkea','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11617,'juristi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11767,'poispäin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (11768,'poispää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12066,'tasapainottamistoimi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12281,'ihmetyttää','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12434,'maailmanmarkkina','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12837,'neljännes','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12859,'supistua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (12927,'voittanut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13031,'alatalo','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13078,'levy','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13123,'laiton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13183,'hylkäämä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13196,'hyljätä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13665,'palvelusektori','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (13679,'kumota','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14024,'luota','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14032,'asento','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14075,'mainostanut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14088,'lehman','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14102,'koululainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14104,'toivottu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14257,'kivihiili','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14357,'luopuminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (14558,'vuoropuhelu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15261,'asiaankuuluva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15400,'miksei','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15429,'eriävä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15485,'välttäminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15977,'eero','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (15994,'parhaillaan','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16055,'kirjallinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16203,'laillistaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16239,'hankaloittaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16325,'avauspuheenvuoro','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16444,'vahingollinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16545,'syöksy','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16647,'tasapainottomuus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16712,'pilkku','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16780,'upottaa','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16964,'höpö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (16986,'lupailla','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (17742,'oikeustila','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (17754,'kansalaisaloite','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (17848,'väärinkäsitys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (19047,'perusajatus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (19362,'kurominen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (19572,'oppikirja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (19835,'terä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (20070,'brothersin','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (20082,'taannoin','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (20331,'eriytyä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (20756,'tulkinnanvarainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (20870,'ladata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21033,'tähänastinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21252,'kohtuus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21357,'järjestelemä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21358,'järjestellä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21606,'luvaton','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (21811,'mattila','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (22192,'leiri','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (22369,'koulukunta','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (22600,'rujo','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (22867,'kohtuu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (24237,'rajanveto','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (24343,'allekirjoittaja','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (25058,'kopio','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (25808,'rikkomus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (25875,'luultu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (25876,'luullut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (27365,'klassinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (28139,'rauhala','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (28157,'tutkimuskäyttö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (28463,'juju','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (28500,'tarkoituksellinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (29248,'luvallinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (30967,'nuorisojärjestö','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (31062,'juoksu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (31297,'saamattomuus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (33476,'video','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (33792,'niitata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (34799,'tietämättömyys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (35908,'kokoomusnuori','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (36105,'tekijänoikeuslaki','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (43621,'windfall-verosta','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (44450,'temin','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (47503,'työttömyyskehitys','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (48623,'lisäsopeutus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (49654,'paneutuva','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (51586,'lupailtu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (53246,'punnittu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (55714,'nuorisojärjestöjänne','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (61729,'jaha','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (63592,'lupaillut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (64237,'bile','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (65310,'tekijänoikeus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (68302,'musiikki','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (71516,'klubi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (72550,'lätkä','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (82567,'tekijänoikeuksinen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (102307,'parodia','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (103997,'radio-ohjelma','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (104683,'hautajainen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (105712,'ruuvata','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (109130,'parkkiintua','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (109132,'parkkiintunut','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (122765,'skinnariin','Unknown',0);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (135807,'opetusmateriaali','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (136751,'rajanveto-ongelma','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (149068,'yksilöinyt','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (149309,'lataaminen','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (149694,'blogi','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (156140,'tutkimustarkoitus','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (185012,'sisältöpalvelu','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (213831,'kielentutkija','Unknown',1);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (319979,'pekonen','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (321365,'lisäsopeuttu','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347432,'edunmukainen','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347564,'youtube-videoita','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347565,'dj','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347566,'tekijänoikeussääntely','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347567,'suoratoisto','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347568,'youtube-videot','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347593,'kiistainalainen','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347679,'sisältöpalveluinen','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347680,'sairaanhoito-opiskelija','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347681,'tekstimassa','Unknown',NULL);
INSERT INTO `word` (`id`, `word`, `stop`, `known`) VALUES (347683,'kohtuullisuusesitys','Unknown',NULL);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_occurrence`
--

DROP TABLE IF EXISTS `word_occurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word_occurrence` (
  `word_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `n` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` int(11) DEFAULT NULL,
  `speaker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `word_id` (`word_id`),
  KEY `action_id` (`action_id`),
  KEY `speaker_id` (`speaker_id`),
  KEY `wordId_month` (`word_id`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=21807771 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_occurrence`
--

LOCK TABLES `word_occurrence` WRITE;
/*!40000 ALTER TABLE `word_occurrence` DISABLE KEYS */;
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10132,135522,1,21527260,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1,135522,1,21527261,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (88,135522,1,21527262,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (634,135522,1,21527263,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2371,135522,2,21527264,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1197,135522,1,21527265,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135522,1,21527266,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7130,135522,2,21527267,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (770,135522,1,21527268,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6124,135522,1,21527269,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (738,135522,2,21527270,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (95,135522,1,21527271,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14357,135522,1,21527272,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135522,1,21527273,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (299,135522,1,21527274,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5556,135522,1,21527275,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135522,1,21527276,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135522,2,21527277,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (775,135522,1,21527278,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135522,1,21527279,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (244,135522,1,21527280,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (717,135522,1,21527281,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1112,135522,2,21527282,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (450,135522,1,21527283,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (172,135522,1,21527284,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1414,135522,1,21527285,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135522,1,21527286,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11302,135522,1,21527287,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2727,135522,1,21527288,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5212,135522,1,21527289,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (372,135522,1,21527290,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (376,135522,1,21527291,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (254,135522,1,21527292,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135522,1,21527293,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4318,135522,1,21527294,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (34,135522,1,21527295,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (650,135522,1,21527296,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4344,135522,1,21527297,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2400,135522,1,21527298,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (43621,135522,2,21527299,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7014,135522,1,21527300,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2593,135522,1,21527301,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (258,135522,1,21527302,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (40,135522,1,21527303,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (846,135522,1,21527304,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (724,135522,1,21527305,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135522,6,21527306,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321,135522,1,21527307,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4506,135522,1,21527308,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (788,135522,2,21527309,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (191,135522,1,21527310,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3171,135522,2,21527311,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135522,1,21527312,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5222,135522,1,21527313,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7447,135522,3,21527314,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135522,1,21527315,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1937,135522,1,21527316,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135522,1,21527317,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (480,135522,1,21527318,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (481,135522,1,21527319,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (945,135522,1,21527320,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135522,1,21527321,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (702,135522,1,21527322,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (126,135522,1,21527323,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6964,135522,1,21527324,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (484,135522,1,21527325,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (557,135522,1,21527326,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (61,135522,1,21527327,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135522,1,21527328,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3203,135522,1,21527329,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5541,135522,1,21527330,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135522,1,21527331,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3751,135522,1,21527332,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6179,135522,1,21527333,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (890,135522,1,21527334,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (212,135522,1,21527335,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135522,3,21527336,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1341,135522,1,21527337,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (73,135522,2,21527338,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135522,1,21527339,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5591,135522,2,21527340,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (802,135522,1,21527341,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5443,135522,1,21527342,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11306,135522,1,21527343,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (351,135522,1,21527344,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4550,135522,1,21527345,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4935,135522,1,21527346,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135522,1,21527347,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1276,135522,1,21527348,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (500,135522,1,21527349,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (912,135522,1,21527350,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1309,135522,1,21527351,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16964,135522,1,21527352,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1924,135522,1,21527353,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4332,135522,1,21527354,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (84,135522,1,21527355,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (228,135522,1,21527356,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135522,1,21527357,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5296,135522,1,21527358,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (871,135522,1,21527359,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135531,1,21528231,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63592,135531,1,21528232,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (149,135531,1,21528233,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5061,135531,2,21528234,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (294,135531,1,21528235,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135531,2,21528236,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135531,1,21528237,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (682,135531,1,21528238,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (158,135531,1,21528239,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2713,135531,1,21528240,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (983,135531,2,21528241,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (444,135531,1,21528242,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5721,135531,1,21528243,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (821,135531,1,21528244,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (823,135531,1,21528245,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5931,135531,1,21528246,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135531,1,21528247,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4490,135531,1,21528248,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (34799,135531,1,21528249,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3138,135531,1,21528250,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2136,135531,1,21528251,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135531,3,21528252,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (61729,135531,1,21528253,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135531,1,21528254,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (458,135531,1,21528255,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (694,135531,1,21528256,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12281,135531,1,21528257,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2140,135531,1,21528258,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (34,135531,1,21528259,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5935,135531,1,21528260,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (40,135531,1,21528261,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (314,135531,1,21528262,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4536,135531,1,21528263,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (464,135531,2,21528264,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (908,135531,1,21528265,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1072,135531,1,21528266,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135531,1,21528267,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135531,5,21528268,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (190,135531,1,21528269,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6680,135531,1,21528270,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1735,135531,1,21528271,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1484,135531,1,21528272,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (608,135531,1,21528273,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1980,135531,1,21528274,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19362,135531,1,21528275,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (20331,135531,1,21528276,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135531,1,21528277,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (329,135531,1,21528278,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1033,135531,2,21528279,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6654,135531,1,21528280,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135531,1,21528281,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (202,135531,2,21528282,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4399,135531,1,21528283,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4304,135531,1,21528284,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1827,135531,1,21528285,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (948,135531,1,21528286,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1131,135531,1,21528287,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135531,3,21528288,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (620,135531,1,21528289,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1874,135531,1,21528290,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (215,135531,1,21528291,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (344,135531,1,21528292,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5138,135531,1,21528293,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2719,135531,1,21528294,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (219,135531,1,21528295,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (345,135531,1,21528296,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4408,135531,1,21528297,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (75,135531,2,21528298,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12859,135531,1,21528299,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (711,135531,1,21528300,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (77,135531,1,21528301,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5202,135531,1,21528302,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10961,135531,1,21528303,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5822,135531,1,21528304,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135531,1,21528305,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (500,135531,1,21528306,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (84,135531,1,21528307,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6629,135531,2,21528308,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (634,135531,1,21528309,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6124,135531,2,21528310,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135531,2,21528311,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (240,135531,1,21528312,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (31297,135531,1,21528313,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (97,135531,2,21528314,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135531,1,21528315,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135531,3,21528316,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (243,135531,1,21528317,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8484,135531,1,21528318,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135531,1,21528319,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (51586,135531,1,21528320,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2807,135531,1,21528321,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1058,135531,1,21528322,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135531,1,21528323,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16986,135531,1,21528324,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12434,135531,1,21528325,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2727,135531,2,21528326,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (967,135531,1,21528327,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16647,135531,1,21528328,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14257,135531,1,21528329,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11767,135531,1,21528330,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135531,1,21528331,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11768,135531,1,21528332,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4721,135531,1,21528333,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (256,135531,1,21528334,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1068,135531,1,21528335,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1069,135531,1,21528336,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2477,135531,1,21528337,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (114,135531,2,21528338,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (788,135531,1,21528339,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135531,1,21528340,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135531,2,21528341,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (550,135531,1,21528342,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135531,3,21528343,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (398,135531,1,21528344,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135531,1,21528345,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5496,135531,1,21528346,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (753,135531,1,21528347,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135531,3,21528348,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6179,135531,1,21528349,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (412,135531,1,21528350,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4624,135531,1,21528351,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (415,135531,1,21528352,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (565,135531,1,21528353,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (279,135531,2,21528354,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15400,135531,1,21528355,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (137,135531,1,21528356,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (416,135531,1,21528357,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135531,1,21528358,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (802,135531,1,21528359,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (139,135531,1,21528360,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1722,135531,1,21528361,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2607,135531,1,21528362,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5018,135531,2,21528363,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321365,135531,1,21528364,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (148,135531,1,21528365,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4332,135531,1,21528366,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135531,1,21528367,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135531,1,21528368,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (48623,135531,1,21528369,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (291,135531,1,21528370,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135538,1,21528969,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1,135538,1,21528970,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5594,135538,1,21528971,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16545,135538,1,21528972,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5061,135538,1,21528973,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (72550,135538,1,21528974,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (294,135538,1,21528975,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135538,2,21528976,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (770,135538,1,21528977,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (873,135538,1,21528978,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135538,1,21528979,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (738,135538,1,21528980,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2713,135538,1,21528981,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4210,135538,1,21528982,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (983,135538,1,21528983,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (299,135538,1,21528984,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (300,135538,1,21528985,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7111,135538,1,21528986,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (170,135538,1,21528987,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135538,1,21528988,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1244,135538,1,21528989,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3402,135538,1,21528990,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8816,135538,1,21528991,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (26,135538,1,21528992,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10484,135538,1,21528993,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4534,135538,1,21528994,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135538,1,21528995,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (839,135538,1,21528996,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (37,135538,1,21528997,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (40,135538,2,21528998,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1072,135538,1,21528999,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (122765,135538,1,21529000,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135538,1,21529001,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135538,4,21529002,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (190,135538,1,21529003,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321,135538,1,21529004,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (698,135538,1,21529005,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1076,135538,1,21529006,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14088,135538,1,21529007,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (608,135538,1,21529008,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135538,1,21529009,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (480,135538,1,21529010,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135538,1,21529011,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3282,135538,1,21529012,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (329,135538,1,21529013,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2212,135538,1,21529014,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (202,135538,1,21529015,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (335,135538,1,21529016,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5312,135538,1,21529017,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2618,135538,1,21529018,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1827,135538,1,21529019,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135538,1,21529020,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135538,4,21529021,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3837,135538,1,21529022,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (620,135538,3,21529023,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (215,135538,3,21529024,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (344,135538,1,21529025,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (762,135538,1,21529026,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15977,135538,1,21529027,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (220,135538,1,21529028,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2970,135538,1,21529029,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (75,135538,1,21529030,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (77,135538,1,21529031,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5202,135538,1,21529032,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (225,135538,1,21529033,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (351,135538,1,21529034,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8853,135538,1,21529035,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135538,1,21529036,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (500,135538,1,21529037,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (912,135538,1,21529038,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1502,135538,1,21529039,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (228,135538,1,21529040,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2347,135538,1,21529041,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (20070,135538,1,21529042,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6026,135538,1,21529043,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10439,135538,1,21529044,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5277,135538,1,21529045,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (515,135538,1,21529046,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2978,135538,1,21529047,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (518,135538,1,21529048,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347432,135538,1,21529049,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (239,135538,1,21529050,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135538,2,21529051,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (240,135538,5,21529052,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135538,1,21529053,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135538,4,21529054,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (243,135538,1,21529055,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (244,135538,1,21529056,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135538,1,21529057,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5325,135538,1,21529058,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (103997,135538,1,21529059,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135538,1,21529060,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (246,135538,1,21529061,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (253,135538,1,21529062,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135538,1,21529063,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (256,135538,2,21529064,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6639,135538,1,21529065,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6881,135538,1,21529066,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1882,135538,1,21529067,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1324,135538,1,21529068,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10667,135538,1,21529069,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (546,135538,1,21529070,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135538,3,21529071,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (548,135538,1,21529072,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2598,135538,1,21529073,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135538,3,21529074,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (398,135538,1,21529075,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5163,135538,1,21529076,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (265,135538,1,21529077,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135538,1,21529078,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1261,135538,1,21529079,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10698,135538,1,21529080,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (557,135538,1,21529081,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5631,135538,1,21529082,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (558,135538,1,21529083,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (973,135538,1,21529084,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (25058,135538,1,21529085,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (409,135538,1,21529086,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7535,135538,1,21529087,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (975,135538,1,21529088,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (279,135538,2,21529089,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (137,135538,1,21529090,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (416,135538,1,21529091,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12066,135538,1,21529092,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135538,1,21529093,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (139,135538,1,21529094,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1722,135538,1,21529095,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (572,135538,1,21529096,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2607,135538,2,21529097,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (574,135538,1,21529098,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1183,135538,1,21529099,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (868,135538,1,21529100,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5679,135538,1,21529101,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135538,1,21529102,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135538,1,21529103,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (291,135538,3,21529104,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (634,135632,1,21541643,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1453,135632,1,21541644,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135632,1,21541645,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8,135632,1,21541646,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9,135632,1,21541647,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5747,135632,1,21541648,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135632,1,21541649,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (155,135632,1,21541650,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4617,135632,1,21541651,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12837,135632,1,21541652,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4178,135632,1,21541653,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1597,135632,1,21541654,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (983,135632,1,21541655,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135632,2,21541656,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (240,135632,1,21541657,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1141,135632,1,21541658,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135632,1,21541659,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135632,2,21541660,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1281,135632,1,21541661,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (243,135632,1,21541662,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (964,135632,1,21541663,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5931,135632,1,21541664,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135632,2,21541665,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (47503,135632,1,21541666,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (248,135632,1,21541667,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (647,135632,1,21541668,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3375,135632,1,21541669,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (29,135632,1,21541670,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (252,135632,1,21541671,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (181,135632,2,21541672,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135632,1,21541673,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (22600,135632,1,21541674,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (696,135632,1,21541675,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (111,135632,1,21541676,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7210,135632,2,21541677,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135632,1,21541678,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (190,135632,1,21541679,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (788,135632,1,21541680,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13665,135632,1,21541681,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2951,135632,1,21541682,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (473,135632,1,21541683,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (44450,135632,1,21541684,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10167,135632,1,21541685,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135632,1,21541686,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135632,1,21541687,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (661,135632,1,21541688,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3852,135632,1,21541689,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10695,135632,1,21541690,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4889,135632,1,21541691,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135632,4,21541692,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14075,135632,1,21541693,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135632,3,21541694,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135632,1,21541695,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1328,135632,1,21541696,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3282,135632,1,21541697,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (58,135632,1,21541698,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1034,135632,1,21541699,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (127,135632,1,21541700,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135632,1,21541701,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (202,135632,1,21541702,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (973,135632,1,21541703,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (670,135632,1,21541704,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (271,135632,1,21541705,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (335,135632,1,21541706,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1809,135632,1,21541707,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1299,135632,1,21541708,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (798,135632,1,21541709,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135632,1,21541710,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135632,1,21541711,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (72,135632,1,21541712,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (345,135632,1,21541713,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135632,1,21541714,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4638,135632,1,21541715,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (76,135632,1,21541716,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (139,135632,1,21541717,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4330,135632,3,21541718,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2607,135632,2,21541719,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19835,135632,1,21541720,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (868,135632,1,21541721,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (227,135632,2,21541722,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (735,135632,1,21541723,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135632,1,21541724,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (231,135632,1,21541725,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1403,135632,1,21541726,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5296,135632,1,21541727,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (233,135632,1,21541728,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (291,135632,1,21541729,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1685,135632,1,21541730,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6608,135632,1,21541731,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135636,1,21542050,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (89,135636,1,21542051,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1453,135636,1,21542052,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7685,135636,1,21542053,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8,135636,1,21542054,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135636,1,21542055,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135636,1,21542056,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9935,135636,1,21542057,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (591,135636,1,21542058,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14,135636,1,21542059,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (105712,135636,1,21542060,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2724,135636,1,21542061,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1141,135636,3,21542062,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1878,135636,1,21542063,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1281,135636,1,21542064,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135636,1,21542065,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (717,135636,1,21542066,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (938,135636,1,21542067,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135636,1,21542068,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1203,135636,1,21542069,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135636,1,21542070,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (180,135636,1,21542071,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (967,135636,1,21542072,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135636,1,21542073,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (181,135636,1,21542074,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7146,135636,1,21542075,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (458,135636,1,21542076,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1880,135636,1,21542077,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135636,1,21542078,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (696,135636,1,21542079,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (723,135636,1,21542080,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1882,135636,1,21542081,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (314,135636,2,21542082,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135636,1,21542083,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135636,4,21542084,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1883,135636,1,21542085,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (392,135636,2,21542086,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135636,1,21542087,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2598,135636,1,21542088,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135636,6,21542089,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135636,1,21542090,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (31062,135636,1,21542091,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (265,135636,1,21542092,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (702,135636,1,21542093,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (60,135636,1,21542094,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (127,135636,1,21542095,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1889,135636,1,21542096,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135636,1,21542097,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3751,135636,1,21542098,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (132,135636,1,21542099,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14032,135636,1,21542100,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1299,135636,1,21542101,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6916,135636,1,21542102,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (409,135636,1,21542103,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135636,1,21542104,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (69,135636,1,21542105,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (217,135636,1,21542106,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1946,135636,1,21542107,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (72,135636,1,21542108,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1342,135636,1,21542109,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (862,135636,1,21542110,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135636,1,21542111,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5901,135636,1,21542112,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1892,135636,1,21542113,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3017,135636,2,21542114,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4330,135636,1,21542115,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (627,135636,1,21542116,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2607,135636,2,21542117,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135636,1,21542118,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6184,135636,1,21542119,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135636,3,21542120,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135636,1,21542121,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (233,135636,1,21542122,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1685,135636,1,21542123,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6608,135636,2,21542124,181,101);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135665,2,21545175,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2521,135665,1,21545176,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2841,135665,1,21545177,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (873,135665,1,21545178,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1239,135665,2,21545179,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8062,135665,1,21545180,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14,135665,1,21545181,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14104,135665,1,21545182,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6903,135665,1,21545183,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (18,135665,1,21545184,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (25876,135665,1,21545185,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3535,135665,1,21545186,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (596,135665,1,21545187,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7273,135665,1,21545188,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21,135665,2,21545189,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1904,135665,1,21545190,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (26,135665,2,21545191,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11044,135665,1,21545192,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1372,135665,1,21545193,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (29,135665,1,21545194,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135665,1,21545195,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (602,135665,2,21545196,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (32,135665,2,21545197,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2859,135665,1,21545198,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (696,135665,1,21545199,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1067,135665,1,21545200,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (928,135665,2,21545201,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36,135665,1,21545202,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8065,135665,1,21545203,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10978,135665,1,21545204,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13078,135665,1,21545205,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1216,135665,1,21545206,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (317,135665,3,21545207,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135665,1,21545208,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135665,6,21545209,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (605,135665,1,21545210,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321,135665,1,21545211,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4506,135665,1,21545212,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11617,135665,1,21545213,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1076,135665,1,21545214,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (324,135665,1,21545215,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (22192,135665,1,21545216,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (608,135665,1,21545217,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1980,135665,1,21545218,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (326,135665,1,21545219,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2742,135665,1,21545220,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (792,135665,1,21545221,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1259,135665,2,21545222,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135665,5,21545223,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4832,135665,1,21545224,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135665,2,21545225,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21252,135665,2,21545226,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1392,135665,1,21545227,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8357,135665,1,21545228,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16444,135665,1,21545229,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1301,135665,1,21545230,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (71,135665,1,21545231,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (623,135665,1,21545232,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (861,135665,1,21545233,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4512,135665,1,21545234,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16780,135665,1,21545235,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (75,135665,1,21545236,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (711,135665,1,21545237,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (76,135665,1,21545238,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (348,135665,1,21545239,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (627,135665,2,21545240,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1095,135665,1,21545241,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2720,135665,2,21545242,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135665,1,21545243,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (86,135665,2,21545244,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (68302,135665,1,21545245,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (358,135665,1,21545246,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (634,135665,2,21545247,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (958,135665,2,21545248,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14102,135665,1,21545249,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1991,135665,1,21545250,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1314,135665,1,21545251,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (95,135665,1,21545252,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (96,135665,1,21545253,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347564,135665,1,21545254,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (64237,135665,1,21545255,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (33476,135665,1,21545256,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1035,135665,1,21545257,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (640,135665,1,21545258,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1994,135665,1,21545259,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2104,135665,1,21545260,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3759,135665,1,21545261,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (717,135665,1,21545262,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (646,135665,1,21545263,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (101,135665,1,21545264,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135665,1,21545265,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (647,135665,1,21545266,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16055,135665,1,21545267,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1880,135665,1,21545268,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135665,1,21545269,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (379,135665,1,21545270,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (651,135665,2,21545271,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (27365,135665,1,21545272,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1212,135665,1,21545273,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (383,135665,1,21545274,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (783,135665,1,21545275,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6085,135665,1,21545276,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (114,135665,1,21545277,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (115,135665,1,21545278,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1883,135665,1,21545279,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1163,135665,1,21545280,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4429,135665,1,21545281,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (849,135665,1,21545282,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135665,6,21545283,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1802,135665,2,21545284,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1260,135665,1,21545285,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1168,135665,1,21545286,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11577,135665,1,21545287,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13123,135665,2,21545288,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (400,135665,1,21545289,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1261,135665,1,21545290,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2601,135665,1,21545291,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (886,135665,1,21545292,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (667,135665,1,21545293,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1889,135665,1,21545294,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7214,135665,1,21545295,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2813,135665,1,21545296,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6449,135665,1,21545297,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1630,135665,1,21545298,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (144,135665,1,21545299,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (423,135665,2,21545300,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347565,135665,2,21545301,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6957,135665,1,21545302,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (930,135665,2,21545303,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135665,4,21545304,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135665,2,21545305,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (426,135665,1,21545306,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7042,135665,1,21545307,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1047,135665,1,21545308,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (149,135665,1,21545309,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (586,135665,2,21545310,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135665,2,21545311,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (934,135665,1,21545312,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5003,135665,1,21545313,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135665,1,21545314,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5247,135665,1,21545315,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2018,135665,2,21545316,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (592,135665,1,21545317,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347566,135665,1,21545318,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3787,135665,1,21545319,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3673,135665,1,21545320,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3460,135665,1,21545321,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (25875,135665,1,21545322,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1284,135665,4,21545323,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1113,135665,1,21545324,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4899,135665,1,21545325,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (776,135665,1,21545326,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (938,135665,1,21545327,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1203,135665,1,21545328,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135665,1,21545329,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2139,135665,1,21545330,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (458,135665,1,21545331,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (694,135665,1,21545332,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36105,135665,2,21545333,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15429,135665,1,21545334,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (880,135665,1,21545335,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (942,135665,1,21545336,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (462,135665,3,21545337,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9910,135665,1,21545338,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (109130,135665,1,21545339,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9973,135665,1,21545340,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2142,135665,5,21545341,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (464,135665,2,21545342,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1072,135665,1,21545343,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2948,135665,1,21545344,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (191,135665,1,21545345,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (698,135665,1,21545346,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1124,135665,1,21545347,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135665,1,21545348,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2267,135665,1,21545349,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (196,135665,1,21545350,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14558,135665,1,21545351,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1033,135665,1,21545352,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (702,135665,1,21545353,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6999,135665,1,21545354,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2653,135665,1,21545355,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3349,135665,1,21545356,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1672,135665,1,21545357,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (11061,135665,1,21545358,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2618,135665,1,21545359,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1827,135665,1,21545360,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135665,1,21545361,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (890,135665,1,21545362,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (488,135665,1,21545363,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135665,1,21545364,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1777,135665,1,21545365,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2656,135665,1,21545366,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10419,135665,1,21545367,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (20870,135665,1,21545368,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2659,135665,1,21545369,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10372,135665,1,21545370,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (223,135665,1,21545371,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (109132,135665,1,21545372,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6793,135665,1,21545373,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1098,135665,1,21545374,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (764,135665,1,21545375,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (500,135665,1,21545376,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1309,135665,1,21545377,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3989,135665,1,21545378,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7277,135665,1,21545379,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4128,135665,2,21545380,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2637,135665,1,21545381,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (507,135665,2,21545382,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347567,135665,1,21545383,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10439,135665,1,21545384,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (514,135665,1,21545385,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (739,135665,1,21545386,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135665,6,21545387,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (65310,135665,1,21545388,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347568,135665,1,21545389,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3500,135665,1,21545390,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2287,135665,2,21545391,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (521,135665,1,21545392,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135665,4,21545393,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135665,1,21545394,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10265,135665,1,21545395,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (744,135665,1,21545396,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (967,135665,2,21545397,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (252,135665,1,21545398,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (835,135665,2,21545399,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (536,135665,1,21545400,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (71516,135665,1,21545401,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (255,135665,1,21545402,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (256,135665,1,21545403,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (541,135665,2,21545404,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (22867,135665,1,21545405,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1069,135665,3,21545406,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1071,135665,1,21545407,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (542,135665,1,21545408,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6589,135665,1,21545409,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (883,135665,1,21545410,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (149694,135665,1,21545411,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3516,135665,1,21545412,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135665,1,21545413,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (20082,135665,1,21545414,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9046,135665,1,21545415,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (264,135665,1,21545416,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6594,135665,1,21545417,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (265,135665,1,21545418,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1170,135665,1,21545419,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3149,135665,1,21545420,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (973,135665,1,21545421,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (271,135665,1,21545422,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2453,135665,1,21545423,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1338,135665,1,21545424,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5633,135665,1,21545425,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10280,135665,1,21545426,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (673,135665,1,21545427,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16325,135665,1,21545428,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (862,135665,3,21545429,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1541,135665,1,21545430,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1720,135665,2,21545431,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (569,135665,1,21545432,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2747,135665,1,21545433,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135665,1,21545434,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1813,135665,1,21545435,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (572,135665,1,21545436,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1274,135665,1,21545437,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (286,135665,1,21545438,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (22369,135665,1,21545439,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4484,135665,1,21545440,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16203,135665,1,21545441,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135690,1,21548121,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2841,135690,1,21548122,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3324,135690,1,21548123,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (872,135690,1,21548124,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1197,135690,1,21548125,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135690,1,21548126,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (873,135690,1,21548127,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135690,1,21548128,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (770,135690,1,21548129,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (33792,135690,1,21548130,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (637,135690,1,21548131,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14,135690,1,21548132,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (518,135690,1,21548133,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2321,135690,1,21548134,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2897,135690,1,21548135,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1055,135690,1,21548136,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135690,1,21548137,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (299,135690,1,21548138,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (640,135690,2,21548139,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5126,135690,1,21548140,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1141,135690,1,21548141,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135690,1,21548142,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135690,3,21548143,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135690,1,21548144,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (775,135690,1,21548145,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (244,135690,1,21548146,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (450,135690,1,21548147,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (170,135690,2,21548148,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4499,135690,1,21548149,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (966,135690,1,21548150,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (367,135690,1,21548151,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21,135690,3,21548152,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (598,135690,1,21548153,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135690,1,21548154,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (180,135690,1,21548155,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14024,135690,1,21548156,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7607,135690,1,21548157,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135690,1,21548158,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36105,135690,1,21548159,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (376,135690,1,21548160,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3090,135690,1,21548161,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135690,1,21548162,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (32,135690,1,21548163,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1423,135690,1,21548164,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (17754,135690,2,21548165,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (256,135690,1,21548166,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (749,135690,1,21548167,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (383,135690,1,21548168,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (314,135690,2,21548169,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (846,135690,1,21548170,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (114,135690,1,21548171,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135690,2,21548172,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (190,135690,1,21548173,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4595,135690,1,21548174,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3274,135690,1,21548175,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135690,1,21548176,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (192,135690,1,21548177,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135690,1,21548178,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7156,135690,1,21548179,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (28463,135690,1,21548180,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (791,135690,1,21548181,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135690,5,21548182,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (263,135690,1,21548183,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (24343,135690,2,21548184,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (398,135690,1,21548185,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2183,135690,1,21548186,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (481,135690,1,21548187,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30967,135690,3,21548188,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (896,135690,1,21548189,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (327,135690,1,21548190,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135690,1,21548191,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13679,135690,1,21548192,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5496,135690,1,21548193,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1387,135690,1,21548194,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (666,135690,1,21548195,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (126,135690,1,21548196,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (755,135690,1,21548197,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135690,1,21548198,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3751,135690,1,21548199,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347593,135690,1,21548200,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (335,135690,1,21548201,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10391,135690,1,21548202,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135690,1,21548203,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (890,135690,1,21548204,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7349,135690,1,21548205,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135690,4,21548206,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (35908,135690,1,21548207,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (73,135690,1,21548208,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (762,135690,1,21548209,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (862,135690,1,21548210,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (416,135690,1,21548211,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1720,135690,1,21548212,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135690,1,21548213,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (281,135690,1,21548214,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3154,135690,1,21548215,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5201,135690,2,21548216,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (55714,135690,1,21548217,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (349,135690,1,21548218,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4550,135690,1,21548219,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2607,135690,2,21548220,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2041,135690,1,21548221,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135690,1,21548222,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1896,135690,1,21548223,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1502,135690,1,21548224,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4514,135690,1,21548225,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135690,1,21548226,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (766,135690,1,21548227,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2977,135690,1,21548228,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135707,3,21551621,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (17848,135707,1,21551622,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1547,135707,1,21551623,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (586,135707,2,21551624,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319979,135707,1,21551625,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6213,135707,1,21551626,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (104683,135707,2,21551627,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135707,2,21551628,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8,135707,2,21551629,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135707,1,21551630,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (873,135707,2,21551631,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (136751,135707,1,21551632,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (770,135707,2,21551633,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1279,135707,1,21551634,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9877,135707,1,21551635,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19047,135707,1,21551636,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14,135707,1,21551637,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7953,135707,2,21551638,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1109,135707,1,21551639,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347566,135707,1,21551640,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (299,135707,1,21551641,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (166,135707,1,21551642,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2781,135707,1,21551643,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (821,135707,2,21551644,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (740,135707,1,21551645,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (450,135707,1,21551646,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1284,135707,1,21551647,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (776,135707,1,21551648,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (302,135707,1,21551649,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (172,135707,1,21551650,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135707,1,21551651,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (595,135707,1,21551652,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1285,135707,1,21551653,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2738,135707,1,21551654,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (177,135707,1,21551655,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21033,135707,1,21551656,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135707,4,21551657,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (180,135707,1,21551658,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (26,135707,1,21551659,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2795,135707,1,21551660,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4198,135707,1,21551661,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (29,135707,1,21551662,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (30,135707,1,21551663,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36105,135707,2,21551664,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (458,135707,1,21551665,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (693,135707,1,21551666,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1041,135707,1,21551667,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (32,135707,1,21551668,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (34,135707,1,21551669,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (156140,135707,1,21551670,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (17754,135707,5,21551671,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (149309,135707,1,21551672,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (840,135707,1,21551673,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1067,135707,1,21551674,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (311,135707,1,21551675,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36,135707,1,21551676,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (37,135707,1,21551677,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9973,135707,1,21551678,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (314,135707,2,21551679,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1479,135707,1,21551680,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (317,135707,1,21551681,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135707,1,21551682,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135707,5,21551683,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (605,135707,1,21551684,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321,135707,1,21551685,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (190,135707,1,21551686,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (469,135707,1,21551687,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3876,135707,1,21551688,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1076,135707,1,21551689,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1124,135707,1,21551690,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135707,1,21551691,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4702,135707,1,21551692,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1823,135707,1,21551693,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1259,135707,2,21551694,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (945,135707,2,21551695,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (197,135707,1,21551696,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (327,135707,1,21551697,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135707,4,21551698,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (12927,135707,1,21551699,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (702,135707,1,21551700,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1296,135707,1,21551701,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1033,135707,2,21551702,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1386,135707,1,21551703,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2214,135707,1,21551704,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135707,2,21551705,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3479,135707,1,21551706,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4833,135707,1,21551707,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3482,135707,1,21551708,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (204,135707,2,21551709,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1392,135707,1,21551710,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1037,135707,1,21551711,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1672,135707,1,21551712,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1083,135707,1,21551713,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (337,135707,1,21551714,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (798,135707,2,21551715,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1985,135707,1,21551716,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2529,135707,1,21551717,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (948,135707,1,21551718,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1131,135707,1,21551719,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135707,1,21551720,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3625,135707,1,21551721,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (488,135707,2,21551722,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (212,135707,1,21551723,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213,135707,3,21551724,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2469,135707,1,21551725,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4791,135707,1,21551726,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2276,135707,1,21551727,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (71,135707,1,21551728,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (861,135707,1,21551729,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (25808,135707,1,21551730,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (220,135707,1,21551731,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10419,135707,1,21551732,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21357,135707,1,21551733,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (75,135707,1,21551734,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3586,135707,1,21551735,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (76,135707,1,21551736,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (348,135707,2,21551737,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2038,135707,1,21551738,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (626,135707,1,21551739,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (865,135707,1,21551740,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (627,135707,2,21551741,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (49654,135707,1,21551742,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2720,135707,1,21551743,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (185012,135707,1,21551744,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2039,135707,1,21551745,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2041,135707,1,21551746,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4551,135707,1,21551747,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (869,135707,1,21551748,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135707,1,21551749,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19572,135707,1,21551750,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (912,135707,2,21551751,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1924,135707,2,21551752,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15485,135707,1,21551753,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (230,135707,1,21551754,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (86,135707,2,21551755,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (233,135707,1,21551756,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (88,135707,1,21551757,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4518,135707,1,21551758,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1312,135707,1,21551759,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (634,135707,2,21551760,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21358,135707,1,21551761,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1406,135707,1,21551762,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347679,135707,1,21551763,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2162,135707,1,21551764,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1743,135707,1,21551765,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2226,135707,1,21551766,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (515,135707,1,21551767,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (17742,135707,1,21551768,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (96,135707,1,21551769,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (135807,135707,1,21551770,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (518,135707,3,21551771,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (28157,135707,2,21551772,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347680,135707,1,21551773,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (239,135707,1,21551774,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (65310,135707,1,21551775,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135707,4,21551776,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2322,135707,1,21551777,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (640,135707,2,21551778,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135707,4,21551779,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (822,135707,1,21551780,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135707,1,21551781,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (244,135707,1,21551782,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (717,135707,2,21551783,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3760,135707,1,21551784,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1414,135707,1,21551785,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (646,135707,3,21551786,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135707,1,21551787,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21811,135707,1,21551788,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (526,135707,1,21551789,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (246,135707,1,21551790,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (371,135707,1,21551791,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (376,135707,1,21551792,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1880,135707,1,21551793,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135707,1,21551794,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1150,135707,1,21551795,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (149068,135707,1,21551796,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (111,135707,1,21551797,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (969,135707,1,21551798,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1069,135707,4,21551799,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (113,135707,1,21551800,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6589,135707,1,21551801,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (29248,135707,1,21551802,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (785,135707,1,21551803,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1832,135707,1,21551804,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (115,135707,1,21551805,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1218,135707,2,21551806,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10311,135707,1,21551807,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (658,135707,1,21551808,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1163,135707,1,21551809,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (261,135707,2,21551810,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135707,1,21551811,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (28139,135707,2,21551812,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13031,135707,1,21551813,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1222,135707,2,21551814,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (550,135707,1,21551815,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (5628,135707,1,21551816,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (791,135707,1,21551817,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135707,5,21551818,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (24237,135707,1,21551819,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2912,135707,1,21551820,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (896,135707,1,21551821,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1031,135707,1,21551822,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (265,135707,1,21551823,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135707,1,21551824,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (555,135707,1,21551825,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3768,135707,1,21551826,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (126,135707,1,21551827,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1941,135707,1,21551828,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (127,135707,1,21551829,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3149,135707,1,21551830,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (973,135707,1,21551831,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1172,135707,1,21551832,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135707,1,21551833,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4890,135707,1,21551834,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6564,135707,1,21551835,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (408,135707,1,21551836,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (273,135707,1,21551837,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1715,135707,1,21551838,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (20756,135707,1,21551839,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16239,135707,1,21551840,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (672,135707,1,21551841,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (565,135707,1,21551842,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3320,135707,1,21551843,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2126,135707,1,21551844,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (416,135707,1,21551845,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135707,1,21551846,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (28500,135707,1,21551847,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1721,135707,1,21551848,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (21606,135707,1,21551849,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15261,135707,1,21551850,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4731,135707,1,21551851,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2313,135707,1,21551852,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1817,135707,1,21551853,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (145,135707,1,21551854,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (213831,135707,1,21551855,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3657,135707,1,21551856,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2519,135707,1,21551857,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (148,135707,1,21551858,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6957,135707,1,21551859,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347681,135707,3,21551860,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135707,4,21551861,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135707,3,21551862,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (102307,135707,1,21551863,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2489,135707,1,21551864,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4,135710,1,21552274,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (933,135710,1,21552275,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (433,135710,1,21552276,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (435,135710,1,21552277,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (873,135710,1,21552278,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (14,135710,1,21552279,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15,135710,1,21552280,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (299,135710,1,21552281,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2781,135710,1,21552282,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1649,135710,2,21552283,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10352,135710,1,21552284,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1284,135710,1,21552285,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16,135710,1,21552286,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (170,135710,2,21552287,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (19,135710,2,21552288,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4987,135710,1,21552289,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (53246,135710,1,21552290,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (8700,135710,1,21552291,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3463,135710,1,21552292,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (178,135710,1,21552293,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (26,135710,1,21552294,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (989,135710,1,21552295,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7607,135710,1,21552296,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2795,135710,1,21552297,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9834,135710,1,21552298,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (29,135710,1,21552299,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36105,135710,2,21552300,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (458,135710,2,21552301,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (32,135710,1,21552302,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (17754,135710,5,21552303,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1067,135710,1,21552304,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (311,135710,1,21552305,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (36,135710,1,21552306,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1356,135710,1,21552307,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (314,135710,1,21552308,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3851,135710,1,21552309,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1479,135710,1,21552310,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (317,135710,1,21552311,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (318,135710,1,21552312,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (319,135710,4,21552313,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (321,135710,2,21552314,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2380,135710,1,21552315,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (323,135710,1,21552316,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (324,135710,1,21552317,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (192,135710,1,21552318,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (608,135710,2,21552319,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (15994,135710,1,21552320,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (326,135710,1,21552321,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13183,135710,1,21552322,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (195,135710,1,21552323,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (13196,135710,1,21552324,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6487,135710,1,21552325,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (945,135710,1,21552326,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (327,135710,1,21552327,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (328,135710,3,21552328,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1983,135710,1,21552329,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2870,135710,1,21552330,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (58,135710,1,21552331,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3543,135710,1,21552332,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (63,135710,3,21552333,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6658,135710,1,21552334,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (204,135710,2,21552335,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (854,135710,1,21552336,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (206,135710,1,21552337,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3751,135710,1,21552338,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1393,135710,1,21552339,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1673,135710,1,21552340,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (798,135710,1,21552341,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (706,135710,1,21552342,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4230,135710,1,21552343,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (210,135710,3,21552344,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (68,135710,1,21552345,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (800,135710,1,21552346,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (344,135710,1,21552347,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (73,135710,1,21552348,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (861,135710,1,21552349,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4586,135710,1,21552350,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (75,135710,1,21552351,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (348,135710,1,21552352,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (627,135710,1,21552353,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (82567,135710,1,21552354,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4935,135710,1,21552355,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (355,135710,1,21552356,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (500,135710,2,21552357,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (912,135710,1,21552358,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (84,135710,1,21552359,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10439,135710,1,21552360,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (513,135710,1,21552361,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (515,135710,1,21552362,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1991,135710,1,21552363,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (96,135710,2,21552364,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6708,135710,1,21552365,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (238,135710,1,21552366,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (65310,135710,2,21552367,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3923,135710,1,21552368,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2048,135710,1,21552369,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (640,135710,1,21552370,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1994,135710,1,21552371,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10395,135710,1,21552372,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (641,135710,1,21552373,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (241,135710,6,21552374,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2982,135710,1,21552375,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4673,135710,1,21552376,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (643,135710,1,21552377,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (244,135710,1,21552378,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (101,135710,1,21552379,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (365,135710,2,21552380,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (646,135710,1,21552381,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (366,135710,1,21552382,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (525,135710,1,21552383,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (527,135710,1,21552384,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (647,135710,1,21552385,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (372,135710,2,21552386,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (376,135710,1,21552387,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3090,135710,1,21552388,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (254,135710,1,21552389,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (108,135710,1,21552390,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (109,135710,1,21552391,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (969,135710,1,21552392,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2906,135710,1,21552393,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (111,135710,1,21552394,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1523,135710,3,21552395,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (383,135710,1,21552396,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1069,135710,1,21552397,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (783,135710,3,21552398,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (785,135710,1,21552399,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1797,135710,1,21552400,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (114,135710,1,21552401,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (2305,135710,1,21552402,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1359,135710,1,21552403,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (117,135710,1,21552404,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (725,135710,1,21552405,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (848,135710,1,21552406,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (917,135710,1,21552407,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (16712,135710,1,21552408,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (263,135710,1,21552409,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (396,135710,6,21552410,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (9046,135710,1,21552411,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1168,135710,1,21552412,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (794,135710,1,21552413,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (347683,135710,1,21552414,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (400,135710,2,21552415,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (667,135710,1,21552416,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1172,135710,1,21552417,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (4263,135710,1,21552418,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (130,135710,1,21552419,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (409,135710,1,21552420,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (563,135710,1,21552421,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (3566,135710,1,21552422,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (6979,135710,1,21552423,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1341,135710,1,21552424,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (279,135710,1,21552425,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1837,135710,1,21552426,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1720,135710,2,21552427,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (280,135710,1,21552428,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (802,135710,1,21552429,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1343,135710,1,21552430,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (10767,135710,1,21552431,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (145,135710,1,21552432,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (7029,135710,1,21552433,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (423,135710,1,21552434,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (424,135710,2,21552435,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (1639,135710,1,21552436,181,77);
INSERT INTO `word_occurrence` (`word_id`, `action_id`, `n`, `id`, `month`, `speaker_id`) VALUES (427,135710,2,21552437,181,77);
/*!40000 ALTER TABLE `word_occurrence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-15 12:57:48
