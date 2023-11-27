

# Sales Data Analysis Pipeline
## Project Overview
This project implements a comprehensive sales data pipeline for a retail company. The pipeline combines generated sales data with user data fetched from an external API (JSONPlaceholder) and weather data from OpenWeatherMap API. The objective is to perform data transformations, aggregations, and visualizations to derive insights into customer behavior and sales performance.

## Data Sources
#### Sales Data: Provided in a CSV file (sales_data.csv). Contains fields like order_id, customer_id, product_id, quantity, price, and order_date.
#### User Data: Fetched from JSONPlaceholder API. Includes user details like id, name, username, email, and geolocation (lat, lng).
#### Weather Data: Fetched from OpenWeatherMap API using the geolocation data from the user data.

## Pipeline Steps
#### Data Loading: Sales data is loaded from a CSV file.

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/64ea2e6b-1e1f-4385-a0ac-2229e8bd9b80)


### Data Fetching:
#### Fetch user data from JSONPlaceholder API.

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/2b3c94e2-ba98-4d1d-b899-547004246817)

#### Fetch weather data from OpenWeatherMap API based on user's geolocation.

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/6c9cf9bb-c83e-4a47-86e9-897aa0749168)

#### Data Merging: Sales data is merged with user data and weather data.


![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/70ffbfce-300d-40c6-802a-27e051de1ce1)


#### Data Aggregation and Analysis: Perform various aggregations like total sales per customer, average order quantity per product, and top-selling products.

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/f8fce8f8-d18e-496f-aa00-b4cb8365de9d)

#### Data Storage: Store the merged and transformed data into MongoDB.

![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/4e467a00-0f37-4df4-afc2-ff4cf0ae3a46)

#### Visualization: Generate visualizations for sales distribution, product popularity, sales trends, and other insights.

## Installation and Setup
#### Prerequisites
Anaconda: This project requires Anaconda, a popular distribution of Python, which includes Jupyter Notebook.

MongoDB: A running MongoDB instance is needed for data storage.

#### Setting Up the Environment
### Install Anaconda:
Download and install Anaconda from the official site. Choose the installer appropriate for your operating system.
Follow the installation instructions provided on the website.

### Install MongoDB:
Follow the instructions on the MongoDB official documentation to install MongoDB on your machine.

### Setting up a Conda Environment:
Open the Anaconda Navigator and create a new environment.
Select Python as the base language for this environment.

### Install Required Libraries:
Once the environment is created, open a terminal in this environment (through Anaconda Navigator).
Install the required Python libraries by running:
``` pip install pandas requests pymongo matplotlib seaborn ```

### Launch Jupyter Notebook:
Inside the Anaconda Navigator, launch Jupyter Notebook within the created environment.
Use Jupyter Notebook to open and run the project files.

### Running MongoDB:
Start the MongoDB service on your machine. The method to start the service varies based on your operating system.

### Running the Project
Open the project Jupyter Notebook in the Anaconda environment.
Run the cells in the notebook sequentially to execute the data pipeline.
### Dependencies
Python libraries: pandas, requests, pymongo, matplotlib, seaborn
MongoDB

## Limitations and Issues
#### Geolocation Data: The latitude and longitude provided by JSONPlaceholder are often not realistic (e.g., in the middle of the ocean), leading to issues in fetching valid city names.
#### Weather Data: The OpenWeatherMap API in the free account tier does not provide historical weather data, which limits the ability to correlate sales data with past weather conditions accurately.
## Potential Enhancements
#### Use of a more accurate and comprehensive API for user geolocation and historical weather data.
#### Implementing caching for API responses to optimize performance and handle API rate limits.

## Visualizations
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/ca2c0426-87d8-4790-83e3-9d4e5725c790)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/cde69603-d872-42c3-853c-6b393bd6ffcd)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/b54dff08-b13c-4877-8215-635db483b44f)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/bae4caa2-f519-44ae-8236-43c01c9fbe7d)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/c9b61e1d-f02c-483e-8089-3748920c4007)
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/fddd9fef-7496-4dd9-8465-a0a447db0960)


# Author
tomlo1
