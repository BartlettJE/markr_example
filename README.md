# Using `markr` to combine individual and general feedback

Prof. Lisa DeBruine from our department developed the [markr package](https://psyteachr.github.io/markr/) to create individual feedback documents.

In a recent statistics assessment (a variation of this assessment: [Bartlett, 2024](https://osf.io/preprints/osf/nce4y_v1)), we used this approach to combine an individual student's grade, three actionable points, and strengths and areas to improve across the whole class. Students work on a .Rmd template to add their explanations, code, and relevant output. We then mark a knitted .html file. The `markr` approach is perfect for allowing us to provide informative individual feedback with general advice and example approaches. For students, they benefit from both individual and class-level feedback. For us as markers, we can be efficient in writing focused individual feedback for each student but we only need to write the general feedback once.

The `markr` site includes a vignette and example documentation, but I thought it would be useful to demonstrate the approach from one of my recent assessments. In this directory, there are three key elements: 

1. assessment_spreadsheet.xlsx - this is where you record the student ID, your grading approach, and the feedback you want to provide. 

    - At the University of Glasgow, we mark on a 22-point scale, so the spreadsheet is set up to calculate points out of 22 and convert it to a grade via the second sheet. 
    
    - FF1:FF3 stands for feed forward 1 to 3 and those are the actionable points to help students in their future work. 
    
2. feedback.R - this script creates the feedback files from the assessment spreadsheet and template file. This file has plenty of comments, so it should be easy to follow. 

3. feedback folder 

    - template.Rmd - this is the template that each feedback file will look like. All static code and text will appear in every file. Any inline code including student (e.g., `` `r student$Grade` ``) will take a value for that student's row in the assessment spreadsheet. For this assignment, the general feedback is organised into three tabs for the three questions, but you can edit this to reflect your assignment. In the full version, I added some code / output for demonstrations for a few questions, but I omitted this from the example.

    - fb - this is where your feedback files will generate once you run the feedback.R script. There is one example I provide and it will overwrite every time you run feedback.R. 

    - data - this is an empty folder for storing anything relevant to the template.Rmd. For example, data for example, figures you want to reference to save rendering time etc. 
    
If you download all these files/folders and save them in a directory, the example should be reproducible providing you have `markr` and `tidyverse` installed. 