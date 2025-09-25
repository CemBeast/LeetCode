    SELECT t1.firstname, t1.lastName, t2.city, t2.state
    FROM Person AS t1
    LEFT JOIN Address as t2 on t1.personId = t2.personId