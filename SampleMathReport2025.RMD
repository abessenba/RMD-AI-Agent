#################
## load data files
## set working directory
setwd('//nas01.itap.purdue.edu//edu_create//ADMIN//ELRC//Data Team SHARED//Data Report Templates//SampleMath//')

## read data
SampleMathPRE <- read.csv('//nas01.itap.purdue.edu//edu_create//ADMIN//ELRC//Data Team//Data Files//SampleMath//SampleMathPre.csv')

SampleMathPOST <- read.csv('//nas01.itap.purdue.edu//edu_create//ADMIN//ELRC//Data Team//Data Files//SampleMath//SampleMathPost.csv')

SampleMathMergeDF <- merge(SampleMathPRE, SampleMathPOST, by.x="PRE_STUDENTID", by.y="POST_STUDENTID", all=TRUE)

########################
## create numeric variables
## Create leadership numeric variables
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_OFFICIAL_SRVY_n = as.numeric(PRE_OFFICIAL_SRVY))
  
SampleMathMergeDF <- SampleMathMergeDF %>% mutate( PRE_STUDENTID_n = as.numeric(PRE_STUDENTID))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_CA_01_n = as.numeric(PRE_CA_01))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_CA_02_n = as.numeric(PRE_CA_02))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_CA_03_n = as.numeric(PRE_CA_03))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_SE_01_n = as.numeric(PRE_SE_01))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_SE_02_n = as.numeric(PRE_SE_02)) 
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_SE_03_n = as.numeric(PRE_SE_03))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate( POST_STUDENTID_n = as.numeric(POST_STUDENTID))
 
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SRVY_POST_HS_GRAD_n = as.numeric(POST_SRVY_POST_HS_GRAD))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_CA_01_n = as.numeric(POST_CA_01))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_CA_02_n = as.numeric(POST_CA_02))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_CA_03_n = as.numeric(POST_CA_03))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SE_01_n = as.numeric(POST_SE_01))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SE_02_n = as.numeric(POST_SE_02)) 
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SE_03_n = as.numeric(POST_SE_03))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_PRGM_FDBCK_02_01_n = as.numeric(POST_PRGM_FDBCK_02_01))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_PRGM_FDBCK_02_02_n = as.numeric(POST_PRGM_FDBCK_02_02))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_PRGM_FDBCK_02_03_n = as.numeric(POST_PRGM_FDBCK_02_03))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_PRGM_FDBCK_02_04_n = as.numeric(POST_PRGM_FDBCK_02_04))

SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_STPND_MTVTNG_FCTR_n = as.numeric(POST_STPND_MTVTNG_FCTR))
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_RCMD_PRGM_n = POST_RCMD_PRGM))

##########################
## create factor variables
## create factor variables and set levels
SampleMathMergeDF$PRE_OFFICIAL_SRVY_f <- factor(SampleMathMergeDF$PRE_OFFICIAL_SRVY_n, levels = c(0,1), labels = c("no", "yes"))
  
SampleMathMergeDF$PRE_CA_01_f <- factor(SampleMathMergeDF$PRE_CA_01_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$PRE_CA_02_f <- factor(SampleMathMergeDF$PRE_CA_02_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$PRE_CA_03_f <- factor(SampleMathMergeDF$PRE_CA_03_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))

SampleMathMergeDF$PRE_SE_01_f <- factor(SampleMathMergeDF$PRE_SE_01_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))
SampleMathMergeDF$PRE_SE_02_f <- factor(SampleMathMergeDF$PRE_SE_02_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))
SampleMathMergeDF$PRE_SE_03_f <- factor(SampleMathMergeDF$PRE_SE_03_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))

SampleMathMergeDF$POST_SRVY_POST_HS_GRAD_f <- SampleMathMergeDF$POST_SRVY_POST_HS_GRAD_n, levels = c(0, 1, 2, 3, 4), labels = c("I chose not to answer", "starting directly in the workforce", "attending community college to complete a certification or associates degree", "attending community college and transferring to a university", "attending a 4-year college or university"))

