# Asheville Airbnb Listings Analysis
This report provides an analysis of Airbnb listings and guest activity in Asheville, North Carolina, with a focus on pricing trends, room distribution, neighbourhood performance, and seasonal demand. The analysis leverages data from Airbnb listings, reviews, and historical trends to identify key market insights and actionable recommendations for hosts and property managers.

## Objectives

- **Understand pricing trends:** Identify average, minimum, and maximum nightly rates, and analyse price distribution across room types and neighbourhoods.  
- **Assess room and neighbourhood trends:** Determine which room types dominate the market and which neighbourhoods attract the highest demand.  
- **Analyse seasonal and yearly demand:** Examine review activity over time to highlight peak travel periods and growth patterns.  
- **Provide actionable recommendations:** Suggest strategies for hosts to optimise pricing, availability, and property amenities based on market trends and guest preferences.

The findings aim to assist current and prospective Airbnb hosts in making data-driven decisions to increase occupancy, revenue, and guest satisfaction in the Asheville market.

**Environment used:** Microsoft SQL Server Management Studio

# Asheville Airbnb Overview
### Table 1: Room Distribution in Asheville
| Room Type        | Price Quartile | Number of Listing | Percentage |
|-----------------|----------------|---------------|----------------------|
| Entire home/apt  | Low            | 489           | 18                   |
| Entire home/apt  | Lower_mid      | 600           | 22                   |
| Entire home/apt  | Upper_mid      | 628           | 24                   |
| Entire home/apt  | High           | 638           | 24                   |
| Hotel room       | Lower_mid      | 4             | 0                    |
| Private room     | Low            | 154           | 5                    |
| Private room     | Lower_mid      | 54            | 2                    |
| Private room     | Upper_mid      | 25            | 0                    |
| Private room     | High           | 13            | 0                    |
| Shared room      | Low            | 8             | 0                    |

The Asheville Airbnb market is clearly dominated by **Entire home/apartment** listings, which account for more than 80% of all listings across price ranges. This suggests that Asheville primarily attracts **groups of travelers** rather than couples or solo travelers.

To capitalise on this trend, hosts offering Entire home/apartment rentals could consider **adding family-friendly amenities**, such as private parking, outdoor spaces, or play areas. These improvements are likely to appeal to families with children and could enhance occupancy and guest satisfaction.

# Asheville Airbnb Activity
**Neighbourhood 28806** stands out as the most active, with **88,316 reviews**, indicating very high guest demand. It is followed by **28801 (76,405 reviews)** and **28804 (47,229 reviews)**, showing that these areas are key hotspots for Airbnb activity in Asheville.
In contrast, neighbourhoods like **28732** and **28715** have significantly fewer reviews, indicating lower guest demand or fewer listings.

Regarding Pricing, **28806** not only has the most activity but also offers the lowest average nightly price ($113) among the top three, suggesting a high volume, budget-friendly market.
Neighbourhoods **28801** and **28804** have slightly higher nightly rates ($137 and $131 respectively), which could reflect **moderate demand combined with slightly higher-value listings.**
The more expensive neighbourhoods (e.g., 28732 at $155) have fewer listings and lower review activity, indicating a smaller, higher-end market segment.

### Table 2: Review Activity by Neighbourhood 
| Neighbourhood | Guest Activity | Nightly Price |
|---------------|-------------|----------------|
| 28806         | 88316       | 113            |
| 28801         | 76405       | 137            |
| 28804         | 47229       | 131            |
| 28803         | 47021       | 146            |
| 28805         | 30685       | 146            |
| 28704         | 14428       | 132            |
| 28715         | 8282        | 150            |
| 28732         | 6183        | 155            |

Across all neighbourhoods, “Entire home/apt” is the dominant room type, making up the highest percentage of listings in every area.
For the most popular neighbourhoods:
28806: 24% of listings are **entire homes/apartments**
28801: 17%
28804: 12%
This suggests that guests in Asheville **prefer private, entire-home accommodations**, particularly in the busiest areas.


### Table 3: Most Popular Room Type and Room Percentage by Neighbourhood
| Neighbourhood | Room Type | Room Percentage |
|----------------|------------------|-------|
| 28806          | Entire home/apt  | 24    |
| 28801          | Entire home/apt  | 17    |
| 28803          | Entire home/apt  | 14    |
| 28804          | Entire home/apt  | 12    |
| 28805          | Entire home/apt  | 9     |
| 28704          | Entire home/apt  | 6     |
| 28715          | Entire home/apt  | 2     |
| 28732          | Entire home/apt  | 2     |

