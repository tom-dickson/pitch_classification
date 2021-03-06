# Pitch Classifier

The goal of this project was to use MLB Statcast data to build a model which could classify the pitches of some of the MLB's best pitchers. Every pitch a pitcher throws has a different speed, spin rate, and spin axis, and my goal was to build a model which could use these qualities to output the type of pitch which was thrown.

Data was downloaded and then cleaned in the collection.py file. It was then imported into R where support vector machines were trained to classify pitches for each pitcher.

## Results
Across all pitchers, the mean accuracy for the classifiers was 89%. This ranged from 99% accuracy for classifying the pitches of Gerrit Cole and Shane Bieber, down to 74% accuracy for classifying Brandon Woodruff's. Visualizations and confusion matrices can be found in the repository

## Acknowledgements
Data for this project was sourced from https://baseballsavant.mlb.com/statcast_search
