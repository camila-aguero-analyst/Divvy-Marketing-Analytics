-- =====================================================
-- Data Preparation
-- Purpose: Create a Single Source of Truth (SSOT)
-- by combining monthly ride data into one table.
-- =====================================================

CREATE OR REPLACE TABLE `bycicle-494820.bycicle_data.q1_2025_combined` AS

SELECT *
FROM `bycicle-494820.bycicle_data.jan_2025`

UNION ALL

SELECT *
FROM `bycicle-494820.bycicle_data.feb_2025`

UNION ALL

SELECT *
FROM `bycicle-494820.bycicle_data.march_2025`;

-- Result: Combined January, February, and March 2025
-- ride data into a single analysis-ready dataset.

-- Verify row count
SELECT COUNT(*) AS total_rows
FROM `bycicle-494820.bycicle_data.q1_2025_combined`;

-- Result: Combined 588,724 ride records into a
-- single Q1 2025 dataset.



