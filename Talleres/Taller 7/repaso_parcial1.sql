"1)	Liste el salario promedio de los profesores de cada unidad académica. 
La relación resultada debe tener 2 atributos con nombres ’nombre unid’ y 
’prom salario’, en ese orden."

SELECT nombre_unid, AVG(salario) AS prom_salario
FROM instructor
GROUP BY nombre_unid;

"2)	Liste el numero promedio de créditos en los cursos ofrecidos por cada unidad. 
Filtre sus resultados para incluir solamente las unidades que ofrezcan cursos con 
un promedio de máximo 4 créditos."

SELECT nombre_unid, AVG(creditos) AS prom_creditos
FROM curso
GROUP BY nombre_unid
HAVING AVG(creditos) <= 4;

"3)	Liste todos los profesores (nombres) que dictan un curso con la palabra modelo en su nombre."

SELECT i.nombre
FROM instructor AS i, dicta AS d, curso AS c
JOIN d ON i.inst_ID = d.inst_ID
JOIN c ON d.curso_cod = c.curso_cod
WHERE c.nombre LIKE '%modelo%';