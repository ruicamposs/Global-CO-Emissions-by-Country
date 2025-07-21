# Global CO₂ Emissions Analysis Dashboard

This project explores global CO₂ emissions using public datasets, focusing on total emissions, per capita emissions, population, and GDP. It was built using SQL (Google BigQuery) for data wrangling and Tableau Public for visualization.

Dataset: [CO₂ emissions dataset](https://ourworldindata.org/co2-dataset-sources)

Dashboards: [Dashboard #1](https://public.tableau.com/app/profile/rui.campos/viz/TotalCOEmissionsCOEmissionsperCapita/Dashboard1) / [Dashboard #2](https://public.tableau.com/app/profile/rui.campos/viz/GDPperCapitavsCOperCapitaCOEmissionsvsPopulation/Dashboard2) / [Dashboard #3](https://public.tableau.com/app/profile/rui.campos/viz/CO2Emissions_17531143141330/Dashboard)

---

## Data Sources
- **CO₂ Emissions Dataset:** Our World in Data (annual emissions by country)
- **Population Dataset:** World Bank (2022 population data)
- **GDP Dataset:** World Bank (2022 GDP data)

---

## Data Preparation (SQL)
Three datasets were joined using `Country Code` and `Year`, filtered for the year **2022**, and new fields were created:
- `co2_per_capita = CO2 emissions / population`
- `gdp_per_capita = GDP / population`

I have used `SAFE_DIVIDE` and `CAST(... AS FLOAT64)` to ensure data consistency and avoid divide-by-zero errors.

---

## Charts and Insights

### 1. Total CO₂ Emissions by Country (Map)
- A filled map showing total emissions per country.
- **Color gradient** adjusted to highlight variation without China/US dominating.
- Outliers like China were capped in a calculated field to enhance visibility.

### 2. CO₂ Emissions per Capita (Map)
- Shows per-person emissions using a red-gold gradient.
- Countries like Qatar and Brunei stand out with high per capita emissions.

### 3. GDP per Capita vs CO₂ per Capita (Bubble Chart)
- Reveals the correlation between wealth and emissions.
- **Size = Population**, X = GDP per capita, Y = CO₂ per capita.
- Highlights contrast between wealthy emitters (e.g., US) and populous low emitters (e.g., India).

### 4. CO₂ Emissions vs Population (Scatter Plot)
- Both axes are in logarithmic scale.
- Shows that bigger populations correlate with higher emissions, but with outliers like the US.

### 5. Global CO₂ Emissions Over Time (Line Chart)
- Aggregated global emissions from 2015 to 2022.
- Sharp dip in 2020 due to the COVID-19 pandemic.

### 6. Top 10 CO₂ Emitters (2022) (Bar Chart)
- Horizontal bars for countries with highest total emissions.
- China, US, and India lead.

### 7. Top 10 CO₂ Emitters per Capita (2022) (Bar Chart)
- Highlights countries with high individual carbon footprints.
- Includes smaller, high-income nations with energy-intensive industries.

### 8. GDP vs CO₂ per Capita (Top 10 Total GDP Countries)
- Scatter plot filtered by **total GDP**, but shows **GDP per capita** vs emissions per capita.
- Offers contrast between size of economy and citizen-level impact.

---

## Key Takeaways
- **Total emissions** are concentrated in populous, industrialized nations.
- **Per capita emissions** reveal hidden patterns in wealthier, smaller countries.
- There's a **strong correlation** between GDP per capita and CO₂ per capita.
- Population and emissions scale together, but **efficiency varies**.

---

Dataset: [CO₂ emissions dataset](https://ourworldindata.org/co2-dataset-sources)

Dashboards: [Dashboard #1](https://public.tableau.com/app/profile/rui.campos/viz/TotalCOEmissionsCOEmissionsperCapita/Dashboard1) / [Dashboard #2](https://public.tableau.com/app/profile/rui.campos/viz/GDPperCapitavsCOperCapitaCOEmissionsvsPopulation/Dashboard2) / [Dashboard #3](https://public.tableau.com/app/profile/rui.campos/viz/CO2Emissions_17531143141330/Dashboard3)

<img width="680" height="484" alt="Screenshot 2025-07-21 at 17 26 10" src="https://github.com/user-attachments/assets/69d7dd7b-bd13-45e4-8160-716283efe002" />
