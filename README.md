There is only one script called run_analysis.R.

Below are the comments without the code that appear on the script too:

# Load in relevant data using read.table(). WIll be merged into one dataframe later.

# Merging and reshaping data into on data frame
## Prepare X data for merging. Use convention of rbind(...train,...test)
### Extract only mean and std columns from data.
## Prepare Y (Activity) data for merging
## Prepare Subject data for merging
## Merge

# Organize and tidy merged data
## Replace activty numbers with corresponding activity from activity_labels
## Create a temporary Activity_Subject just to easily find averages by activity and person.

# Create a final aggregated tidy dataset


