# Cyclistic Bike-Share Case Study — Advanced Analysis  

This project is an **extension** of the main [Cyclistic Bike-Share Analysis](../cyclistic_bike_share_analysis).  
Here, I explore **deeper analytical perspectives** to better understand user behavior, station patterns, and business implications.  

---

## ataset Overview  
- **Period:** July 2020 – June 2021  
- **Source:** Google Data Analytics Capstone (Cyclistic case study)  
- **Tool:** Python (Pandas, Matplotlib, Seaborn)  
- **Objective:** To uncover advanced insights beyond basic EDA — including spatial, temporal, and business analysis.  

---

## Advanced Analyses  

### 1. Hourly Ride Trends  
![Hourly Trend](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Hourly%20Ride%20Counts%20by%20User%20Type.png) 
**Insight:**  
- Members have two clear peaks: **07–09 AM** and **16–18 PM**, showing commuting behavior.  
- Casual riders peak in the afternoon (around **17–18 PM**) — more for leisure or recreation.  

---

### 2. Weekday vs Weekend Patterns  
![Weekday vs Weekend](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Hourly%20Ride%20Counts%20by%20User%20Type.png)
**Insight:**  
- **Members** dominate weekday usage (commuting).  
- **Casual riders** dominate weekends (leisure).  
- Suggestion: introduce *Weekend Membership* or *Day-Pass promotions* for casual users.  

---

### 3. Top Start Stations  
![Top Start Stations](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Top%2020%20Start%20Stations%20(approx.%20locations).png)
**Insight:**  
- Casual riders: prefer **tourist & waterfront areas** (e.g., Streeter Dr, Millennium Park).  
- Members: frequent **downtown & office areas**.  
- Suggestion: targeted marketing at popular leisure stations.  

---

### 4. Ride Length Distribution  
![Ride Length Distribution](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Ride%20length%20distribution%20Weekday%20vs%20Weekend%20(no%20extreme%20outliers).png)  
**Insight:**  
- Average ride: **Casual = 33.6 min**, **Members = 15.0 min**.  
- Casual riders tend to ride longer and for leisure.  
- Suggestion: highlight membership benefits for long-distance users.  

---

### 5. Monthly Usage Trends (2020–2021)  
![Monthly Trends](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Month-over-month%20%25%20change%20in%20ride%20counts.png) 
**Insight:**  
- Strong seasonality — **peak in summer, drop in winter.**  
- Suggestion: run campaigns or renewals during summer months to boost engagement.  

---

### 6. Revenue Scenario Simulation  
**Assumptions:**  
- Casual ride = \$3 per ride  
- Membership = \$99/year  
- Average 50 rides/member/year  

**Result:**  
| Converted % | Est. New Members | Revenue Change |  
|--------------|-----------------|----------------|  
| 5% | 1,897 | -\$96,752 |  
| 10% | 3,794 | -\$193,504 |  
| 20% | 7,588 | -\$387,009 |  

**Interpretation:**  
Short-term revenue may drop after conversion, but **membership provides long-term stability** and retention value.  

---

### 7. Top Station Flows  
![Station Flows](https://github.com/dyonsetio21/data_analytics_portfolio/blob/main/python_projects/cyclistic_bike_share_analysis/cyclistic_bike_share_analysis_advanced/visualization_results/Top%2020%20Origin%20-%20Destination%20flows.png) 
**Insight:**  
- Many rides start & end at the **same station** → loop rides = leisure pattern.  
- Suggestion: add *“Popular Scenic Routes”* or *recommended ride paths* in the app.  

---

## Key Takeaways  
- **Casual riders** = weekend & leisure (afternoon, scenic areas).  
- **Members** = weekday & commuting (morning/evening, downtown).  
- Seasonality plays a big role — **summer is the best time for promotions**.  
- Data-driven insights help Cyclistic design **targeted marketing & infrastructure strategies.**

---

## Tools & Skills Used  
- Python: Pandas, Matplotlib, Seaborn  
- Data Wrangling, Time-based Analysis, Business Scenario Simulation  
- Visualization & Data Storytelling  

---

## 🔗 Related Project  
➡️ [Main EDA Project](../cyclistic_bike_share_analysis)  
➡️ [Full Portfolio Repository](https://github.com/dyonsetio21/data_analytics_portfolio)

