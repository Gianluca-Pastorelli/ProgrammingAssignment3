library(data.table)
library(dplyr)
library(tidyr)

train_ds <- read.table("train/X_train.txt")
test_ds <- read.table("test/X_test.txt")

# Merge the training and test sets
combined_data <- rbind(train_ds, test_ds)

# Read feature names
feature_names <- fread("features.txt", header = FALSE)

# Filter relevant feature indices
relevant_indices <- grep("mean\\(\\)|std\\(\\)", feature_names$V2, ignore.case = TRUE)

# Extract only relevant features
combined_data_relevant <- combined_data[, relevant_indices]

# Read activity labels
activity_labels <- read.table("activity_labels.txt", header = FALSE)

# Read activity labels for training and test data
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")

# Combine activity labels from training and test data
activity_labels_all <- rbind(y_train, y_test)

# Replace activity codes with descriptive activity names
activity_labels_all$V1 <- factor(activity_labels_all$V1, levels = activity_labels$V1,
                                 labels = activity_labels$V2)

# Add descriptive activity names to the merged dataset
combined_data_relevant$Activity <- activity_labels_all$V1

# Extract relevant feature names
relevant_feature_names <- feature_names$V2[relevant_indices]

# Assign descriptive variable names to the dataset
colnames(combined_data_relevant) <- c(relevant_feature_names, "Activity")

# Add subjects labels
subjects_train <- read.table("train/subject_train.txt")
subjects_test <- read.table("test/subject_test.txt")
combined_subjects <- rbind(subjects_train, subjects_test)
combined_data_relevant$Subject <- combined_subjects$V1

# Group the merged data by Activity and Subject
grouped_data <- combined_data_relevant %>%
  group_by(Activity, Subject)

# Calculate the average of each variable for each activity and each subject
averaged_data <- grouped_data %>%
  summarise(across(everything(), mean))

# Reshape the data into tidy format
tidy_data <- pivot_longer(averaged_data, cols = -c(Activity, Subject),
                          names_to = "Variable", values_to = "Average_Value")

# Save the dataset as a tab-delimited text file
write.table(tidy_data, file = "tidy_data.txt", sep = "\t", row.names = FALSE)
