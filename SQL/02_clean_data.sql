-- =====================================================
-- Data Cleaning
-- Purpose: Remove invalid rides and create an analysis-
-- ready dataset for rider behavior analysis.
-- =====================================================

-- Identify rides under 1 minute
-- Business Rule: Trips under 60 seconds are likely false starts.
SELECT COUNT(*) AS short_rides
FROM `bycicle-494820.bycicle_data.q1_2025_combined`
WHERE TIMESTAMP_DIFF(ended_at, started_at, SECOND) < 60;

-- Result: 12,144 rides identified as potential false starts.

-- Identify rides over 24 hours
-- Business Rule: Trips longer than 24 hours are likely anomalies.
SELECT COUNT(*) AS long_rides
FROM `bycicle-494820.bycicle_data.q1_2025_combined`
WHERE TIMESTAMP_DIFF(ended_at, started_at, HOUR) > 24;

-- Result: 9 rides identified as potential data anomalies.

-- Create cleaned dataset
-- Removes:
--   • Rides shorter than 1 minute
--   • Rides longer than 24 hours
--   • Records with missing station information

CREATE OR REPLACE TABLE `bycicle-494820.bycicle_data.cleaned_2025_rides` AS
SELECT *
FROM `bycicle-494820.bycicle_data.q1_2025_combined`
WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 1 AND 1440
AND start_station_name IS NOT NULL
AND end_station_name IS NOT NULL;

-- Result: Created a cleaned dataset for downstream analysis.

-- Verify cleaned dataset row count
SELECT COUNT(*) AS cleaned_rows
FROM `bycicle-494820.bycicle_data.cleaned_2025_rides`;

-- Result: 417,656 valid ride records remain after cleaning.
