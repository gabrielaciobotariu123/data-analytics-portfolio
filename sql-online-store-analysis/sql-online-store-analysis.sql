use magazin_online_ro;

SELECT * FROM clienti;

SELECT * FROM plati;

SELECT nume, prenume, email 
from clienti;

SELECT * FROM produse;

SELECT denumire, pret, stoc 
from produse;

SELECT * FROM comenzi;

SELECT client_id, data_comanda, status_comanda 
from comenzi
WHERE client_id = 1;

SELECT comanda_id, status_comanda 
from comenzi
WHERE comanda_id > 3;

SELECT * FROM plati;

SELECT suma, data_plata, comanda_id
FROM plati
WHERE suma <> 700;

SELECT suma, metoda_plata, plata_id
FROM plati
WHERE metoda_plata = "Card"
and suma >= 1100;

SELECT * FROM clienti;

SELECT oras 
from clienti;

SELECT DISTINCT oras 
from clienti;

SELECT * FROM produse;

SELECT DISTINCT categorie
FROM produse;

SELECT * FROM plati;

SELECT suma, metoda_plata, data_plata
from plati
WHERE suma <= 1500;

SELECT suma, metoda_plata
from plati
WHERE suma <> 700;

SELECT suma, metoda_plata
from plati
WHERE suma between 1000 and 3500;

SELECT * FROM PRODUSE;

SELECT denumire, categorie, stoc
from produse
where categorie IN ("Mobilier","electronice");

SELECT denumire, categorie, stoc
from produse
where categorie NOT IN ("Mobilier","IT");

SELECT * from produse;

SELECT denumire
from produse
WHERE denumire LIKE '%casti%';

SELECT stoc 
from produse
where stoc between 10 and 40;

SELECT pret 
from produse
where pret like 10 and 40;

SELECT denumire
from produse
WHERE denumire LIKE ('%laptop%','%birou%');-----

SELECT denumire
from produse
WHERE denumire LIKE 'mo%';

SELECT denumire
from produse
WHERE denumire LIKE '%ou';

SELECT denumire
from produse
WHERE denumire LIKE '%un%';

SELECT * from clienti;

SELECT nume, prenume, email
from clienti
where oras like '%cluj%';

SELECT nume, prenume, email
from clienti
where prenume like '%na';

SELECT nume, prenume, email
from clienti
where email like '%escu@_____.ro'
and prenume like 'm%';

SELECT * from plati;

SELECT metoda_plata, suma, data_plata
from plati
where metoda_plata like 'ca%';

SELECT * from produse;

SELECT
	categorie,
	COUNT(produs_id) AS numar_produse
FROM produse
GROUP BY categorie;

SELECT
categorie,
SUM(stoc) AS pret_total
from produse
group by categorie;

SELECT * from produse;

SELECT
categorie,
SUM(pret) AS pret_total
from produse
group by categorie;

SELECT
categorie,
AVG(pret) AS pret_total
from produse
group by categorie;

SELECT
categorie,
AVG(STOC) AS pret_total
from produse
group by categorie;

SELECT
	categorie,
	round(avg(stoc),3) AS pret_avg
from produse
group by categorie;

SELECT * FROM plati;

SELECT
	metoda_plata,
	min(suma) AS pret_minim
from plati
group by metoda_plata;

SELECT
	metoda_plata,
	max(suma) AS pret_minim
from plati
group by metoda_plata;

SELECT
categorie,
COUNT(*) AS nr_produse,
SUM(stoc) AS stoc_total,
round(MIN(pret),0) AS pret_minim,
round(MAX(pret),0) AS pret_maxim,
round(AVG(pret),2) AS pret_mediu
FROM produse
GROUP BY categorie;

SELECT
metoda_plata,
suma,
	COUNT(*) AS plati_incasate
FROM plati
GROUP BY metoda_plata, suma;

SELECT * from plati
ORDER BY suma ASC;

SELECT * from plati
ORDER BY suma ASC;

SELECT
    metoda_plata,
	COUNT(*) AS pret
FROM plati
GROUP BY metoda_plata
ORDER BY pret desc;

SELECT
	categorie,
	COUNT(*) AS numar_produse
FROM produse
GROUP BY categorie
ORDER BY numar_produse DESC;

 SELECT
  metoda_plata, 
  SUM(suma) AS suma_totala
  FROM 	plati
  GROUP BY metoda_plata
  HAVING SUM(suma) <=2000;
 
 SELECT
 categorie,
 SUM(pret) AS total
FROM produse 
GROUP BY categorie
HAVING SUM(pret) >=1200;
 
SELECT
nume,
prenume,
oras,
	count(*) as nr_clienti
FROM clienti    
GROUP BY nume, prenume, oras
HAVING COUNT(*) <2;

SELECT
	clienti.prenume,
    comenzi.data_comanda
FROM comenzi
INNER JOIN clienti
ON comenzi.client_id = clienti.client_id;

select * from clienti;

select * from comenzi;

SELECT
detalii_comenzi.comanda_id,
produse.denumire
From detalii_comenzi
inner join produse
on detalii_comenzi.produs_id = produse.produs_id;

SELECT 
	detalii_comenzi.comanda_id,
	produse.categorie 
from detalii_comenzi
inner join produse 
on detalii_comenzi.produs_id = produse.produs_id;

SELECT
	detalii_comenzi.comanda_id,
	produse.produs_id,
	produse.denumire,
	produse.categorie,
	produse.pret
FROM detalii_comenzi
INNER JOIN produse
ON detalii_comenzi.produs_id = produse.produs_id;

SELECT 
	clienti.nume,
	comenzi.comanda_id,
	comenzi.data_comanda
FROM clienti
LEFT JOIN comenzi
ON clienti.client_id = comenzi.client_id;

SELECT 
	clienti.prenume,
	clienti.nume,
	comenzi.comanda_id,
	comenzi.data_comanda
FROM clienti
RIGHT JOIN comenzi
ON clienti.client_id = comenzi.client_id;

select *
from clienti
full join comenzi
on clienti.client_id = comenzi.client_id;




