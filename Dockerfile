FROM python:3.8

# Install the required libraries
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
RUN pip install gradio==3.12.0
RUN pip install datasets

#fixer le port de sortie
EXPOSE 5000

#ouvrir un terminal bash
CMD ["bash"]