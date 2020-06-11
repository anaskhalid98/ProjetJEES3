from sklearn import datasets
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from flask import Flask, jsonify, request
import json

data =pd.read_csv("dataset.csv")

data.head()

x=data[['Questionnaire', 'Response.1', 'Response.2', 'Response.3', 'Response.4', 'Response.5', 'Response.6', 'Response.7', 'Response.8', 'Response.9', 'Response.10']]

y=data['Recommandation']


# Split dataset into training set and test set
X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.3) # 70% training and 30% test


#Create a Gaussian Classifier
clf=RandomForestClassifier(n_estimators=100)

#Train the model using the training sets y_pred=clf.predict(X_test)
clf.fit(X_train,y_train)

app = Flask(__name__)

@app.route('/predict/', methods = ['POST'])
def predict():
    if request.method == 'POST':
        decoded_data = request.data.decode('utf-8')
        params = json.loads(decoded_data)
        result = clf.predict([[params['id_quest'],params['rep1'], params['rep2'], params['rep3'], params['rep4'],params['rep5'], params['rep6'], params['rep7'], params['rep8'],params['rep9'], params['rep10']]])
        return jsonify({'predict': int(result[0])})
        #return str(result[0])


if __name__ == '__main__':
    app.run(debug=True)

