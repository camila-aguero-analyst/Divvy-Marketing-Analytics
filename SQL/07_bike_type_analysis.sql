-- =====================================================
-- Analysis 3: Bike Type Preference by Rider Type
-- Purpose: Compare bike preferences between
-- casual riders and annual members during Q1 2025.
-- =====================================================

SELECT
    rideable_type,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(
        COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY member_casual),
        1
    ) AS percent_of_member_type
FROM `bycicle-494820.bycicle_data.processed_data`
WHERE rideable_type IS NOT NULL
GROUP BY
    rideable_type,
    member_casual
ORDER BY
    member_casual,
    total_rides DESC;

-- =====================================================
-- Insight
-- =====================================================
-- Casual riders showed a stronger preference for
-- electric bikes, while annual members slightly
-- favored classic bikes.
--
-- The percentage distribution within each rider type
-- highlights a meaningful difference in bike choice.

-- =====================================================
-- Interpretation
-- =====================================================
-- Casual riders may value the additional speed and
-- convenience of electric bikes, particularly for
-- longer or less routine trips.
--
-- Members may be more comfortable using classic bikes
-- for regular transportation.
--
-- These explanations are behavioral hypotheses because
-- the dataset does not directly record why riders
-- selected a particular bike type.

-- =====================================================
-- Business Relevance
-- =====================================================
-- Understanding differences in bike preference can help
-- tailor marketing messages and bike availability toward
-- the needs of casual riders and annual members.

-- =====================================================
-- Recommendation
-- =====================================================
-- Test membership campaigns that highlight access to
-- electric bikes and the potential convenience and
-- value of membership for riders who prefer e-bikes.
