-- =====================================================
-- Bike Type Analysis
-- Purpose: Compare bike preferences between
-- casual riders and annual members.
-- =====================================================

SELECT
rideable_type,
member_casual,
COUNT(*) AS total_rides
FROM `bycicle-494820.bycicle_data.processed_data`
GROUP BY rideable_type, member_casual
ORDER BY total_rides DESC;

-- Insight:
-- Electric bikes accounted for a substantial share
-- of rides across both casual riders and members,
-- demonstrating strong demand for e-bike options.
--------------------------------------------------

-- Members generated the highest volume of rides
-- across all bike types, while casual riders also
-- showed significant engagement with electric bikes.
-----------------------------------------------------

-- Business Relevance:
-- Bike preference data helps identify features that
-- attract riders and can be leveraged in marketing
-- campaigns to encourage membership adoption.
----------------------------------------------

-- Recommendation:
-- Highlight e-bike accessibility, convenience, and
-- membership benefits in marketing campaigns aimed
-- at converting casual riders into annual members.
