SELECT
  a.Entity,
  a.Code,
  a.Year,
  a.`Annual CO₂ emissions` AS total_co2,
  b.Value AS population,
  SAFE_DIVIDE(a.`Annual CO₂ emissions`, b.Value) AS co2_per_capita
FROM `stone-poetry-462613-q7.CO2_Emissions.1` a
JOIN `stone-poetry-462613-q7.CO2_Emissions.2` b
  ON a.Code = b.`Country Code`
WHERE a.Year = 2022 AND b.Year = 2022;
