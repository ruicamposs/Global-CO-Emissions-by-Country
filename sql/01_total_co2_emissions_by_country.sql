SELECT
  Entity,
  SUM(`Annual CO₂ emissions`) AS total_co2
FROM `stone-poetry-462613-q7.CO2_Emissions.1`
WHERE Year = 2022
GROUP BY Entity
ORDER BY total_co2 DESC;