SampleMathMergeDF$POST_CA_01_f <- factor(SampleMathMergeDF$POST_CA_01_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$POST_CA_02_f <- factor(SampleMathMergeDF$POST_CA_02_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$POST_CA_03_f <- factor(SampleMathMergeDF$POST_CA_03_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))

SampleMathMergeDF$POST_SE_01_f <- factor(SampleMathMergeDF$POST_SE_01_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))
SampleMathMergeDF$POST_SE_02_f <- factor(SampleMathMergeDF$POST_SE_02_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))
SampleMathMergeDF$POST_SE_03_f <- factor(SampleMathMergeDF$POST_SE_03_n, levels = c(1, 2, 3, 4, 5), labels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident"))

SampleMathMergeDF$POST_PRGM_FDBCK_02_01_f <- factor(SampleMathMergeDF$POST_PRGM_FDBCK_02_01_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$POST_PRGM_FDBCK_02_02_f <- factor(SampleMathMergeDF$POST_PRGM_FDBCK_02_02_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$POST_PRGM_FDBCK_02_03_f <- factor(SampleMathMergeDF$POST_PRGM_FDBCK_02_03_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))
SampleMathMergeDF$POST_PRGM_FDBCK_02_04_f <- factor(SampleMathMergeDF$POST_PRGM_FDBCK_02_04_n, levels = c(1, 2, 3, 4, 5), labels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree"))

SampleMathMergeDF$POST_STPND_MTVTNG_FCTR_f <- factor(SampleMathMergeDF$POST_STPND_MTVTNG_FCTR_n, levels = c(0,1), labels = c("no", "yes")) 
SampleMathMergeDF$POST_RCMD_PRGM_f <- factor(SampleMathMergeDF$POST_RCMD_PRGM_n, levels = c(0,1), labels = c("no", "yes")) 


##########################
## create PRE_CA scales
## 1 create PRE_CA scale
PRE_CA_Measure_LIST <- c('PRE_CA_01_n','PRE_CA_02_n','PRE_CA_03_n')

## 2 create PRE_CA list of measure definition items
PRE_CA_Measure_Definitions <- 
c("I'm aware of what studying math may be like.", "I'm aware of  the various math oriented career opportunities available.", "I'm aware of of math  career options I could specialize in.")

## 3 set whether the PRE_CA scale is a true measure or false a set of items
PRE_CA_Measuretf = True

## 4 set the PRE_CA measure average for true measures and round to 2 significant digits
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_CA_Measure_Avg = rowMeans(SampleMathMergeDF[PRE_CA_Measure_LIST], na.rm = TRUE))

SampleMathMergeDF$PRE_CA_Measure_Avg <- round(SampleMathMergeDF$PRE_CA_Measure_Avg, sigdig2)

## 5 Compute the PRE_CA cronbach alpha for a true measure
PRE_CA_Measure_alphasummary <- alpha(SampleMathMergeDF[PRE_CA_Measure_LIST], na.rm = TRUE)

PRE_CA_MeasureCA <- round(PRE_CA_Measure_alphasummary$total[1,1], sigdig2)

## 6 convert continuous PRE_CA_Measure_Avg into a likert value
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_CA_Measure_LKRT = case_when(
	PRE_CA_Measure_Avg <= 1.5 ~ "strongly disagree",
	PRE_CA_Measure_Avg <= 2.5 ~ "disagree",
	PRE_CA_Measure_Avg <= 3.5 ~ "neither agree nor disagree",
	PRE_CA_Measure_Avg <= 4.5 ~ "agree",
	PRE_CA_Measure_Avg <= 5 ~ "strongly agree"
	),
	## convert to a factor with all level explicitly defined
	PRE_CA_Measure_LKRT = factor(
	  PRE_CA_Measure_LKRT, levels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree")
    )
  )
	
## 7 check normality for the PRE_CA measure	
PRE_CA_Measure_normality <- check_measure_normality(SampleMathMergeDF, PRE_CA_Measure_LIST)


## create PRE_SE scales
## 1 create PRE_SE scale
PRE_SE_Measure_LIST <- c('PRE_SE_01_n','PRE_SE_02_n','PRE_SE_03_n')

## 2 create PRE_SE list of measure definition items
PRE_SE_Measure_Definitions <- 
c("Complete the program activities for this summer program.", "Complete the first year of a math related major or job readiness program.", "Successfully complete all required courses in a math related major or job readiness program.")

## 3 set whether the PRE_SE scale is a true measure or false a set of items
PRE_SE_Measuretf = True

## 4 set the PRE_SE measure average for true measures and round to 2 significant digits
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_SE_Measure_Avg = rowMeans(SampleMathMergeDF[PRE_SE_Measure_LIST], na.rm = TRUE))

