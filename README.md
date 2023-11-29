# Sales Data Analysis Pipeline

## Project Overview
This project involves building a comprehensive sales data pipeline for a retail company. The pipeline combines generated sales data with external user data and weather data, performs data transformations and aggregations, and stores the final dataset in a PostgreSQL database. The aim is to enable analysis and derive insights into customer behavior and sales performance.

## Data Sources
- **Sales Data**: Provided in a CSV file `sales_data.csv`. Contains fields like `order_id`, `customer_id`, `product_id`, `quantity`, `price`, and `order_date`.
- **User Data**: Fetched from JSONPlaceholder API. Includes details like `id`, `name`, `username`, `email`, and geolocation (`lat`, `lng`).
- **Weather Data**: Fetched from OpenWeatherMap API using the geolocation data from the user data.

## Pipeline Components
1. **Data Loading**: Sales data is loaded from the CSV file and is contained as Sales.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/965a9f66-15e1-4181-b22d-cb41ad17f2e3)

2. **Data Fetching**:
   - User data is fetched from the JSONPlaceholder API and contained as User.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/70474a0c-cda8-41b1-bfa6-36a5826b6aab)

   - Weather data is fetched from the OpenWeatherMap API using user geolocation and is contained as Weather.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/73f5c9a6-d353-46f1-a505-51c06ce35839)

4. **Data Aggregations**: Calculations like total sales per customer, average order quantity per product, and top-selling products.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/5776ff3d-c63c-4a2c-959f-42012057f227)

6. **Data Storage**: The transformed data is stored in a PostgreSQL database.
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/52f9b8d6-9961-4290-9813-ce46e567369a)

3. **Data Merging**: Data is merged after each dataframe is stored sperately 
![image](https://github.com/tomlo1/saledatapipeline/assets/147176370/eb368498-3dcb-41da-bd4f-59ebfcfe3383)



8. **Visualization**: Generation of various plots to visualize the data insights.

## Database Schema Description

The project utilizes a PostgreSQL database with a schema comprising four main tables: `Sales`, `Users`, `Weather`, and `MergedData`. Below is a detailed description of each table and their relationships.

### 1. `Sales` Table
The `Sales` table contains data related to sales transactions. Each record in this table represents a sale.

**Fields:**
- `order_id`: Unique identifier for the sales order.
- `customer_id`: Identifier for the customer who made the purchase.
- `product_id`: Identifier for the product that was sold.
- `quantity`: The quantity of the product sold in the transaction.
- `price`: The total price of the products sold in the transaction.
- `order_date`: The date on which the sale was made.

### 2. `Users` Table
The `Users` table holds information about the users/customers.

**Fields:**
- `id`: Unique identifier for each user/customer.
- `name`: The name of the user.
- `username`: The username of the user.
- `email`: The email address of the user.
- `lat`: The latitude coordinate of the user's location.
- `lng`: The longitude coordinate of the user's location.

### 3. `Weather` Table
The `Weather` table contains weather data corresponding to each user's location.

**Fields:**
- `user_id`: Identifier for the user, linked to the `id` in the `Users` table.
- `city`: The name of the city based on the user's geolocation.
- `temperature`: The temperature recorded for the user's location.
- `weather_condition`: A description of the weather conditions (e.g., sunny, rainy, cloudy).

### 4. `MergedData` Table
The `MergedData` table is a comprehensive table that merges data from the `Sales`, `Users`, and `Weather` tables to provide a holistic view of the sales data along with corresponding user and weather information.

**Fields:**
- Includes all fields from the `Sales`, `Users`, and `Weather` tables.
- Fields from `Users` and `Weather` are joined on the `customer_id` and `user_id` respectively.

### Relationships
- The `Sales` table is related to the `Users` table through the `customer_id` field in `Sales`, which corresponds to the `id` field in `Users`.
- The `Weather` table is related to the `Users` table through the `user_id` field in `Weather`, which corresponds to the `id` field in `Users`.
- The `MergedData` table is created by joining these tables based on these relationships, providing a combined view of sales transactions, user data, and weather information.


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

## Docker Instuctions
### Pulling and Running the Docker Image
#### Step 1: Pull the Docker Image
First, ensure that Docker is installed on your system. If not, install Docker from the official Docker website.

To pull the image from Docker Hub, open a terminal and run:


``` docker pull tomlo1/salesdatapipelinepgsql:1.2 ```
This command downloads the salesdatapipelinepgsql image tagged 1.2 from your Docker Hub repository tomlo1.

#### Step 2: Run the Docker Container
After pulling the image, you can run the container. If your application requires specific environment variables or ports to be set, make sure to include them in the run command. For example:

``` docker run -p 8888:8888 -p 5432:5432 tomlo1/salesdatapipelinepgsql:1.2 ```
This command runs the container and maps the ports for Jupyter Notebook (8888) and PostgreSQL (5432) to the host machine.

#### Step 3: Access the Application
This application should open itself once ran, however please see below for steps should any errors occur

- For Jupyter Notebook: After running the container, Jupyter Notebook should be accessible via http://localhost:8888 in your web browser.

- For PostgreSQL: The database can be accessed at localhost:5432. Use the credentials specified in your Docker configuration to connect to the database.

## Author
tomlo1
