
# Sales Trend Analysis Project  – Maven Fuzzy Factory

You can view the SQL scripts used in this project here:  
[Sales Trend Analysis Project – Maven Fuzzy Factory SQL file](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/Sales%20Trend%20Analysis%20Project%20%20%E2%80%93%20Maven%20Fuzzy%20Factory.sql)

Understanding where customers come from and which marketing channels drive the highest quality traffic is a fundamental business concept. Traffic source analysis helps businesses identify the origins of their website visitors—whether through email, social media, search engines, direct visits, or paid campaigns—and evaluate how well each channel converts visitors into customers.

This analysis not only measures visitor volume but also conversion rates, which represent the percentage of sessions that lead to sales or revenue-generating actions. By linking website session data with order data, businesses can assess the effectiveness of marketing campaigns, optimize ad spend, and improve overall return on investment.

In this project, we will explore three key datasets: website sessions, pageviews, and orders, examining how they interact to provide insights into user behavior and campaign performance. With this foundation, we will use SQL queries and visualization tools to analyze traffic sources and conversion efficiency, enabling data-driven marketing decisions.

## STEP 1 : Finding Top Traffic Source

In this step, I analyzed web session data from the early launch phase of an e-commerce startup to help the marketing team answer a key business question:

> **“Where are our website visitors coming from, and which channels are driving the most traffic?”**

![enter image description here](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706134243.png?raw=true)

### Base on my finding
- **Google Search (nonbrand)** accounted for the largest share of traffic, indicating successful customer acquisition efforts.
    
-   **Brand campaigns** drove significantly fewer sessions, suggesting a need to increase brand awareness.


## STEP 2: Calculate Conversion Rate for Google Search (nonbrand) Campaign

After identifying *Google Search (nonbrand)* as the primary traffic source contributing over 90% of total sessions, we focused on evaluating its conversion efficiency.

Given the large volume of traffic, small improvements in conversion rate (CVR) could greatly increase revenue.

🎯 **Business Question:**  
> Is the *Google Search (nonbrand) * campaign not only driving traffic but also converting visitors effectively?

We set a performance benchmark:  
> **Expected CVR ≥ 4%**

By analyzing session-to-order conversion, we aimed to validate whether this campaign attracted quality leads or primarily high-volume, low-intent visitors.

This analysis connects traffic data with sales outcomes, enabling decision-makers to evaluate if the current marketing spend is justified or requires adjustment.

![Conversion Rate Chart](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706140547.png?raw=true)

**We found the conversion rate (CVR) for the "Google Search (nonbrand) " campaign was 2.88%, which is below the expected benchmark of 4%.**

Given the lower-than-expected conversion rate, the immediate next step is to **adjust bidding strategies to reduce ad spend on underperforming traffic sources**. This will help control acquisition costs while maintaining quality traffic.

![enter image description here](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706143324.png?raw=true)

Simultaneously, we plan to **analyze performance trends across different device types** to identify where conversion efficiencies vary, allowing us to **refine our targeting and bidding strategies accordingly**.

By continuously monitoring these metrics and iterating on campaign elements such as the landing page and ad creatives, we aim to improve conversion rates, optimize marketing ROI, and support sustainable growth.


## STEP 3: Analyze Traffic Source Trending Over Time

To understand how the _Google Search (nonbrand)_ campaign's traffic volume changed during the initial launch period, we analyzed weekly session counts.

Using session data grouped by week, we observed the following trend:
![enter image description here](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706144456.png?raw=true)

Weekly traffic for the _Google Search (nonbrand)_ campaign peaked in early April but then declined steadily. This suggests that traffic volume is quite sensitive to bid adjustments, highlighting the importance of careful bid management.

Our goal is to achieve maximum traffic volume from this campaign while carefully controlling ad spend. Since the campaign’s conversion rate is below expectations, we want to avoid overspending on ads that do not generate sufficient return.

By closely monitoring traffic trends alongside conversion performance, we can adjust bidding strategies to balance volume and cost efficiency, ensuring sustainable and profitable marketing efforts.

## STEP 4: Conversion Rate by Device Type and Bid Optimization
Since Google Search (nonbrand) traffic volume is sensitive to bid changes, we analyzed conversion rates by device type. This helps us adjust bids separately for desktop and mobile, improving ad spend efficiency and maximizing campaign performance.

![enter image description here](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706145453.png?raw=true)

We discovered that the conversion rate for desktop users (3.73%) is significantly higher than for mobile users (0.96%) in the Google Search (nonbrand) campaign. This indicates that bidding the same across devices is inefficient.

To optimize ad spend and improve campaign performance, bids should be adjusted by device type — reducing bids on low-converting mobile traffic and prioritizing desktop traffic.

This device-level analysis helps maximize return on investment and guides smarter bidding strategies.

# STEP 5: Traffic Source Segment Trending by Device Type


Based on the previous analysis, the marketing team increased bids for the _Google Search (nonbrand)_ campaign targeting desktop users on May 19, 2012. This adjustment aimed to regain volume and improve efficiency for desktop traffic specifically.

In this step, we analyzed weekly session trends for desktop and mobile traffic from April 15th onwards to observe the impact of the bid increase.

![enter image description here](https://github.com/SethSterlin/Sales-Trend-Analysis-Project-Maven-Fuzzy-Factory/blob/main/screenshot20250706163123.png?raw=true)

### Key Insights

After increasing bids for desktop traffic starting the week of May 20, 2012, desktop sessions showed a significant increase, rising from around 400 sessions per week to over 660 sessions. Meanwhile, mobile sessions continued to decline slightly.

This confirms that device-level bid adjustments can effectively boost traffic volume in targeted segments. It highlights the value of segmenting marketing efforts by device type to maximize campaign performance and optimize ad spend.
