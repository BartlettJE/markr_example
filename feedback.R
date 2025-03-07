# you may need to install devtools first with
# install.packages("devtools")

# If you have devtools, you need to install markr from github
# devtools::install_github("psyteachr/markr")

# Step 1 - load markr and tidyverse
library(markr)
library(tidyverse)

# Step 2 - read the marking file using the markr specific function
# all data in one table (csv or excel)
marks <- markr::read_marks("assessment_spreadsheet.xlsx")

# Step 3 - Edit the template.Rmd file within the feedback folder 
# This is where you add inline code for individual student info
# Plus all your general feedback for the class

# Step 4 - Render the feedback files
# This functions takes marks and will produce a feedback file per row
make_feedback(
  marks = marks, # grade / feedback data we are using 
  # What feedback file do you want to use?  
  template = "feedback/template.Rmd", 
  # What path / file name do you want to give each feedback file? 
  # round brackets are variables from the marks spreadsheet, so adding the submission ID here to the file name
  filename = "feedback/fb/PSYCH5020_Assessment01_[Participant_No].html",
  class_name = "PSYCH5020", # variable for the feedback template title
  assessment_name = "Assessment 1", # variable for the feedback template title
  assessment_year = "2025" # variable for the feedback template title
)
