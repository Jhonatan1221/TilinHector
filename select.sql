SELECT FROM 
sintaxix;


---Select SELECT FIELD name1, FIELD name2, ..., FIELD nameN
---FROM '



SELECT * FROM `lines`;

SELECT * FROM `lines`;


SELECT * FROM "jsf_metro_cdmx.lines";

SELECT * FROM "jsf_metro_cdmx.lines";



SELECT * FROM `lines`;


SELECT TABLE jsf

USE jsf_metro_cdmx;

SHOW TABLES; 
SELECT * FROM stations;
SELECT * FROM `lines`;


SELECT id, name, color FROM `lines`;

SELECT id as 'Identificador', name as "Nombre estacion", color FROM `lines`;


SELECT (2 + 657.78);
SELECT ( 2 + 657.28) AS 'Resultado';

SELECT ( 2 + 657.28) AS 'Resultado';

SELECT ( 2 + 657.28) AS 'Resultado de operaciones';


SELECT AVG(YEAR) +4 FROM trains;



SELECT AVG(YEAR) +AVG(YEAR) FROM trains;

SELECT AVG(YEAR) as Promedio, AVG(YEAR) + AVG(YEAR) AS 'lo doble delpromedii' FROM trains;



----------INSERTA TABLA







SELECT jsf_metro_cdmx.lines.name,
trains.serial_number
FROM jsf_metro_cdmx.lines
INNER JOIN  trains
ON jsf_metro_cdmx.lines. `id` = `trains` . `line_id`;


SELECT
jsf_metro_cdmx.lines.name,
trains.serial_number
FROM jsf_metro_cdmx.lines
INNER JOIN  `trains`
ON jsf_metro_cdmx.lines. `id` = `trains` . line_id;


SELECT ROW_NUMBER() OVER(),
`lines` . `name`,
`trains` . `serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines` . `id` = `trains` . `line_id`;

SELECT
    l.name,
    t.serial_number,
    t.line_id
FROM
    `lines` AS l
    INNER JOIN `trains` AS t ON l.id = t.line_id;







