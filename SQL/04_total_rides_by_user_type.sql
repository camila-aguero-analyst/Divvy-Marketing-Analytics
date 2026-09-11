-- =====================================================
-- Analysis 1: Total Rides by Rider Type
-- Purpose: Compare overall ridership between
-- annual members and casual riders during Q1 2025.
-- =====================================================

SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percent_of_rides
FROM `bycicle-494820.bycicle_data.processed_data`
GROUP BY member_casual
ORDER BY total_rides DESC;

-- =====================================================
-- Insight
-- =====================================================
-- Members generated 320,152 rides compared with
-- 97,504 rides by casual riders during Q1 2025.
--
-- Annual members therefore accounted for the majority
-- of total rides during the period.
--
-- =====================================================
-- Business Relevance
-- =====================================================
-- Understanding the difference in ride volume between
-- members and casual riders establishes a baseline for
-- evaluating rider behavior and identifying opportunities
-- to convert casual riders into annual members.
