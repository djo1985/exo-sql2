-- -- sélectionner la population des États-Unis : 1 résultat attendu
SELECT country.population
FROM world.country
WHERE country.name ='United States';

-- -- sélectionner les pays ayant obtenu leur indépendance après 1989 : 26 résultats attendus
SELECT country.name
FROM world.country
WHERE country.IndepYear > 1989;

-- -- sélectionner les villes dont la population est supérieure à 1 million d'habitants aux États-Unis : 9 résultats attendus
SELECT country.code
FROM world.country
WHERE country.name ='United States';

SELECT city.name
FROM world.city
WHERE city.CountryCode = 'USA' AND city.population > 1000000  ;

-- sélectionner les villes dont la population est supérieure à 1 million d'habitants en Chine et renommer la colonne en « Villes les plus peuplées en Chine » : 35 résultats attendus
SELECT country.code
FROM world.country
WHERE country.name ='China';

UPDATE world.city
SET 
    city.name = "Villes les plus peuplées en Chine"
WHERE 
    city.CountryCode = 'CHN' AND city.population > 1000000  ;

-- -- sélectionner toutes les villes dont la population est supérieure à 5 millions et afficher le résultat en millions sous forme de chiffre décimal (par exemple 1.0 pour 1 million) : 24 résultats attendus
SELECT city.name, city.population/1000000
FROM world.city
WHERE city.population > 5000000;

-- sélectionner tous les pays dont la forme de gouvernement est liée à la monarchie : 43 résultats attendus
SELECT country.*
FROM world.country
WHERE country.GovernmentForm LIKE '%monarchy%';

-- sélectionner toutes les formes de gouvernement sans doublons : 35 résultats attendus
SELECT DISTINCT GovernmentForm
FROM world.country
;

-- sélectionner toutes les villes dont la population est supérieure à 5 millions et les afficher par ordre décroissant : 24 résultats attendus
SELECT city.name, city.population
FROM world.city
WHERE city.population >5000000;
ORDER BY city.population DESC;

-- sélectionner les deux villes les plus peuplées au monde : 2 résultats attendus
SELECT city.name
FROM world.city
ORDER BY city.population DESC
lIMIT 2;

-- sélectionner le premier pays dont la date d'indépendance est connue : 1 résultat attendu
SELECT country.name, country.IndepYear
FROM world.country
WHERE country.IndepYear IS NOT NULL
ORDER BY country.IndepYear
lIMIT 1;