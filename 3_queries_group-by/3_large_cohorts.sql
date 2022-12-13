SELECT cohorts.name AS cohort_name, count(students.*) AS students_count 
FROM cohorts 
JOIN students ON cohort_id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY students_count;

