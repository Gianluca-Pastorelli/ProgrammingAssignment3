# Human Activity Recognition Data Analysis

This script analyzes the Human Activity Recognition data obtained from smartphones. It performs the following tasks:
  
  ## Data Preparation
  - Reads the training and test datasets from separate files (`X_train.txt` and `X_test.txt`).
- Merges the training and test datasets into one combined dataset.
- Reads feature names from the `features.txt` file.
- Filters relevant feature indices containing mean and standard deviation.
- Extracts only the relevant features from the combined dataset.

## Activity Labeling
- Reads activity labels from the `activity_labels.txt` file.
- Reads activity labels for training and test data from `y_train.txt` and `y_test.txt` files.
- Combines activity labels from training and test data.
- Replaces activity codes with descriptive activity names in the combined dataset.

## Variable Labeling
- Assigns descriptive variable names to the dataset using relevant feature names.
- Adds subject labels to the dataset by reading subject information from `subject_train.txt` and `subject_test.txt` files.

## Data Aggregation
- Groups the data by Activity and Subject.
- Calculates the average of each variable for each activity and each subject.
- Reshapes the data into tidy format.
- Save the obtained data set in txt format.

## Libraries Used
- data.table: For data manipulation.
- dplyr: For data wrangling and aggregation.
- tidyr: For reshaping data and creating tidy data.

## Usage
- Ensure all required data files are present in the working directory.
- Run the script to perform data analysis and generate results.

