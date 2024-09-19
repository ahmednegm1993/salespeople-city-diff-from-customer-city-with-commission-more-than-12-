import pandas as pd
df1=pd.read_csv(r'E:\\Data_analysis_projects\\salespeoples more than 12%\\dataset\\customer.csv')
df2=pd.read_csv(r'E:\\Data_analysis_projects\\salespeoples more than 12%\\dataset\\salesman.csv')
df_m=pd.merge(df1,df2,how='inner',on='salesman_id',suffixes=('_cust', '_salesman'))
filter_df = df_m[(df_m['city_cust'].str.strip() != df_m['city_salesman'].str.strip()) & (df_m['commission'] > 0.12)]
print(filter_df)
