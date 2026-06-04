-- =====================================================
-- Average Ride Duration by User Type
-- Purpose: Compare trip length between casual
-- riders and annual members.
-- =====================================================

SELECT
member_casual,
AVG(ride_length) AS avg_ride_length
FROM `bycicle-494820.bycicle_data.processed_data`
GROUP BY member_casual;

-- Insight:
-- Casual riders averaged 16.9 minutes per ride,
-- compared to 10.0 minutes for annual members.
-----------------------------------------------

-- This indicates that casual riders tend to take
-- longer trips and may use Divvy for leisure,
-- tourism, or recreational activities rather than
-- routine transportation.
--------------------------

-- Business Relevance:
-- Understanding ride duration differences helps
-- identify how casual riders derive value from
-- the service and informs messaging that resonates
-- with their usage patterns.
-----------------------------

-- Recommendation:
-- Promote membership benefits that appeal to
-- frequent recreational riders, such as unlimited
-- rides, convenience, and cost savings compared
-- to repeated single-ride purchases.
