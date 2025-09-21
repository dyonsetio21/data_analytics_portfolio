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
- **GitHub** for project portfolio documentation

---

## Data Cleaning & Preparation
Steps taken:
1. Combined 12 CSV files (July 2020 – June 2021) into a single dataset
2. Converted datetime columns (`started_at`, `ended_at`)
3. Created new columns:
   - `ride_length` (in minutes)
   - `day_of_week` & `day_name`
4. Removed invalid data (ride_length ≤ 0 or > 24 hours)

Final dataset: **4.37 million rides** after cleaning.

---

## Key Findings
1. **Trip Duration**
   - Casual riders: average **33.6 minutes**
   - Members: average **15 minutes**

2. **Day of the Week**
   - Casual riders ride mostly on **weekends (Saturday & Sunday)**
   - Members ride mostly on **weekdays (Tuesday–Friday)**

3. **Bike Type**
   - Docked bikes are most used by both groups
   - Casual riders prefer **electric bikes** more than members

4. **Seasonality**
   - Both groups ride more in **summer months**
   - Casual ridership drops sharply in **winter**

---
## Visualization Results
A few key graphics in this project:
| Graph | Description |
|--------|----------|
| ![chart1](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/average_trip_duration_(minutes).png) | Average Trip Duration (Minutes) |
| ![chart2](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/monthly_ride_volume_trends_(casual_vs_member).png) | Monthly Ride Volume Trends (Casual vs Member) |
| ![chart3](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/number_of_rides_per_day_(casual_vs_member).png) | Number of Rides per Day (Casual vs Member) |
| ![chart4](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/visualization_results/types_of_bicycles_used.png) | Types of Bicycles Used |

---

## Recommendations
1. **Weekend promotions** targeting casual riders (e.g., weekend pass → membership conversion)  
2. **Highlight membership value** for long-duration riders (cost savings vs single pass)  
3. **Seasonal summer campaigns** to maximize conversion when casual usage peaks  

---

## Dataset
The dataset is publicly available from [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) and provided under [Motivate International Inc. Data License Agreement](https://www.divvybikes.com/data-license-agreement).

---

