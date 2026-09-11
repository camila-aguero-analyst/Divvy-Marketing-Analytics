-- =====================================================
-- Analysis 4: Rides by Day of Week and Rider Type
-- Purpose: Compare weekly riding patterns between
-- casual riders and annual members during Q1 2025.
-- =====================================================

SELECT
    FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,
    member_casual,
    COUNT(*) AS total_rides
FROM `bycicle-494820.bycicle_data.processed_data`
WHERE started_at IS NOT NULL
GROUP BY
    day_of_week,
    member_casual
ORDER BY
    CASE day_of_week
        WHEN 'Sunday' THEN 1
        WHEN 'Monday' THEN 2
        WHEN 'Tuesday' THEN 3
        WHEN 'Wednesday' THEN 4
        WHEN 'Thursday' THEN 5
        WHEN 'Friday' THEN 6
        WHEN 'Saturday' THEN 7
    END,
    member_casual;

-- =====================================================
-- Insight
-- =====================================================
-- Casual ridership increased toward the end of the
-- week, with the highest ride volumes occurring on
-- Friday and Saturday.
--
-- Annual members showed stronger and more consistent
-- ridership during weekdays.

-- =====================================================
-- Interpretation
-- =====================================================
-- The difference in weekly riding patterns may suggest
-- that casual riders are more likely to use the service
-- for leisure or recreational trips, while members may
-- use it more regularly for routine transportation.
--
-- Because trip purpose is not directly recorded in the
-- dataset, these behavioral explanations should be
-- interpreted as hypotheses rather than confirmed facts.

-- =====================================================
-- Business Relevance
-- =====================================================
-- Higher casual ridership toward the end of the week
-- creates an opportunity to reach casual riders when
-- engagement with the service is strongest.

-- =====================================================
-- Recommendation
-- =====================================================
-- Test Friday and weekend membership promotions that
-- emphasize the potential value and convenience of
-- annual membership for frequent riders.

-- Recommendation:
-- Launch weekend-focused membership campaigns
-- highlighting convenience, cost savings, and
-- unlimited ride benefits.
