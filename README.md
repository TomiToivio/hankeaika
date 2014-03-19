Puheenvuorot
============

Tässä on [puheenvuorot.kansanmuisti.fi-sivuston](http://puheenvuorot.kansanmuisti.fi/) lähdekoodi.

Muutamia huomioita:

* koko homma on kursittu kasaan [Apps4Finland-kilpailua](http://www.apps4finland.fi/sovellus-puheenvuorot-kansanmuisti-fi/) varten. Alunperin tehty Django 1.3:lle, mutta nyt pitäisi toimia 1.6:lla.

* import-hakemistossa on erinäisiä skriptejä, joilla data haetaan eduskunta.fi:stä, perusmuotoistetaan ([Perusta-palvelun](http://perusta.kansanmuisti.fi/perusta/) avulla). Koska on kivaa käyttää useampia kieliä, näiden ajo vaatinee node.js:n ja muutaman moduulin sekä muutaman perl-moduulin asennuksen.

* `sample-db.sql` sisältää tietokantarakenteen ja pari puheenvuoroa kaikkineen esimerkiksi. (Koko kanta on indekseineen parin gigan kokoinen.) Kannassa `_c`-loppuiset kentät sisältävät muista tauluista cachetettua dataa.

* `settings.py` ja import-skriptit vaativat `local-conf`-hakemiston, johon tiedostot `secret.txt`, `db-user.txt` ja `db-pass.txt`.

Tietokannan olennaisimmat taulut ja taulussa olevan rivin sisältö:

* **document** - yksi täysistunto (huom. id-kenttä on merkkijono muotoa "3-2014")
* **subject** - täysistunnossa käsiteltävä aihe
* **action** - puheenvuoro yhdessä aiheessa
* **speaker** - puhuja (yleensä kansanedustaja)
* **word** - sana, joka esiintyy puheenvuorossa
  * stop-tieto kertoo, onko kyseessä yleinen sana, jota ei huomioida sanapilvissä.
* **word_occurrence** - yksittäisen sanan esiintymismäärä tietyssä puheenvuorossa
* **document_subscription** ja **action_subscription** - sähköpostitilaus joko kaikista täysistunnoista tai tietyt kriteerit täyttävistä puheenvuoroista

LICENSE
=======

MIT.
