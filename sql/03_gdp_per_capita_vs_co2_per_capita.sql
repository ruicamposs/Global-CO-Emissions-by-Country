SELECT
  a.Entity,
  a.Code,
  a.Year,
  a.`Annual CO₂ emissions` AS total_co2,
  b.Value AS population,
  c.Value AS gdp,
  SAFE_DIVIDE(a.`Annual CO₂ emissions`, b.Value) AS co2_per_capita,
  SAFE_DIVIDE(
    CAST(REPLACE(REPLACE(c.Value, "$", ""), ",", "") AS FLOAT64),
    b.Value
  ) AS gdp_per_capita
FROM `stone-poetry-462613-q7.CO2_Emissions.1` a
JOIN `stone-poetry-462613-q7.CO2_Emissions.2` b
  ON a.Code = b.`Country Code` AND a.Year = b.Year
JOIN `stone-poetry-462613-q7.CO2_Emissions.3` c
  ON a.Code = c.`Country Code` AND a.Year = c.Year
WHERE a.Year = 2022;
