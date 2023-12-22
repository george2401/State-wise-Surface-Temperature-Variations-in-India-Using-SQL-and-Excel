# State-wise-Surface-Temperature-Variations-in-India-Using-SQL-and-Excel

## Project Overview
The project, titled "**State-wise-Surface-Temperature-Variations-in-India-Using-SQL-and-Excel**," is a comprehensive study that delves into the average surface temperature data of all states in India over the specified time frame. The primary goal of this initiative is to assess and draw conclusions about the climate changes that have occurred in India during the period from 1980 to 2013.

Objectives:
- Analyze the historical trends in average surface temperatures for each state in India.
- Identify patterns or anomalies in temperature variations over the years.

This project holds significant importance as it contributes valuable insights into the climate dynamics of India over the past three decades. By leveraging the available data, we aim to uncover trends, patterns, and potential indicators of climate change, fostering a deeper understanding of the environmental shifts that have taken place.

## Project Scope
The scope of the project encompasses a detailed investigation into various aspects of surface temperature data for Indian states. The project aims to provide a comprehensive understanding of climate variations during the specified time period. The key components of the project scope include:

1. Temperature Extremes Analysis.
   - Objective: Identify the maximum and minimum temperatures recorded by any state in India from 1980 to 2013.
   - Methodology: Analyze the dataset to pinpoint the states that experienced the highest and lowest temperatures during the given time frame.
3. April Temperature Analysis for Selected States.
   - Objective: Examine the temperature trends for Assam, Delhi, Kerala, Tamil Nadu, Uttar Pradesh, and Maharashtra specifically in the month of April from 1980 to 2013.
   - Methodology: Extract and analyze data for the selected states during the month of April each year to observe temperature variations.
4. April Temperature Extremes for Selected States.
   - Objective: Determine the minimum and maximum temperatures experienced by Assam, Delhi, Kerala, Tamil Nadu, Uttar Pradesh, and Maharashtra in the month of April from 1980 to 2013.
   - Methodology: Identify the extreme temperature values for April in each state within the specified time frame.
5. Average Temperature Analysis for Selected States (1980-2013).
   - Objective: Calculate the average temperature received by the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra - from 1980 to 2013.
   - Methodology: Utilize aggregate functions to compute the average temperature for each state over the given years.
6. Monthly Average Temperature Analysis for Selected States (1980-2013).
   - Objective: Determine the average temperature in each month from 1980 to 2013 for the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra.
   - Methodology: Group the data by month and state, calculating the average temperature for each combination.
7. Yearly Average Temperature Analysis for Selected States (1980-2013).
   - Objective: Analyze the average temperature received by the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra - in each year from 1980 to 2013.
   - Methodology: Group the data by year and state, calculating the average temperature for each combination.
8. Overall Average Temperature of India.
   - Objective: Determine the overall average temperature of India from 1980 to 2013.
   - Methodology: Utilize aggregate functions to calculate the average temperature for the entire dataset.

The project scope is designed to cover a wide range of analyses, providing a nuanced understanding of temperature trends at different granularities and for specific states and time periods. The results will contribute valuable insights into climate change patterns in India over the specified years.

