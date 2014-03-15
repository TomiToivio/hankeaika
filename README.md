Puheenvuorot
============

Tässä on [puheenvuorot.kansanmuisti.fi-sivuston](http://puheenvuorot.kansanmuisti.fi/) lähdekoodi.

Muutamia huomioita:

* koko homma on kursittu kasaan [Apps4Finland-kilpailua](http://www.apps4finland.fi/sovellus-puheenvuorot-kansanmuisti-fi/) varten. Alunperin tehty Django 1.3:lle, mutta nyt pitäisi toimia 1.6:lla.

* import-hakemistossa on erinäisiä skriptejä, joilla data haetaan eduskunta.fi:stä, perusmuotoistetaan ([Perusta-palvelun](http://perusta.kansanmuisti.fi/perusta/) avulla). Koska on kivaa käyttää useampia kieliä, näiden ajo vaatinee node.js:n ja muutaman moduulin sekä muutaman perl-moduulin asennuksen.

* `sample-db.sql` sisältää tietokantarakenteen ja pari puheenvuoroa kaikkineen esimerkiksi. (Koko kanta on indekseineen parin gigan kokoinen.) Kannassa `_c`-loppuiset kentät sisältävät muista tauluista cachetettua dataa.

* `settings.py` ja import-skriptit vaativat `local-conf`-hakemiston, johon tiedostot `secret.txt`, `db-user.txt` ja `db-pass.txt`.

LICENSE
=======

MIT.