SampleMathMergeDF$PRE_SE_Measure_Avg <- round(SampleMathMergeDF$PRE_SE_Measure_Avg, sigdig2)

## 5 Compute the PRE_SE cronbach alpha for a true measure
PRE_SE_Measure_alphasummary <- alpha(SampleMathMergeDF[PRE_SE_Measure_LIST], na.rm = TRUE)

PRE_SE_MeasureCA <- round(PRE_SE_Measure_alphasummary$total[1,1], sigdig2)

## 6 convert continuous PRE_SE_Measure_Avg into a likert value
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(PRE_SE_Measure_LKRT = case_when(
	PRE_SE_Measure_Avg <= 1.5 ~ "not at all confident",
	PRE_SE_Measure_Avg <= 2.5 ~ "low confidence",
	PRE_SE_Measure_Avg <= 3.5 ~ "slightly confident",
	PRE_SE_Measure_Avg <= 4.5 ~ "moderately confident",
	PRE_SE_Measure_Avg <= 5   ~ "very confident"
	),
	## convert to a factor with all level explicitly defined
	PRE_SE_Measure_LKRT = factor(
	  PRE_SE_Measure_LKRT, levels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident")
    )
  )
	
## 7 check normality for the PRE_SE measure	
PRE_SE_Measure_normality <- check_measure_normality(SampleMathMergeDF, PRE_SE_Measure_LIST)


#########################
## create POST_CA scales
## 1 create POST_CA scale
POST_CA_Measure_LIST <- c('POST_CA_01_n','POST_CA_02_n','POST_CA_03_n')

## 2 create POST_CA list of measure definition items
POST_CA_Measure_Definitions <- 
c("I'm aware of what studying math may be like.", "I'm aware of  the various math oriented career opportunities available.", "I'm aware of of math  career options I could specialize in.")

## 3 set whether the POST_CA scale is a true measure or false a set of items
POST_CA_Measuretf = True

## 4 set the POST_CA measure average for true measures and round to 2 significant digits
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_CA_Measure_Avg = rowMeans(SampleMathMergeDF[POST_CA_Measure_LIST], na.rm = TRUE))

SampleMathMergeDF$POST_CA_Measure_Avg <- round(SampleMathMergeDF$POST_CA_Measure_Avg, sigdig2)

## 5 Compute the POST_CA cronbach alpha for a true measure
POST_CA_Measure_alphasummary <- alpha(SampleMathMergeDF[POST_CA_Measure_LIST], na.rm = TRUE)

POST_CA_MeasureCA <- round(POST_CA_Measure_alphasummary$total[1,1], sigdig2)

## 6 convert continuous POST_CA_Measure_Avg into a likert value
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_CA_Measure_LKRT = case_when(
	POST_CA_Measure_Avg <= 1.5 ~ "strongly disagree",
	POST_CA_Measure_Avg <= 2.5 ~ "disagree",
	POST_CA_Measure_Avg <= 3.5 ~ "neither agree nor disagree",
	POST_CA_Measure_Avg <= 4.5 ~ "agree",
	POST_CA_Measure_Avg <= 5 ~ "strongly agree"
	),
	## convert to a factor with all level explicitly defined
	POST_CA_Measure_LKRT = factor(
	  POST_CA_Measure_LKRT, levels = c("strongly disagree", "disagree", "neither agree nor disagree", "agree", "strongly agree")
    )
  )
	
