# NYC Airbnb Listings (Final Project)

## Collaborators 
- [Lizeth Achury](https://github.com/lkachury)
- [Caitlin Curran](https://github.com/CGC519)
- [Morifing Koné](https://github.com/Morifingk) 

Link to [Dashboard](https://lkachury.github.io/airbnb_final_project/) | Link to [Presentation](https://docs.google.com/presentation/d/1akvqPa9ULUkWUcrPgqRdw_VDkulm2erPaed-lPo8Z5E/edit#slide=id.p)

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
    - 07-SEP-2022 Listings [csv](https://github.com/lkachury/airbnb_final_project/tree/main/Resources) file <br /> Each row contains the host's ID and Name, the listing's ID and Name, location (borough, neighborhood, latitude, and longitude), room type, price, minimum nights required, the date the listing was last reviewed, the total number of reviews and number of reviews for the last 12 months, the average reviews per month, the host's calculated listings count, the listing's availability out of the year, and whether the listing has a license.

### Languages
- Python 3.7.13
- JavaScript and HTML

### Software and Tools
- GitHub
- Conda 4.13.0
- Jupyter Notebook 
- Visual Studio Code 1.69
- Amazon Web Services [AWS](https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fus-east-2.console.aws.amazon.com%2Fconsole%2Fhome%3FhashArgs%3D%2523%26isauthcode%3Dtrue%26region%3Dus-east-2%26state%3DhashArgsFromTB_us-east-2_318d8c27809788f6&client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcanvas&forceMobileApp=0&code_challenge=gf6Y-GFZQRFCv8tEDap-x0jKkraF8o47ytdxWAJg0YQ&code_challenge_method=SHA-256)
- PostgreSQL and pgAdmin 6.8
- Tableau Public 2022.2
- Libraries/Dependencies:
    - Pandas
    - Numpy
    - Datetime
    - Matplotlib
    - Psycopg2
    - SqlAlchemy
    - SciKitLearn

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
AWS and pgAdmin were used to store the data. The Database SQL schema can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Database_Schema.sql). 

- [ERD](https://github.com/lkachury/airbnb_final_project/blob/main/Listings_QuickDBD.sql) with relationships: <br /> ![image](https://user-images.githubusercontent.com/108038989/204174833-1daf6c78-1799-487b-9f2e-98cb00749e98.png)

- Database stores static data for use during the project: <br /> <img width="832" alt="Selecting all data from main Table" src="https://user-images.githubusercontent.com/104086409/204105669-69173e43-478d-4f86-9bbf-685b900caa80.png">

- Includes at least two tables: <br /> <img width="848" alt="information from the 1st sub table" src="https://user-images.githubusercontent.com/104086409/204105961-aa8171b7-40a6-4b99-94a5-efca3a92a079.png"> <br /> ![image](https://user-images.githubusercontent.com/108038989/204175071-15242b3b-b3e4-4b53-9f9b-c9c3e8249503.png)

- Includes at least one join using the database language: <br /><img width="1002" alt="Combining Tables in sql " src="https://user-images.githubusercontent.com/104086409/204105980-0821e798-b772-485b-a6ab-9649964f808c.png">

## Machine Learning Model
The ML Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Machine_Learning.ipynb).

**Explanation of model choice, including limitations and benefits:**

- Linear Regression:
This model uses one input variable to determine the target variable. We chose this model to perform correlation analyses between the target variable **price** and the individual input variables of **borough**, **neighborhood**, **room_type**, **number_of_reviews**, and **days_since_last_review**. The main limitations of this model is that it assumes a linear relationship between the input and target variables and it is sensitive to outliers. 

- Random Forest Regression:
This model uses multiple input variables to determine the target variable. We chose this model to perform a single correlation analysis between the target variable **price** and the input variables of **borough**, **neighborhood**, **room_type**, **number_of_reviews**, and **days_since_last_review**. The main limitation of this model is that it can't extrapolate linear trends if the training and prediction inputs differ in their range or distributions.

The above variables were selected due to questions regarding the Exploratory Data Analysis and after plotting scatter plots to visually inspect the relationship between price and these variables. One feature that was engineered by the team was "days_since_last_review." This feature was a conversion of the date in the "last_review" column to a count of days since the last review from 07-SEP-2022, which is the date the listings report was collected. 

### Linear Regression Between Room Type and Price
- Data preprocessing and spliting into training and testing sets: <br /> ![image](https://user-images.githubusercontent.com/108038989/206094897-f075a596-ce54-4405-bd0c-b6af7b1f7454.png)
- Model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206095063-aede99e1-d4ed-4f4d-8c6f-76337ca5ed7d.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206095223-2786babf-001d-4d47-8c44-9d91ebf9423f.png)

![image](https://user-images.githubusercontent.com/108038989/206095147-385c6655-2458-4f78-8e86-e48fdd60f3f9.png)

### Linear Regression Between Borough and Price

### Linear Regression Between Neighborhood and Price

### Linear Regression Between Number of Reviews and Price

### Linear Regression Between Days Since Last Review and Price

### 





## Dashboard
Visualizations were performed in a Tableau [Dashboard](https://lkachury.github.io/airbnb_final_project/).

## Conclusion
- Recommendation for future analysis
- Anything the team would have done differently

### Roadblocks
- AWS and pgAdmin database roadblock?
- The initial Tableau dashboard was built in Tableau Cloud and with the data source connection coming from the AWS-pgAdmin database, both of which are password protected. The team had to change the dashboard to de displayed on Tableau Public and with the data source coming from the cleaned csv instead so that it could be viewed and accessed by all.

If the team had more time, the machine learning models could be improved by performing further feature engineering, bucketing or binning some current features (ie. availability_365), or changing the price predictor to predict price in tens of dollars instead of the exact price (ie. $150 instead of $155) in order to make the problem easier to solve. If time allowed, the team would've added the machine learning models and user input functionality to the dashboard website in order to perform predictions. 
