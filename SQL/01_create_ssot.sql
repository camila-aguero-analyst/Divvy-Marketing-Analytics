CREATE OR REPLACE TABLE `bycicle-494820.bycicle_data.q1_2025_combined` AS 

SELECT * FROM `bycicle-494820.bycicle_data.jan_2025`
UNION ALL
SELECT * FROM `bycicle-494820.bycicle_data.feb_2025`
UNION ALL
SELECT * FROM `bycicle-494820.bycicle_data.march_2025`;

--Result: Successfully created a unified dataset (SSOT) by combining January, February, and March tables using UNION ALL. This ensures all ride records are consolidated into a single table for efficient analysis.

-- Verify SSOT count
SQL 
SELECT COUNT(*) AS total_rows
FROM `bycicle-494820.bycicle_data.q1_2025_combined`;

--Result: Verified that all records from the three monthly datasets were successfully combined into a single table.

