# Artificial Intelligence Challenge on Kaggle 2023

1. Introduction:


2. Installation instructions:

3. Files description:

Our code contain the three following files:
* train.py : the training script
* app.py : code to launch a gradio application to test your model
* analysis.ipynb : a notebook containing your exploratory analysis and interpretability results on your model.
* Dockerfile : a Dockerfile to build a docker image of your application
* requests.csv : all the dataframes that contain our requests 

2. Transformation:

Transformation of the raw requests to use them in the model :
- Droped the avatar_id, name_avatar because they don't bring information for the price prediction
- Convert categorical variables to dummies
- Convert price to sqrt(price) (scale the data)

3. Model:

The purpose of this model is to predict the price of a hotel night. We tried different models (Random Forest, Regression and Gradient Boosting), we finally choose the Gradient Boosting (is the one with the highest score) and we optimizes its parameters with a grid search. 

4. Gradio:

The gradio is the interface that simulate a search of a hotel price. The individual has to select :
- His language 
- The city where he wants to travel
- The date when he waints to travel
- The order request
- If he has a mobile
