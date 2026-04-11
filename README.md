# Cardiovascular dataset Exploratory Analysis
## Overview
This project performs explotory data analysis on cardiovascular-style dataset using R.  

## Workflow
- Load the data
- handle the missing values
- Outlier detection 
- Variable type conversion
- Label the categories 
- Visual exploratory plots

The goal is to understan variable distributions and category patterns before any statistical modeling.

## Dataset
Variables of the dataset:
- age
- gender
- alco
- cardio
- cholesterol
- height
- weight 
- ap_hi
- ap_lo
- cholesterol,
- gluc,
- smoke
- alco,
- active,
- cardio

## How To Run
1. Open RStudio or R Console.
2. Ensure your dataset is available in clipboard format as tab-separated values.
3. Run the script line by line, or source the full script.
4. Review cleaned data outputs and generated plots in the Plots pane.

## Data Preparation Steps
1. Load the dataset from clipboard.
2. Remove missing rows using complete-case filtering.
3. Compute z-scores for cholesterol.
4. Detect outliers using threshold 3 on absolute z-score.
5. Remove outlier rows from the dataset.
6. Convert variables to appropriate types:
   - Factors: gender, alco, cardio, cholesterol
   - Numeric: age, height, weight, ap_hi, ap_lo


## Author
Name: M.M.I.M.Marasingha
Date: 13/05/2024
Course: STA 2207 - Inroduction to R