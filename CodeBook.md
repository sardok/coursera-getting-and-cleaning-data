Code Book
=========

Run the script: run_analysis.R to get the desired result.

The script takes following steps:
* Reads test and train activities.
* Reads test and train subjects.
* Reads test and train data.
* Filters out columns which do not contain either mean or std.
* Merges all read tables.
* Writes the output to 'tidy_data_mean.txt' in the current directory.

The dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is expected to be in the same directory with the script as unzipped.

Variables
---------

- subject: The participant id. Values are 1 to 30.
- activity: The activity. Possible values are: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying

The rest of variables are combination of following parameters:
- t, f: t denotes time, f denotes frequency domain signals.
- Body, Gravity.
- Acc, Gyro: Acc denotes accelaration, Gyroscope signals.
- Jerk (optional): jerk signal
- X, Y, Z: axis.