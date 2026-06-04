-- =====================================================
-- Feature Engineering
-- Purpose: Create new variables that support rider
-- behavior analysis and marketing segmentation.
-- =====================================================

CREATE OR REPLACE TABLE `bycicle-494820.bycicle_data.processed_data` AS

SELECT
    *,
    
    -- Ride duration in minutes
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length,

    -- Day of week (1 = Sunday, 7 = Saturday)
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,

    -- Hour of day
    EXTRACT(HOUR FROM started_at) AS hour_of_day,

    -- Rider category
    CASE
        WHEN member_casual = 'member' THEN 'member_ride'
        ELSE 'casual_ride'
    END AS trip_type

FROM `bycicle-494820.bycicle_data.cleaned_2025_rides`;

-- Result:
-- Created a processed dataset with engineered features
-- including ride length, day of week, hour of day,
-- and rider segment for behavioral analysis.
