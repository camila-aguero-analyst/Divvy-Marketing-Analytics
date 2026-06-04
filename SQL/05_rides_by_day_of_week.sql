-- =====================================================
-- Rides by Day of Week
-- Purpose: Identify riding patterns throughout
-- the week for casual riders and annual members.
-- =====================================================

SELECT
day_of_week,
member_casual,
COUNT(*) AS total_rides
FROM `bycicle-494820.bycicle_data.processed_data`
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;

-- Insight:
-- Casual riders showed increased ridership on
-- weekends, while annual members maintained
-- more consistent usage throughout the week.
---------------------------------------------

-- This suggests casual riders are more likely to
-- use Divvy for leisure and recreational activities,
-- whereas members may rely on the service for
-- routine transportation and commuting.
----------------------------------------

-- Business Relevance:
-- Weekend ridership patterns present an opportunity
-- to target casual riders with membership promotions
-- when engagement is highest.
------------------------------

-- Recommendation:
-- Launch weekend-focused membership campaigns
-- highlighting convenience, cost savings, and
-- unlimited ride benefits.
