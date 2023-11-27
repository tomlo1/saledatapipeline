# Sales Data Analysis Pipeline

## Project Overview
This project involves building a comprehensive sales data pipeline for a retail company. The pipeline combines generated sales data with external user data and weather data, performs data transformations and aggregations, and stores the final dataset in a PostgreSQL database. The aim is to enable analysis and derive insights into customer behavior and sales performance.

## Data Sources
- **Sales Data**: Provided in a CSV file `sales_data.csv`. Contains fields like `order_id`, `customer_id`, `product_id`, `quantity`, `price`, and `order_date`.
- **User Data**: Fetched from JSONPlaceholder API. Includes details like `id`, `name`, `username`, `email`, and geolocation (`lat`, `lng`).
- **Weather Data**: Fetched from OpenWeatherMap API using the geolocation data from the user data.

## Pipeline Components
1. **Data Loading**: Sales data is loaded from the CSV file.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/965a9f66-15e1-4181-b22d-cb41ad17f2e3)

2. **Data Fetching**:
   - User data is fetched from the JSONPlaceholder API.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/70474a0c-cda8-41b1-bfa6-36a5826b6aab)

   - Weather data is fetched from the OpenWeatherMap API using user geolocation.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/fd813464-0162-43cf-bf1b-9f97bc011fba)

3. **Data Merging**: Sales data is merged with user and weather data.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/7dd1638c-6108-42a2-8fe7-d88a221a252f)

4. **Data Aggregations**: Calculations like total sales per customer, average order quantity per product, and top-selling products.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/5776ff3d-c63c-4a2c-959f-42012057f227)

5. **Data Storage**: The transformed data is stored in a PostgreSQL database.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/01928d49-8bff-4ffd-b1d9-26a4d344761c)

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/83029584-0b1b-4e3a-9ed7-b7ff3dd9867f)

6. **Visualization**: Generation of various plots to visualize the data insights.

## Installation and Setup
### Prerequisites
- Anaconda (includes Python and Jupyter Notebook)
- PostgreSQL Database

### Steps
1. **Clone the Repository**: Clone/download the project repository to your local machine.
2. **Set Up PostgreSQL Database**: Install and set up PostgreSQL. Create a database named `salesdata`.
3. **Install Python Dependencies**: Run `pip install pandas requests sqlalchemy psycopg2-binary matplotlib seaborn` to install required libraries.
4. **Launch Jupyter Notebook**: Open Jupyter Notebook in the project directory.
5. **Run the Notebook**: Execute the cells in the notebook sequentially.

## Visualizations
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/addfad83-3b26-4e52-a17c-45dda597557c)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/6e83bbf1-fd3b-4a5a-9aa7-cffcddb7da4f)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/d424b149-8891-4cd2-b30b-7e8bb34f07e9)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/9175899f-ad14-4fde-8ed2-6660b7fcc80f)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/164760b2-735d-4772-b1ad-24e82aa3819a)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/fd4e4403-424b-4e3f-950c-f2ed7c849dc1)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/f4a0142c-ab02-42ae-8261-50b395193c51)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/067853db-c82c-436d-9b3a-4127e7ff285d)


## Notes
- Ensure the PostgreSQL credentials in the script match your database setup.
- Replace the OpenWeatherMap API key in the script with your own.

## Author
tomlo1
