# Artificial Intelligence Challenge on Kaggle 2023

## 1. Introduction of the challenge:

https://www.kaggle.com/competitions/defi-ia-2023/overview

The "DGCCRF" of an imaginary country has received complaints about an online travel agency with suspected deceptive business practices. The agency provides various services, but the investigation only pertains to the hotel sector. The complaints are from European customers who have made reservations in European cities, and the "DGCCRF" is focusing the research on 9 cities. As a data scientist, you have been offered an internship on the team in charge of the pre-investigation. You are provided with tools to retrieve data from the agency's website and asked to perform tests on the agency's online algorithm. Your budget for requests is limited. The team is counting on you to identify any biases in the algorithm.

## 2. Installation instructions:

The dockerfile uses the 3.8 Python version. To run this dockerfile, you will need to :

1 - First open a terminal and navigate to the directory you want to clone the repository.

2 - Then, clone the repository : git clone https://github.com/EliseBcl/Defi_IA_2023.git

3 - Navigate to the directory containing the repository: cd Defi_IA_2023

4 - Build the Docker image using : docker build -t [image_name]

5 - Start a new container based on the image_name image using the command : docker run -it --name [container_name] -v [absolute_path_to_the_folder_of_the_cloned_repository]:/workspace/[folder_name] [image_name]

6 - Navigate in the container : cd workspace/[folder_name]

7 - Launch the gradio application using : python app.py

8 -If you want to launch the script python train : python train.py

## 3. Files and folders description:

Our code contain the three following files:
* train.py : the training script
* app.py : code to launch a gradio application to test your model
* analysis.ipynb : a notebook containing your exploratory analysis and interpretability results on your model.
* Dockerfile : a Dockerfile to build a docker image of your application
* requests : folder with all the dataframes that contain our requests 
* data : folder with all the dataframes needed to build the files above (hotels information, model weights, the final test and train sets)

## 2. Transformation:

Transformation of the raw requests to use them in the model :
- Droped the avatar_id, name_avatar because they don't bring information for the price prediction
- Convert categorical variables to dummies
- Convert price to sqrt(price) (scale the data)

## 3. Model:

The purpose of this model is to predict the price of a hotel night. We tried different models (Random Forest, Regression and Gradient Boosting), we finally choose the Gradient Boosting (is the one with the highest score) and we optimizes its parameters with a grid search. 
We reached an accuracy of 23.56221.

## 4. Gradio:

The gradio is the interface that simulate a search of a hotel price. The individual has to select :
- His language 
- The city where he wants to travel
- The date when he waints to travel
- The order request
- If he has a mobile
- The hotel ID
- The stock

If the individual selects an hotel_id which is not in the city selected then the gradio suggests a list with hotel_id present in the city chosen.


Developed by Elise Bachellerie, Amandine Capitaine and Philippe Conesa
