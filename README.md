# Getting and Cleaning Data Project

## run_analysis.R

Reads the required data from the current directory, takes mean value for each activity and subject. Saves the result as 'tidy_data_mean.txt'

Prequisites
-----------

The necessary data should be downloaded and extracted to the same directory with the script.

Download the file:

```
curl 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' > dataset.zip
```

Unzip the file:

```
unzip dataset.zip
```

Running the script
------------------

```
R CMD BATCH run_analysis.R
```