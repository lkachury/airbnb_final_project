# NYC Airbnb Listings (Final Project)

## Collaborators 
- [Lizeth Achury](https://github.com/lkachury)
- [Caitlin Curran](https://github.com/CGC519)
- [Morifing Koné](https://github.com/Morifingk) 

Link to [Dashboard Template](https://docs.google.com/presentation/d/1Mi3w53aIEOU2Rec6oZsqjYge9q1U1hirpZo4tbMiPi8/edit#slide=id.p) | Link to [Presentation]()

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
    - Datetime
    - Matplotlib
    - SqlAlchemy
    - SciKitLearn
    - SciPy

## Exploratory Data Analysis 
### Data Cleaning
The EDA Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Data_Cleaning.ipynb).

The following data cleaning processes were performed: 
- Column names were renamed: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063386-a4c86c5a-d288-4da8-825c-f4746413cf14.png)
- Irrelevant columns were dropped: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063478-7b608d3a-85cd-4dda-9654-9855f3bd520c.png)
- Rows with null values were dropped: <br /> ![image](https://user-images.githubusercontent.com/108038989/202063538-2aacab98-5282-44e5-9800-80a40a4d8402.png)
- The "last_review" date column was converted to a count of days since the last review: <br /> ![image](https://user-images.githubusercontent.com/108038989/204175258-caaa386b-439e-41ab-9a5a-435d25780e25.png) <br /> ![image](https://user-images.githubusercontent.com/108038989/204175334-dfbb028f-1169-479e-8c9f-f58fb3bdcd43.png)

### Results 
- **What is the most popular borough?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202063660-fd2f31b8-ba31-488b-9b86-ae47d45e3c9c.png)
- **What are the Top 5 most frequently rented neighborhoods in each borough?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202065757-8b6125c3-351a-4e90-8350-bc41dc225c4f.png) <br /> ![image](https://user-images.githubusercontent.com/108038989/202065833-dee3d97e-b843-409f-a301-93c96dcb632e.png)
- **What is the most popular rental room type?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202065923-cd3a5c33-9594-48cb-80ca-1784e4c96fa0.png)
- **What are the Top 10 host with the most listings?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202065964-a6e927e9-6ed0-44ef-ae19-f080633d8e12.png)
- **Does the amount of short-term rentals increase or decrease with the 30-day rental policy?** <br /> ![image](https://user-images.githubusercontent.com/108038989/202064113-82d543fe-96f4-490e-bae5-2668f383d687.png) <br /> ![image](https://user-images.githubusercontent.com/108038989/202064213-517a336c-55d4-422d-9786-bb20f3710a5c.png)

## Database
The Database SQL [schema](https://github.com/lkachury/airbnb_final_project/blob/main/Database_Schema.sql). 

- [ERD](https://github.com/lkachury/airbnb_final_project/blob/main/Listings_QuickDBD.sql) with relationships: <br /> ![image](https://user-images.githubusercontent.com/108038989/204174833-1daf6c78-1799-487b-9f2e-98cb00749e98.png)

- Database stores static data for use during the project: <br /> <img width="832" alt="Selecting all data from main Table" src="https://user-images.githubusercontent.com/104086409/204105669-69173e43-478d-4f86-9bbf-685b900caa80.png">

- Database interfaces with the project in some format (e.g., scraping updates the database): 
TBD

- Includes at least two tables: <br /> <img width="848" alt="information from the 1st sub table" src="https://user-images.githubusercontent.com/104086409/204105961-aa8171b7-40a6-4b99-94a5-efca3a92a079.png"> <br /> ![image](https://user-images.githubusercontent.com/108038989/204175071-15242b3b-b3e4-4b53-9f9b-c9c3e8249503.png)

- Includes at least one join using the database language: <br /><img width="1002" alt="Combining Tables in sql " src="https://user-images.githubusercontent.com/104086409/204105980-0821e798-b772-485b-a6ab-9649964f808c.png">

- Includes at least one connection string (using SQLAlchemy): <br /> <img width="942" alt="Creating Main Table, and sub tables Through Jupyter" src="https://user-images.githubusercontent.com/104086409/204105995-5505bf98-479d-49d9-bee8-4b575fbfbaf6.png">

## Machine Learning Model
The ML Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Machine_Learning.ipynb).

**Explanation of model choice, including limitations and benefits:**
- Random Forest Regression:
We chose this regression model for the correlation analyses between; price and neighborhood, price and room type, and price and borough. The random forest regression uses multiple input variables to determine the target variable. Limitations TBD

- Linear Regression:
We chose this regression model for the correlation analyses between; price and number of reviews, and price and last reviewed date. This model will use one input variable in order to determine the target variable. Limitations TBD
    
### Correlation Analysis
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

### Roadblocks
We have not identified any roadblocks at this time. However, we anticipate running into potential roadblocks as we further perform the supervised machine learning. 
- An interpretation of the accuracy, precision, and sensitivity of the model should be included with the submission.
- If you had more time, where would you like to investigate for finer tuning? 


## Dashboard
Dashboard template currently on [Google Slides](https://docs.google.com/presentation/d/1Mi3w53aIEOU2Rec6oZsqjYge9q1U1hirpZo4tbMiPi8/edit#slide=id.g198aae88c8c_0_63). Findings will be presented in a Tableau dashboard with an interactive map showing the map of NYC and the density of listings in each borough with the ability to zoom in and out.

## Conclusion
- Recommendation for future analysis
- Anything the team would have done differently
