/****** Script for SelectTopNRows command from SSMS  ******/
SELECT FORMAT(PROD_DATA, 'MMM yyyy') as month_year, SUM(FL_STAHL_PFANNE) as TotalProduction
  FROM [ProductionAnalysis].[dbo].[Production]
  GROUP BY FORMAT(PROD_DATA, 'MMM yyyy')
  ORDER BY max(PROD_DATA) desc

-- ALTER TABLE Production ALTER COLUMN PROD_DATA date not null

SELECT * FROM [ProductionAnalysis].[dbo].[Production]

SELECT YEAR(PROD_DATA) as year, SUM(FL_STAHL_PFANNE) as TotalProduction
  FROM [ProductionAnalysis].[dbo].[Production]
  GROUP BY YEAR(PROD_DATA)
  ORDER BY YEAR(PROD_DATA) desc

  SELECT YEAR(PROD_DATA) as year, SUM(CO_MITTELWERT) as TotalProduction
  FROM [ProductionAnalysis].[dbo].[Production]
  GROUP BY YEAR(PROD_DATA)
  ORDER BY YEAR(PROD_DATA) desc
