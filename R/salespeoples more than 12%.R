library(dplyr)

# Load the data
df1 <- read.csv('E:\\Data_analysis_projects\\salespeoples more than 12%\\dataset\\customer.csv')
df2 <- read.csv('E:\\Data_analysis_projects\\salespeoples more than 12%\\dataset\\salesman.csv')

# Rename columns to avoid confusion
df1 <- df1 %>% rename(city_cust = city)
df2 <- df2 %>% rename(city_salesman = city)

# Merge data frames
df_m <- inner_join(df1, df2, by = 'salesman_id')

# Filter data based on the conditions
filtered_df <- df_m %>%
  filter(
    trimws(city_cust) != trimws(city_salesman) &
      commission > 0.12
  ) %>%
  select(cust_name = cust_name, customer_city = city_cust, salesman = name, salesman_city = city_salesman, commission)

# View the results
print(filtered_df)
