# airbnb_final_project (Needs a Title?)

## Collaborators 
- [Caitlin Curran](https://github.com/CGC519)
- [Morifing Koné](https://github.com/Morifingk) 
- [Lizeth Achury](https://github.com/lkachury)

Link to [Dashboard]() | Link to [Presentation]()

## Project Overview
New York City Airbnb listings data will be used to perform predictive analysis to identify the factors that influences listing price. This topic was selected due to the team's interest in exploring the short-term rental market and the availability of New York City's Airbnb listing data from Inside Airbnb. Inside Airbnb provides data, information, and advocacy on Airbnb's residential communities impact so that communities can understand, decide and control the role of renting residential homes to tourists. 

The listings dataset consist of over 39,000 listings and 18 variables that provide useful metrics and information to visualize trends. The dataset will first be sourced, downloaded, and prepared for analysis. Python and Pandas will be used to clean the data and perform exploratory data analysis. PostgreSQL and pgAdmin will be used for database integration and to store the cleaned data. Machine learning will then be applied to predict room prices. Finally, the findings will be presented in a Tableau dashboard. 

Questions the team hopes to answer with the data:
- What is the most popular borough?
- What are the Top 5 most frequently rented neighborhoods in each borough? 
- What is the most popular rental room type?
- What are the Top 10 host with the most listings?
- Does the amount of short-term rentals increase or decrease with the 30-day rental policy?
- Perform correlation analysis between:
    - listing price and room type
    - listing price and borough 
    - listing price and neighborhood
    - listing price and number of reviews
    - listing price and last reviewed date 

## Communication Protocols 
The team communicated through a designated Slack Group Channel and pre-determined meeting times. 

## Resources
### Data Source 
- New York City, New York, USA [Inside Airbnb](http://insideairbnb.com/get-the-data/) 
    - 07-SEP-2022 Listings [csv](https://github.com/lkachury/airbnb_final_project/blob/main/Resources.zip) file

### Software
- Conda 4.13.0
- Jupyter Notebook 
- Visual Studio Code 1.69
- PostgreSQL and pgAdmin 6.8
- Tableau Public 2022.2
- Libraries/Dependencies:
    - Pandas
    - Numpy
    - SqlAlchemy
    - SciKitLearn
    - SciPy

### Languages
- Python 3.7.13
- JavaScript and HTML

## Exploratory Data Analysis 
### Data Cleaning
The EDA Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Data_Cleaning.ipynb).

Once the csv file was read in, the following data cleaning processes were performed: 
- Column names were renamed
- Irrelevant columns were dropped
- Rows with null values were dropped

### Results 
- What is the most popular borough? <br /> 
- What are the Top 5 most frequently rented neighborhoods in each borough? <br /> 
- What is the most popular rental room type? <br /> 
- What are the Top 10 host with the most listings? <br /> 
- Does the amount of short-term rentals increase or decrease with the 30-day rental policy? <br /> 

## Machine Learning Model

**Random Forest Regression:**  We chose this regression model for the correlation analyses between; price and neighborhood, price and room type, and price and borough. The random forest regression uses multiple input variables to determine the target variable. 

**Linear Regression:** We chose this regression model for the correlation analyses between; price and number of reviews, and price and last reviewed date. This model will use one input variable in order to determine the target variable. 

### Roadblocks
We have not identified any roadblocks at this time. However we anticipate running into potential roadblocks as we perform the supervised machine learning. 
    
### Correlation analysis
    between price and room type
        Target Variable: Price
        Input Variables: Room Type, borough, number of listings
    between price and borough
        Target Variable: Price
        Input Variables: borough, number of listings
    between price and neighborhood
        Target Variable: Price
        Input Variables: neighborhood, number of listings
    between price and number of reviews
        Target Variable: Price
        Input Variables: number_of_reviews
    between price and last reviewed date
        Target Variable: Price
        Input Variables: last_reviewed_date

## Database
The sql [schema](https://github.com/lkachury/airbnb_final_project/blob/main/QuickDBD-export%20sample%20listing%20data.sql) presents a provisional database. 


## Dashboard
Findings will be presented in a Tableau dashboard. 


## Conclusion
- Recommendation for future analysis
- Anything the team would have done differently