## Approach
Data Source:
The dataset for this project was sourced from [Kaggle](https://www.kaggle.com/datasets/berkeleyearth/climate-change-earth-surface-temperature-data), providing comprehensive information on the average surface temperatures of Indian states from 1980 to 2013.

Data Exploration:
- Data Collection: Acquired the dataset and assessed its structure, examining columns such as state, date, and average temperature.
- Data Cleaning: Cleaned the dataset to handle missing values, outliers, and ensure consistency. Addressed any anomalies that could impact the analysis.

Analysis in SQL:
- Maximum and Minimum Temperature Analysis:  
Employed SQL queries to identify the maximum and minimum temperatures recorded by any state in the given time period.
- April Temperature Analysis for Selected States:  
Utilized SQL to extract and analyze data for Assam, Delhi, Kerala, Tamil Nadu, Uttar Pradesh, and Maharashtra in the month of April for each year.
- April Temperature Extremes for Selected States:  
Employed SQL queries to determine the minimum and maximum temperatures experienced by the selected states in April from 1980 to 2013.
- Average Temperature Analysis for Selected States (1980-2013):  
Leveraged SQL aggregate functions to calculate the average temperature for each of the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra.
- Monthly Average Temperature Analysis for Selected States (1980-2013):  
Used SQL to calculate the monthly average temperature for the selected states.
- Yearly Average Temperature Analysis for Selected States (1980-2013):  
Employed SQL to calculate the yearly average temperature for the selected states.
- Overall Average Temperature of India:  
 Used SQL to compute the overall average temperature for the entire dataset.

Visualization:  
Graphical Representation:  
Utilized Excel charts and graphs to visually represent temperature trends, making it easier to interpret and communicate findings.

## Results And Conclusion

### 1. Temperature Extremes Analysis:
   - Maximum Temperature:  
State with the highest temperature: Delhi  
Maximum temperature recorded: 36.339°C  
Date: 2012-06-01

   - Minimum Temperature:  
State with the lowest temperature: Jammu And Kashmir  
Minimum temperature recorded: -10.407°C  
Date: 1995-01-01

### 2. April Temperature Analysis for Selected States:  
1. Assam:  
The average April temperatures in Assam ranged from approximately 21.455°C to 25.129°C.    
Over the years, there seems to be a variation in temperatures, but no distinct upward or downward trend is immediately apparent.  
2. Delhi:    
Delhi experienced higher average April temperatures, ranging from around 26.043°C to 32.809°C.  
There is a noticeable increase in temperatures, suggesting a warming trend over the years.  
3. Kerala:  
Kerala's April temperatures ranged from about 28.387°C to 31.86°C.  
The temperatures appear to fluctuate, but there is no clear trend observed.   
4. Maharashtra:  
Maharashtra had April temperatures ranging from approximately 29.219°C to 32.474°C.  
Similar to Kerala, there is no distinct trend in temperatures over the years.  
5. Tamil Nadu:  
Tamil Nadu experienced April temperatures ranging from about 28.729°C to 30.712°C.  
The temperatures show some variation, but again, there is no clear upward or downward trend.  
6. Uttar Pradesh:  
Uttar Pradesh had April temperatures ranging from around 26.182°C to 32.041°C.  
The temperatures display some variability, and there is no consistent trend.

Overall Observations:  
Delhi and Maharashtra generally exhibit higher April temperatures compared to the other states.  
While some states show fluctuations in April temperatures, it's essential to conduct further statistical analysis to identify any statistically significant trends or patterns.
These observations provide a snapshot of the variability in April temperatures across the selected states but require additional statistical methods for a more in-depth analysis.

### 3. April Temperature Extremes for Selected States:  
Identified the minimum and maximum temperatures experienced by Assam, Delhi, Kerala, Tamil Nadu, Uttar Pradesh, and Maharashtra in the month of April from 1980 to 2013.

### 4. Average Temperature Analysis for Selected States (1980-2013):  
Calculated and analyzed the average temperature from 1980 to 2013 for the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra.  

1. Assam:  
The average temperature in Assam from 1980 to 2013 was approximately 22.37°C.  
Assam experiences a relatively moderate average temperature compared to other states in the analysis.   
2. Delhi:  
Delhi had an average temperature of around 25.85°C over the same period.  
Delhi's average temperature is higher than Assam but lower than some other states.  
3. Kerala:  
Kerala recorded an average temperature of approximately 26.96°C.  
Kerala exhibits a relatively higher average temperature, indicative of its tropical climate.  
4. Maharashtra:  
Maharashtra had an average temperature of about 26.54°C.  
Maharashtra's average temperature falls within the mid-range compared to the selected states.  
5. Tamil Nadu:  
Tamil Nadu experienced an average temperature of around 27.30°C.  
Tamil Nadu has a relatively higher average temperature, reflecting its warm climate.  
6. Uttar Pradesh:  
Uttar Pradesh recorded an average temperature of approximately 25.27°C.  
Uttar Pradesh has a slightly lower average temperature compared to some other states in the analysis.

Key Observations:  
- Regional Temperature Variability:  
There is noticeable variability in average temperatures among the selected states, highlighting the diverse climate conditions across different regions of India.  
- Climate Diversity:  
States like Kerala and Tamil Nadu, with averages around 27°C, have warmer climates typical of southern regions.  
Assam and Uttar Pradesh, with averages around 22-25°C, exhibit comparatively milder climates.  
- Urban Heat Island Effect:    
Delhi, being an urban center, shows a relatively higher average temperature (25.85°C), likely influenced by the urban heat island effect.  
- Influence of Geography:  
Geographic factors, such as proximity to the coast, elevation, and latitude, contribute to the observed temperature variations.  


### 5. Monthly Average Temperature Analysis for Selected States (1980-2013):  
Examined the average temperature in each month from 1980 to 2013 for the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra.    
1. Assam:  
Assam experiences a moderate range of temperatures throughout the year.  
Lowest average temperature: January (15.075°C)  
Highest average temperature: July (26.816°C)  
Consistent increase in temperatures from January to July, followed by a gradual decrease.  
2. Delhi:  
Delhi exhibits a wider temperature range, with distinct seasons.  
Lowest average temperature: January (14.714°C)  
Highest average temperature: June (34.197°C)  
Clear transition from cooler months (January) to warmer months (June) with peak temperatures in summer.  
3. Kerala:  
Kerala has relatively stable temperatures across the months.  
Lowest average temperature: January (26.366°C)  
Highest average temperature: May (29.051°C)  
Limited temperature variation, indicating a more consistent climate throughout the year.  
4. Maharashtra:  
Maharashtra experiences significant temperature fluctuations.  
Lowest average temperature: December (21.567°C)  
Highest average temperature: June (32.661°C)  
Sharp increase in temperatures from January to June, followed by a gradual decrease.  
5. Tamil Nadu:  
Tamil Nadu shows a similar pattern to Kerala, with relatively stable temperatures.  
Lowest average temperature: December (24.605°C)  
Highest average temperature: May (30.039°C)  
Moderate temperature variations, with a peak in May.  
6. Uttar Pradesh:  
Uttar Pradesh experiences distinct seasons with notable temperature changes.  
Lowest average temperature: January (15.048°C)  
Highest average temperature: June (32.594°C)  
Similar to Delhi, a clear transition from cooler months to warmer months.

Key Observations:  
- Seasonal Variation:  
Delhi and Uttar Pradesh exhibit more pronounced seasonal temperature changes, typical of regions with distinct summer and winter seasons.  
- Stable Climates:  
Kerala and Tamil Nadu show more stable climates throughout the year, with less variation between months.  
- Geographical Influence:  
Coastal states like Kerala and Tamil Nadu have milder temperature variations compared to landlocked states like Delhi and Uttar Pradesh.  
- Impact of Elevation:  
Maharashtra, with varying elevations, experiences notable temperature fluctuations, especially during the transition from winter to summer.  



### 6. Yearly Average Temperature Analysis for Selected States (1980-2013):  
Analyzed the average temperature for each year from 1980 to 2013 for the states - Kerala, Tamil Nadu, Delhi, Uttar Pradesh, Assam, and Maharashtra.  
1. Assam:  
Gradual temperature increase observed over the years.  
Noticeable peak in 2009, indicating a warmer year.  
Overall, a consistent but modest upward trend.  
2. Delhi:  
Delhi's temperatures show a stable trend with slight fluctuations.  
Peak temperatures in 2010 and 2013, suggesting warmer periods.  
No drastic variations, indicating a relatively stable climate.  
3. Kerala:  
Kerala experiences a steady increase in temperatures.  
2013 shows the highest recorded temperature, indicating a warming trend.  
Overall, a consistent upward trajectory in yearly averages.  
4. Maharashtra:  
Maharashtra displays a gradual rise in temperatures.  
Significant peak in 2009, followed by relatively stable temperatures.  
General warming trend with occasional fluctuations.  
5. Tamil Nadu:  
Tamil Nadu exhibits a consistent increase in yearly average temperatures.  
2013 stands out with the highest recorded temperature.  
Overall, a warming trend with no drastic deviations.  
6. Uttar Pradesh:  
Uttar Pradesh displays a relatively stable trend with slight temperature fluctuations.  
Noticeable increase in 2013, indicating a warmer year.  
Generally, a stable climate with modest temperature changes.

Key Insights:  
- Warming Trends:  
Assam, Kerala, Tamil Nadu, and Uttar Pradesh show clear warming trends over the years.  
Delhi and Maharashtra also exhibit warming, but with more stability.  
- Yearly Variations:  
2013 appears as a notably warm year for several states.  
2009 stands out as a warmer year for Assam and Maharashtra.  
- Regional Patterns:  
Coastal states like Kerala and Tamil Nadu demonstrate consistent warming trends.  
Landlocked states (Delhi, Uttar Pradesh) show more stable but increasing temperatures.  
- Climate Stability:  
Overall, the states exhibit climate stability with gradual warming, emphasizing the importance of long-term climate monitoring.  

### 7. Overall Average Temperature of India:  
Computed the overall average temperature of India from 1980 to 2013 and was found to be 22.597°C.  

## Appendices: Project Datasets and Files  

1. Dataset used: https://www.kaggle.com/datasets/berkeleyearth/climate-change-earth-surface-temperature-data
2. SQL Script File:  
Filename: [source code SQL.sql](https://github.com/george2401/State-wise-Surface-Temperature-Variations-in-India-Using-SQL-and-Excel/blob/main/source%20code%20SQL.sql)  
Description: Script containing SQL queries for data extraction and analysis  
3. Excel Workbook:  
Filename: Excel Book.xlsx  
Description: Excel file housing detailed temperature analysis, charts, and visualizations.  



