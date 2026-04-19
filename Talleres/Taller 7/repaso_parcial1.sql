SELECT nombre_unid, AVG(salario) AS prom_salario
FROM instructor
GROUP BY nombre_unid;

"2)	Liste el numero promedio de créditos en los cursos ofrecidos por cada unidad. 
Filtre sus resultados para incluir solamente las unidades que ofrezcan cursos con 
un promedio de máximo 4 créditos."

SELECT AVG(creditos) AS creditos_promedio
FROM curso
WHERE id_unid IN (
    SELECT id_unid
    FROM curso
    GROUP BY id_unid
    HAVING AVG(creditos) <= 4
);

