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

## Machine Learning Models
The ML Jupyter Notebook can be referenced [here](https://github.com/lkachury/airbnb_final_project/blob/main/Machine_Learning.ipynb).

**Explanation of model choice, including limitations and benefits:**

- Linear Regression:
This model uses one input variable to determine the target variable. We chose this model to perform correlation analyses between the target variable **price** and the individual input variables of **borough**, **neighborhood**, **room_type**, **number_of_reviews**, and **days_since_last_review**. The main limitations of this model is that it assumes a linear relationship between the input and target variables and it is sensitive to outliers. 

- Random Forest Regression:
This model uses multiple input variables to determine the target variable. We chose this model to perform a single correlation analysis between the target variable **price** and the input variables of **borough**, **neighborhood**, **room_type**, **number_of_reviews**, and **days_since_last_review**. The main limitation of this model is that it can't extrapolate linear trends if the training and prediction inputs differ in their range or distributions.

The above variables were selected due to questions regarding the Exploratory Data Analysis and after plotting scatter plots to visually inspect the relationship between price and these variables. One feature that was engineered by the team was "days_since_last_review." This feature was a conversion of the date in the "last_review" column to a count of days since the last review from 07-SEP-2022, which is the date the listings report was collected. 

### Linear Regression Between Room Type and Price
![image](https://user-images.githubusercontent.com/108038989/206095147-385c6655-2458-4f78-8e86-e48fdd60f3f9.png)
- Data preprocessing and spliting into training and testing sets: <br /> ![image](https://user-images.githubusercontent.com/108038989/206094897-f075a596-ce54-4405-bd0c-b6af7b1f7454.png)
- Model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206095063-aede99e1-d4ed-4f4d-8c6f-76337ca5ed7d.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206095223-2786babf-001d-4d47-8c44-9d91ebf9423f.png)

### Linear Regression Between Borough and Price
![image](https://user-images.githubusercontent.com/108038989/206095782-98217892-7075-4e43-8cf8-972619b15ed6.png)
- Data preprocessing and spliting into training and testing sets and model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096066-fec23edc-1e3f-4937-92a9-f8f86ad3ac15.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096189-44322238-48f1-480c-9e7f-3aa75133b603.png)

### Linear Regression Between Neighborhood and Price
![image](https://user-images.githubusercontent.com/108038989/206095893-fdc2a849-c822-49e8-91f3-387d8eb3445d.png)
- Data preprocessing and spliting into training and testing sets and model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096433-bcce19b9-4049-4d8e-a880-ab0e42228b6d.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096513-50fb0a1e-4a8b-4db3-b007-65b5783119b9.png)

### Linear Regression Between Number of Reviews and Price
![image](https://user-images.githubusercontent.com/108038989/206095934-340d0fc8-9138-4d98-b668-e4e882a6e6d9.png)
- Data preprocessing and spliting into training and testing sets and model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096578-d670ca02-9e71-46e1-a450-ad5338b870e2.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096642-c99efb25-0a1e-42f0-920b-d8cdd610ada2.png)

### Linear Regression Between Days Since Last Review and Price
![image](https://user-images.githubusercontent.com/108038989/206095983-ebc52f77-67cf-406b-b679-dd4cb407b234.png)
- Data preprocessing and spliting into training and testing sets and model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096685-7c7a182f-40e1-45d5-8d35-42b5b9c509dc.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096731-2801d791-fa95-4816-ac94-c599330babd3.png)

### Random Forest Regression between Price and Borough, Neighborhood, Room Type, Number of Reviews, and Days Since Last Review
![image](https://user-images.githubusercontent.com/108038989/206096973-76645f7b-5bf3-4d51-bc0c-1d2d55e6d6f4.png)
- Data preprocessing and spliting into training and testing sets and model training: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096871-c8130317-7886-42ce-a3ae-f9b192534d0e.png)
- Model score: <br /> ![image](https://user-images.githubusercontent.com/108038989/206096927-cbecf6f2-0dbb-4eea-8ed7-8598821929a8.png)

### Model Improvement Experiemnts
Three model improvement experiments were performed with [Kevin Lee](https://github.com/kevinclee26) to attempt to improve the model's score. 

[Experiemnt 1](https://github.com/lkachury/airbnb_final_project/blob/readme_updates/exp_1.ipynb): 
- Created a new feature by combinining borough and neighborhood and getting the number of listings: <br /> ![image](https://user-images.githubusercontent.com/108038989/206100019-b5f724ea-9917-44a9-b92c-105e741f29ff.png)
- Utilized one-hot encoding: <br /> ![image](https://user-images.githubusercontent.com/108038989/206100356-6a1e0e72-13cb-4abf-87cd-01f5933e5029.png)
- The model was created, trained, ran and feature importance was obtained: <br /> ![image](https://user-images.githubusercontent.com/108038989/206100609-c632cf97-19f6-4657-a2f3-1cd090f39776.png)
- Then the model was repeated with some validation: <br /> ![image](https://user-images.githubusercontent.com/108038989/206100795-100b888f-b508-410e-ae31-583d3a58aeb3.png)
- Lastly the model was repeated with some scaling: <br /> ![image](https://user-images.githubusercontent.com/108038989/206100887-3046f9ae-56c7-466e-aeca-14f016262bb2.png)

[Experiment 2](https://github.com/lkachury/airbnb_final_project/blob/readme_updates/exp_2.ipynb): 
- Created a new feature with the average latitude and longitude: <br />  ![image](https://user-images.githubusercontent.com/108038989/206101402-f91fcfa9-447c-4078-8ae6-052e15418d32.png)
- A "distance" feature was created and added: <br /> ![image](https://user-images.githubusercontent.com/108038989/206101593-b69b4c4b-0720-413b-8ee3-8d9b876c1d6b.png)
- The model was created, trained, ran and feature importance was obtained: <br /> ![image](https://user-images.githubusercontent.com/108038989/206101733-e7af2153-8713-4b18-8af1-b4e98922538d.png)

[Experiemnt 3](https://github.com/lkachury/airbnb_final_project/blob/readme_updates/exp_3.ipynb): 
- Created a new feature with "host_id" and "number_of_reviews": <br /> ![image](https://user-images.githubusercontent.com/108038989/206102118-fd5407eb-54f8-48b7-b04b-128128441a95.png)  
- The model was created, trained, ran and feature importance was obtained: <br /> ![image](https://user-images.githubusercontent.com/108038989/206102220-2523f3f0-8c77-4f1e-83b1-59db8062799e.png)

## Dashboard
Visualizations were performed in Tableau and the dashboard is hosted on a [website](https://lkachury.github.io/airbnb_final_project/):
<br /> ![image](https://user-images.githubusercontent.com/108038989/206097577-0a7390f3-d96c-4823-bc87-f20cbb7da10c.png)

## Conclusion
### Roadblocks
- Connecting the AWS database to PostgreSQL/pgAdmin so that the team would have access to it in order to perform the Machine Learning models. 
- The initial Tableau dashboard was built in Tableau Cloud and with the data source connection coming from the AWS-pgAdmin database, both of which are password protected. The team had to change the dashboard to de displayed on Tableau Public and with the data source coming from the cleaned csv file instead so that it could be viewed and accessed by all. <br /> ![db3](https://user-images.githubusercontent.com/108038989/206313867-e01f5864-05ec-4a31-bff4-4c342be1efe4.png) <br /> ![db2](https://user-images.githubusercontent.com/108038989/206313910-63fe0a19-8eda-4b15-9b89-2e77e084d059.png)

### Future Recommendations 
- If the team had more time, the machine learning models could be improved by performing further feature engineering, bucketing or binning some current features (ie. availability_365), or changing the price predictor to predict price in tens of dollars instead of the exact price (ie. $150 instead of $155) in order to make the problem easier to solve. 
- If time allowed, the team would've added the machine learning models and user input functionality to the dashboard website in order to perform predictions. 
