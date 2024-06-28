# Inventory-Operations-and-Sales

## Insights
### Yearly Sales Trend
#### Sales were highest in 2021 and 2022, with over 30 million units sold each year.
#### There is a significant drop in sales in 2023, indicating a potential issue or external factor affecting sales.
![yearly_sales_trends](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/aaf84414-c6a4-4f2c-8d53-88f1e3dbed87)

### Top Performing Category
#### Clothing is the highest-performing category, followed by Shoes and Technology.
#### Other categories such as Cosmetics, Toys, Food & Beverage, Books, and Souvenir have comparatively lower sales.
![total_sales_per_item](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/5d665035-88d4-45d0-9b3f-4051bc41a4aa)


![top_performing_products](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/854d182d-e67b-4131-a37e-de7ccc221695)

### Sales by Store Location
#### The Mall of Istanbul is the top-performing store, generating the highest sales while Forum Istabul has the lowest sales
![sales_by_store_location](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/e8cc369d-de16-4a14-ae20-19e24311fce2)


### Most Popular Payment Method
#### Cash is the most popular payment method, followed by Credit Card and Debit Card.
![most_popular_payment_method](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/3e157755-c988-4bc9-a0d2-391fe042cbdb)


### Most Popular Gender
#### Female customers outnumber male customers by a significant margin.
#### This insight can be useful for tailoring marketing campaigns and product offerings to the predominant customer gender.
![most_popular_gender](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/1636b4c6-aedd-4296-af2d-9d7af2ca680d)


### Most Popular Age
#### The 55+ age range has the highest count of customers, followed by the 36-45 and 26-35 age ranges.
#### The 18-25 age range has fewer customers, with the "Unknown" category having the least.
#### This information helps in understanding the demographic profile of the customer base, which is crucial for targeted marketing strategies.
![most_popular_age_range](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/c9a54271-2789-4bab-ad04-236c7491bfce)


### Inventory Turnover Rates
#### Clothing has a significantly higher turnover rate compared to other categories, indicating it is sold and replenished more frequently.
#### Shoes, Toys, and Books have much lower turnover rates, suggesting they move more slowly through inventory.
#### High turnover rates in Clothing suggest high demand and effective inventory management, while lower rates in other categories might need further analysis.
![inventory_turnover_rates](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/ffa83b4c-fe46-4499-9c6c-15015c0ca262)


### Customer Recency Distribution
#### The distribution is fairly uniform, with a slight peak around the lower end.
#### This indicates that customers are spread out evenly in terms of recency, with no significant clustering at any specific recency period.
#### Understanding this distribution helps in planning marketing strategies for re-engagement.
![customer_recency_distribution](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/38234aea-c98a-484b-bd2c-c85dfd074e16)



### Customer Monetary Distribution
#### The majority of customers have a low total spend, with the number of customers decreasing as the total spend increases.
#### A few customers have very high spending, which may indicate a small group of high-value customers.
#### This distribution suggests that most customers make low-value purchases, and there is an opportunity to increase average order value.
![customer_monetary_distribution](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/f2a54cdb-4e32-4eff-8371-3c55398c655f)


### Customer Frequency Distribution
#### The data indicates that almost all customers have a frequency of 1 day between purchases.
#### This suggests that purchases are made consistently on a daily basis by a large number of customers.
#### The high frequency of daily purchases might indicate a steady flow of repeat customers or a consistent purchase pattern among the majority of customers.
![customer_frequency_distribution](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/be1e8e5e-b72f-4c6b-a4f9-24de1f806865)


### Inventory Analysis
* **Category**: The type of product or item category.
* **Lead Time**: The time (in days) it takes to receive the inventory from the supplier after placing an order.
* **Order Cost**: The cost associated with placing an order.
* **Holding Cost**: The cost to hold one unit of inventory for a given period.
* **Average Daily Sales**: The average number of units sold per day.
* **Standard Deviation of Daily Sales (stddev_daily_sales)**: The standard deviation of daily sales, which measures the variability of daily sales.
* **Lead Time Demand**: The total demand during the lead time period.
* **Safety Stock**: The additional stock kept to mitigate the risk of stockouts due to variability in demand and supply lead time.
* **Reorder Point**: The inventory level at which a new order should be placed to replenish stock before it runs out.
* **EOQ (Economic Order Quantity):** The optimal order quantity that minimizes the total inventory costs (ordering and holding costs).
* **Reorder Frequency Days**: The frequency (in days) at which new orders should be placed.

### Key Insights

* #### Clothing Category:

  *  High average daily sales (129 units) and a high lead time demand (1290 units).
  * Requires a significant safety stock (114.01 units) to avoid stockouts.
  * Optimal reorder point is 1404.01 units, with an EOQ of 2169.91 units.
  * Orders need to be placed approximately every 16.82 days.

* #### Books Category:

  * Lower average daily sales (18 units) and lower lead time demand (180 units) compared to clothing.
  * Requires a safety stock of 45.71 units.
  * Optimal reorder point is 225.71 units, with an EOQ of 810.56 units.
  * Orders need to be placed approximately every 45.03 days.

* #### Cosmetics Category:

  * Moderate average daily sales (57 units) and lead time demand (570 units).
  * Requires a safety stock of 75.82 units.
  * Optimal reorder point is 645.82 units, with an EOQ of 1442.39 units.
  * Orders need to be placed approximately every 25.31 days.

* #### Food & Beverage Category:

  * Similar average daily sales (55 units) and lead time demand (550 units) as cosmetics.
  * Requires a safety stock of 73.3 units.
  * Optimal reorder point is 623.3 units, with an EOQ of 1416.86 units.
  * Orders need to be placed approximately every 25.76 days.
![inventory_data_table](https://github.com/VwedeOkojie/Inventory-Operations-and-Sales/assets/161823174/49c5e91a-9d21-493d-87b7-b55f4d072cfb)



