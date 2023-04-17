![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Making predictions with logistic regression

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals.

In order to optimize our inventory, we would like to predict if a film will have more monthly rentals in July than in June. Create a model to predict it.

### Instructions

1. Create a query or queries to extract the information you think may be relevant for building the prediction model. It should include some film features and some rental features. Use the data from 2005.
2. Create a query to get the total amount of rentals in June for each film. 
3. Do the same with July. 
4. Create a new column containing (Yes/No) for each film whether or not the number of monthly rentals in **July was bigger than in June**. Your objective will be to predict this new column.
6. Read the data into a Pandas dataframe.
7. Analyze extracted features and transform them. You may need to encode some categorical variables or scale numerical variables.
8. Create a logistic regression model to predict this new column from the cleaned data.
9. Evaluate the results.
