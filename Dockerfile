FROM python:3.8

# Change to the repository directory
WORKDIR /Defi_IA_2023

# Install required libraries
RUN pip install numpy
RUN pip install eli5
RUN pip install pandas
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install scikit-learn
RUN pip install xgboost
RUN pip install pdpbox 
RUN pip install folium
RUN pip install shap
RUN pip install gradio

# Run the shell script
CMD ["python","app.py"]