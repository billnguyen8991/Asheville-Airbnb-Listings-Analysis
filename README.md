# Asheville Airbnb Listings Analysis
Introduction: this project aim is to explore the AirBnB rental trending in Asheville to understand the effect of property availability, price, and reviews that can affect the trend.

Environment used: Microsoft SQL Server Management Studio

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

From this we can see that Asheville market is dominated by Entire home/Apartment rental type across different level of price, which takes more than 80% of listing. Entire home/Apartment room type is suitable for a group of mid to large size travellers, meaning that Asheville market is attracting a group of travellers instead of a couple or individuals. Therefore, I would recommend Entire home/Apartment hosts should add some more utilities, such as private parking space or outdoor space, which could attract more families with kids.

# Asheville Airbnb Activity
**Neighbourhood 28806** stands out as the most active, with **88,316 reviews**, indicating very high guest demand. It is followed by **28801 (76,405 reviews)** and **28804 (47,229 reviews)**, showing that these areas are key hotspots for Airbnb activity in Asheville.
In contrast, neighbourhoods like **28732** and **28715** have significantly fewer reviews, indicating lower guest demand or fewer listings.

Regarding Pricing, **28806** not only has the most activity but also offers the lowest average nightly price ($113) among the top three, suggesting a high volume, budget-friendly market.
Neighbourhoods **28801** and **28804** have slightly higher nightly rates ($137 and $131 respectively), which could reflect **moderate demand combined with slightly higher-value listings.**
The more expensive neighbourhoods (e.g., 28732 at $155) have fewer listings and lower review activity, indicating a smaller, higher-end market segment.

### Table 2: Review Activity by Neighbourhood 
| Neighbourhood | Review Activity | Nightly Price |
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