### Trending Analysis
Overall, the peak months for travel are **October (31,609 reviews), July (31,206)**, and **May (30,131)**, indicating that late spring through early fall is the busiest period for guests. Demand remains moderately high from **June through September** (27,849 to 29,356 reviews), reflecting consistent summer activity. In contrast, **winter months** January (18,556) and February (18,332) have the **lowest activity**, suggesting off-peak travel. **December (23,851 reviews)** shows a small rise, likely due to **holiday travel**, but still below peak season levels.

### Table 4: Monthly Airbnb Review Activity in Asheville
| Month | Total Review  |
|-------|--------|
| 1     | 18556  |
| 2     | 18332  |
| 3     | 26587  |
| 4     | 26729  |
| 5     | 30131  |
| 6     | 29356  |
| 7     | 31206  |
| 8     | 27849  |
| 9     | 28107  |
| 10    | 31609  |
| 11    | 26236  |
| 12    | 23851  |

Overall, **October consistently emerges as the peak month for Airbnb activity** in Asheville across multiple years (2023, 2022, 2021), indicating that fall is the most popular season for travelers. Other months with high activity include **summer months** such as May, June, and July, reflecting strong summer tourism.

Airbnb activity in Asheville has shown **steady growth since 2011**, starting from just 6 reviews and reaching a peak of 54,540 reviews in 2023. There is a noticeable dip in 2020, with 28,377 reviews, likely due to COVID-19 travel restrictions, followed by a strong recovery in 2021 and 2022. Early 2025 data shows 16,756 reviews, which may represent partial-year activity.

### Table 5: Yearly Airbnb Review Activity in Asheville
| Year | Review Activity  |
|------|--------|
| 2011 | 6      |
| 2012 | 61     |
| 2013 | 469    |
| 2014 | 1357   |
| 2015 | 3455   |
| 2016 | 6357   |
| 2017 | 12345  |
| 2018 | 19890  |
| 2019 | 30217  |
| 2020 | 28377  |
| 2021 | 46017  |
| 2022 | 52100  |
| 2023 | 54540  |
| 2024 | 46602  |
| 2025 | 16756  |

### Table 6: Peak Monthly Airbnb Review Activity by Year
| Year | Month | Review Activity |
|------|-------|-------|
| 2023 | 10    | 6944  |
| 2022 | 10    | 6036  |
| 2024 | 6     | 5564  |
| 2024 | 7     | 5528  |
| 2024 | 5     | 5492  |
| 2023 | 7     | 5429  |
| 2021 | 10    | 5383  |
| 2022 | 7     | 5292  |
| 2023 | 11    | 4923  |
| 2023 | 6     | 4890  |


## Recommendation
### Yearly Growth
Airbnb activity in Asheville has grown steadily since 2011, starting from only 6 reviews and peaking at 54,540 reviews in 2023. There was a slight dip in 2020 (28,377 reviews), likely due to COVID-19 travel restrictions, but demand recovered strongly in 2021 and 2022. Early 2025 data (16,756 reviews) suggests continued activity, though the year is not complete. Early 2025 data suggests that Airbnb demand continues to growth overtime even the year is not complete

### Seasonal Trends
**Peak months:** October, May, June July
**Off-peak months:** December, January, February
Recommendation: host should focus more on these 4 peak months by adjust pricing and availability. Host could run some promotions, such as discount, during slow seasons to maintain occupancy while charge higher price for peak season.

### Neighbourhood Trends
**Most popular neighbourhood:** 28806 – highest room count (24% of listings) and moderate nightly rate (USD 113).
**Other active neighbourhoods:** 28801 and 28804, with high room availability and competitive pricing. 
Recommendation: Low attractive Airbnb could lower nightly rates to attract more guests.

### Preferable Room Type
Entire home/apartment is the dominant listing type across all neighbourhoods, especially in high-demand areas.
Private rooms and shared rooms are significantly less common, with minimal market share.
Recommendation: Most travelers prefer entire home/apartments, so hosts offering these can capture a larger segment of demand. 
