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
    - 07-SEP-2022 Listings [csv](https://github.com/lkachury/airbnb_final_project/tree/main/Resources) file

### Languages
- Python 3.7.13
- JavaScript and HTML

### Software and Tools
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

## Exploratory Data Analysis 
### Data Cleaning
The EDA Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Data_Cleaning.ipynb).

Once the csv file was read in, the following data cleaning processes were performed: 
- Column names were renamed: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063386-a4c86c5a-d288-4da8-825c-f4746413cf14.png)
- Irrelevant columns were dropped: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063478-7b608d3a-85cd-4dda-9654-9855f3bd520c.png)
- Rows with null values were dropped: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063538-2aacab98-5282-44e5-9800-80a40a4d8402.png)

### Results 
- **What is the most popular borough?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202063660-fd2f31b8-ba31-488b-9b86-ae47d45e3c9c.png)
- **What are the Top 5 most frequently rented neighborhoods in each borough?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202063808-c9f18027-4711-4a4f-9ea6-c1e13b206352.png) <br /> ![image](https://user-images.githubusercontent.com/108038989/202063908-4b41594b-afa1-424f-a95a-e02287f82588.png)
- **What is the most popular rental room type?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202063962-12cd1665-2de5-42da-8b6c-81ccd6e39392.png)
- **What are the Top 10 host with the most listings?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202064035-7a348ac9-8563-4a21-a651-be01cd090f4b.png)
- **Does the amount of short-term rentals increase or decrease with the 30-day rental policy?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202064113-82d543fe-96f4-490e-bae5-2668f383d687.png) <br /> ![image](https://user-images.githubusercontent.com/108038989/202064213-517a336c-55d4-422d-9786-bb20f3710a5c.png)

## Machine Learning Model
**How did you select the model, and why? What roadblocks did you encounter and how did you solve them?**

**Random Forest Regression:**  We chose this regression model for the correlation analyses between; price and neighborhood, price and room type, and price and borough. The random forest regression uses multiple input variables to determine the target variable. 

**Linear Regression:** We chose this regression model for the correlation analyses between; price and number of reviews, and price and last reviewed date. This model will use one input variable in order to determine the target variable. 

### Roadblocks
We have not identified any roadblocks at this time. However, we anticipate running into potential roadblocks as we perform the supervised machine learning. 
    
### Correlation analysis
1. Between price and room type
    - Target Variable: Price
    - Input Variables: Room Type, borough, number of listings
2. Between price and borough
    - Target Variable: Price
    - Input Variables: borough, number of listings
3. Between price and neighborhood
    - Target Variable: Price
    - Input Variables: neighborhood, number of listings
4. Between price and number of reviews
    - Target Variable: Price
    - Input Variables: number_of_reviews
5. Between price and last reviewed date
    - Target Variable: Price
    - Input Variables: last_reviewed_date

## Database
The current sql [schema](https://github.com/lkachury/airbnb_final_project/blob/main/QuickDBD-export%20sample%20listing%20data.sql) presents a provisional database. 


## Dashboard
Findings will be presented in a Tableau dashboard. 


## Conclusion
- Recommendation for future analysis
- Anything the team would have done differently
