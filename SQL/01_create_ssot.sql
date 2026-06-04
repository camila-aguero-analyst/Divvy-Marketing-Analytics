SQL 
CREATE OR REPLACE TABLE `bycicle-494820.bycicle_data.q1_2025_combined` AS 

SELECT * FROM `bycicle-494820.bycicle_data.jan_2025`
UNION ALL
SELECT * FROM `bycicle-494820.bycicle_data.feb_2025`
UNION ALL
SELECT * FROM `bycicle-494820.bycicle_data.march_2025`;

--Result: Successfully created a unified dataset (SSOT) by combining January, February, and March tables using UNION ALL. This ensures all ride records are consolidated into a single table for efficient analysis.
