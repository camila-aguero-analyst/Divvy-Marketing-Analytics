-- =====================================================
-- Total Rides by User Type
-- Purpose: Compare overall ridership between
-- annual members and casual riders.
-- =====================================================

SELECT
member_casual,
COUNT(*) AS total_rides
FROM `bycicle-494820.bycicle_data.processed_data`
GROUP BY member_casual
ORDER BY total_rides DESC;

-- Insight:
-- Members generated 320,152 rides compared to
-- 97,504 casual rides during Q1 2025.
--------------------------------------

-- This indicates that annual members account for
-- the majority of ridership and engage with the
-- service more frequently than casual riders.
----------------------------------------------

-- Business Relevance:
-- Understanding overall rider volume helps quantify
-- the value of annual memberships and supports
-- marketing efforts aimed at converting casual
-- riders into members.
