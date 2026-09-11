-- =====================================================
-- Analysis 2: Average Ride Duration by Rider Type
-- Purpose: Compare average trip duration between
-- casual riders and annual members during Q1 2025.
-- =====================================================

SELECT
    member_casual,
    ROUND(
        AVG(TIMESTAMP_DIFF(ended_at, started_at, SECOND)) / 60,
        1
    ) AS avg_ride_duration_minutes
FROM `bycicle-494820.bycicle_data.processed_data`
WHERE ended_at > started_at
GROUP BY member_casual
ORDER BY avg_ride_duration_minutes DESC;

-- =====================================================
-- Insight
-- =====================================================
-- Casual riders averaged 17.4 minutes per ride,
-- compared with 10.5 minutes for annual members.
--
-- Casual rides were approximately 66% longer
-- on average than member rides.

-- =====================================================
-- Interpretation
-- =====================================================
-- Longer average ride durations among casual riders
-- may suggest greater recreational, sightseeing, or
-- leisure-oriented usage.
--
-- Members' shorter average ride durations may reflect
-- more routine or point-to-point transportation.
--
-- Trip purpose is not directly recorded in the dataset,
-- so these explanations should be treated as possible
-- behavioral patterns rather than confirmed reasons.

-- =====================================================
-- Business Relevance
-- =====================================================
-- The difference in ride duration helps identify how
-- casual riders and members interact differently with
-- the service and can inform targeted membership
-- messaging.

-- =====================================================
-- Recommendation
-- =====================================================
-- Target casual riders with membership messaging that
-- emphasizes the potential value and convenience of
-- membership for riders who use the service regularly,
-- including those taking longer recreational trips.