## 7 check normality for the POST_CA measure	
POST_CA_Measure_normality <- check_measure_normality(SampleMathMergeDF, POST_CA_Measure_LIST)


########################
## create POST_SE scales
## 1 create POST_SE scale
POST_SE_Measure_LIST <- c('POST_SE_01_n','POST_SE_02_n','POST_SE_03_n')

## 2 create POST_SE list of measure definition items
POST_SE_Measure_Definitions <- 
c("Complete the program activities for this summer program.", "Complete the first year of a math related major or job readiness program.", "Successfully complete all required courses in a math related major or job readiness program.")

## 3 set whether the POST_SE scale is a true measure or false a set of items
POST_SE_Measuretf = True

## 4 set the POST_SE measure average for true measures and round to 2 significant digits
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SE_Measure_Avg = rowMeans(SampleMathMergeDF[POST_SE_Measure_LIST], na.rm = TRUE))

SampleMathMergeDF$POST_SE_Measure_Avg <- round(SampleMathMergeDF$POST_SE_Measure_Avg, sigdig2)

## 5 Compute the POST_SE cronbach alpha for a true measure
POST_SE_Measure_alphasummary <- alpha(SampleMathMergeDF[POST_SE_Measure_LIST], na.rm = TRUE)

POST_SE_MeasureCA <- round(POST_SE_Measure_alphasummary$total[1,1], sigdig2)

## 6 convert continuous POST_SE_Measure_Avg into a likert value
SampleMathMergeDF <- SampleMathMergeDF %>% mutate(POST_SE_Measure_LKRT = case_when(
	POST_SE_Measure_Avg <= 1.5 ~ "not at all confident",
	POST_SE_Measure_Avg <= 2.5 ~ "low confidence",
	POST_SE_Measure_Avg <= 3.5 ~ "slightly confident",
	POST_SE_Measure_Avg <= 4.5 ~ "moderately confident",
	POST_SE_Measure_Avg <= 5   ~ "very confident"
	),
	## convert to a factor with all level explicitly defined
	POST_SE_Measure_LKRT = factor(
	  POST_SE_Measure_LKRT, levels = c("not at all confident", "low confidence", "slightly confident", "moderately confident", "very confident")
    )
  )
	
## 7 check normality for the POST_SE measure	
POST_SE_Measure_normality <- check_measure_normality(SampleMathMergeDF, POST_SE_Measure_LIST)


###########################
## create POST_PRGM_FDBCK scales
## 1 create POST_PRGM_FDBCK scale
POST_PRGM_FDBCK_Measure_LIST <- c('POST_PRGM_FDBCK_01_n','POST_PRGM_FDBCK_02_n','POST_PRGM_FDBCK_03_n', 'POST_PRGM_FDBCK_04_n')

## 2 create POST_PRGM_FDBCK list of measure definition items
POST_PRGM_FDBCK_Measure_Definitions <- 
c("This program has helped me consider whether the math field would be a good career fit for me.", "I learned about specific challenges in the math field.", "Participating in this program was a good use of my time.", "I felt supported by program faculty, staff, and other program participants.")

## 3 set whether the POST_PRGM_FDBCK scale is a true measure or false a set of items
POST_PRGM_FDBCK_Measuretf = False

## 7 check normality for the POST_PRGM_FDBCK measure	
POST_PRGM_FDBCK_Measure_normality <- check_measure_normality(SampleMathMergeDF, POST_PRGM_FDBCK_Measure_LIST)




## Executive Summary

### Key Findings

### Key Recommendations

## Introduction

### Program Objectives

## Evaluation Approach

### Evaluation Questions

## Evaluation Methods

### Description of Instruments

```{r Table Summary of constructs}

## Create Table Summary of Constructs, define columns
summaryOfConstructs <- data.frame('Evaluation Question', 'Measure', 'Item Description', 'Normality of Measure', 'Reliability of Measure', 'Source')



```

## Evaluation Findings

### Demographics

### Evaluation Question 1









