# Cyclistic Bike-Share Case Study (2020-07 to 2021-06)

## Overview
This project is part of the **Google Data Analytics Capstone Case Study**.  
I analyzed 12 months of Cyclistic bike-share data (July 2020 – June 2021) to answer the business question:

**"How do annual members and casual riders use Cyclistic bikes differently?"**

The goal of this analysis is to provide insights that will help Cyclistic's marketing team design strategies to convert **casual riders into annual members**.

---

## Tools Used
- **Python (Pandas, Matplotlib, Seaborn)** for data cleaning, analysis, and visualization
- **Google Colab** as the working environment

---

## Data Cleaning & Preparation
Steps taken:
1. Combined 12 CSV files (July 2020 – June 2021) into one dataset
2. Converted datetime columns (`started_at`, `ended_at`)
3. Created new columns:
   - `ride_length` (in minutes)
   - `day_of_week` & `day_name`
4. Removed invalid data (ride_length ≤ 0 or > 24 hours)

Final dataset: **4.37 million rides** after cleaning.

---

## Key Findings & Visualization
| Visualization | Insight |
|--------|----------|
| ![chart1](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/average_trip_duration_(minutes).png) | **Casual riders ride longer** (avg. 33.6 mins) compared to members (15 mins). Indicates casual riders use bikes for leisure, while members use them for commuting. |
| ![chart2](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/number_of_rides_per_day_(casual_vs_member).png) | **Casual riders dominate on weekends**, while members are most active on weekdays. Suggests different purposes: leisure vs. commuting. |
| ![chart3](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/types_of_bicycles_used.png) | Both groups prefer docked bikes, but **casual riders use electric bikes more** than members. Highlights different preferences in bike type. |
| ![chart4](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/monthly_ride_volume_trends_(casual_vs_member).png) | Usage peaks during summer months (Jun–Aug) and drops sharply in winter, especially among casual riders. Shows strong seasonal behavior. |

---

## Recommendations
1. **Weekend promotions** → Target casual riders with weekend membership trials or discounts, since they are most active on Saturdays and Sundays.
2. **Highlight membership value** → Emphasize cost benefits for long-duration riders, showing that membership is cheaper than repeated single passes.
3. **Seasonal summer campaigns** → Emphasize cost benefits for long-duration riders, showing that membership is cheaper than repeated single passes.

---

## Dataset
The dataset is publicly available from [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) and provided under [Motivate International Inc. Data License Agreement](https://www.divvybikes.com/data-license-agreement).

---

