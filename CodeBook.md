Datasets 
=================
Two tidy datasets are available:
- ds.reduced: contains selected variables from the original dataset as described below
- ds.averaged: contains measurements of the same variables averaged for each activity and subject.

Variables
=================
Measurements were made for 30 subjects in six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING). 

The measured variables include the means and standard deviations of:
- The accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (prefix 't' to denote time domain) 
- Body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
- Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ) 
- Magnitude of these three-dimensional signals (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) 
- Frequency domain signals obtained through Fast Fourier Transform (FFT): fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
 
A full description of the features is given with the original dataset at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The columns are as follows:
Variable name						         Type 			Levels/values																What indicates missing values
1 Subject 							         Factor     numeric (1:30)																
2 Activity 							         Factor			WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING 	
3 tBodyAcc-mean()-X			    		  Variable		double																		NA
4 tBodyAcc-mean()-Y			    		  Variable		double																		NA
5 tBodyAcc-mean()-Z			    		  Variable		double																		NA
6 tBodyAcc-std()-X			    		  Variable		double																		NA
7 tBodyAcc-std()-Y			    		  Variable		double																		NA
8 tBodyAcc-std()-Z			    		  Variable		double																		NA
9 tGravityAcc-mean()-X		    		Variable		double																		NA
10 tGravityAcc-mean()-Y		    		Variable		double																		NA
11 tGravityAcc-mean()-Z		    		Variable		double																		NA
12 tGravityAcc-std()-X		    		Variable		double																		NA
13 tGravityAcc-std()-Y		    		Variable		double																		NA
14 tGravityAcc-std()-Z		     		Variable		double																		NA
15 tBodyAccJerk-mean()-X	    		Variable		double																		NA
16 tBodyAccJerk-mean()-Y	    		Variable		double																		NA
17 tBodyAccJerk-mean()-Z    			Variable		double																		NA
18 tBodyAccJerk-std()-X	    			Variable		double																		NA
19 tBodyAccJerk-std()-Y		    		Variable		double																		NA
20 tBodyAccJerk-std()-Z	    			Variable		double																		NA
21 tBodyGyro-mean()-X		    		  Variable		double																		NA
22 tBodyGyro-mean()-Y		    		  Variable		double																		NA
23 tBodyGyro-mean()-Z		     		  Variable		double																		NA
24 tBodyGyro-std()-X		    		  Variable		double																		NA
25 tBodyGyro-std()-Y		    		  Variable		double																		NA
26 tBodyGyro-std()-Z			    	  Variable		double																		NA
27 tBodyGyroJerk-mean()-X		    	Variable		double																		NA
28 tBodyGyroJerk-mean()-Y		    	Variable		double																		NA
29 tBodyGyroJerk-mean()-Z	    		Variable		double																		NA
30 tBodyGyroJerk-std()-X	    		Variable		double																		NA
31 tBodyGyroJerk-std()-Y	    		Variable		double																		NA
32 tBodyGyroJerk-std()-Z	    		Variable		double																		NA
33 tBodyAccMag-mean()		    		  Variable		double																		NA
34 tBodyAccMag-std()			    	  Variable		double																		NA
35 tGravityAccMag-mean()	    		Variable		double																		NA
36 tGravityAccMag-std()		    		Variable		double																		NA
37 tBodyAccJerkMag-mean()	    		Variable		double																		NA
38 tBodyAccJerkMag-std()	    		Variable		double																		NA
39 tBodyGyroMag-mean()	    			Variable		double																		NA
40 tBodyGyroMag-std()		    		  Variable		double																		NA
41 tBodyGyroJerkMag-mean()	    	Variable		double																		NA
42 tBodyGyroJerkMag-std()	    		Variable		double																		NA
43 fBodyAcc-mean()-X		    		  Variable		double																		NA
44 fBodyAcc-mean()-Y		    		  Variable		double																		NA
45 fBodyAcc-mean()-Z		    		  Variable		double																		NA
46 fBodyAcc-std()-X			    		  Variable		double																		NA
47 fBodyAcc-std()-Y			    		  Variable		double																		NA
48 fBodyAcc-std()-Z			    		  Variable		double																		NA
49 fBodyAcc-meanFreq()-X	    		Variable		double																		NA
50 fBodyAcc-meanFreq()-Y	    		Variable		double																		NA
51 fBodyAcc-meanFreq()-Z	    		Variable		double																		NA
52 fBodyAccJerk-mean()-X	    		Variable		double																		NA
53 fBodyAccJerk-mean()-Y	    		Variable		double																		NA
54 fBodyAccJerk-mean()-Z	    		Variable		double																		NA
55 fBodyAccJerk-std()-X		    		Variable		double																		NA
56 fBodyAccJerk-std()-Y		    		Variable		double																		NA
57 fBodyAccJerk-std()-Z			    	Variable		double																		NA
58 fBodyAccJerk-meanFreq()-X	  	Variable		double																		NA
59 fBodyAccJerk-meanFreq()-Y	  	Variable		double																		NA
60 fBodyAccJerk-meanFreq()-Z	  	Variable		double																		NA
61 fBodyGyro-mean()-X				      Variable		double																		NA
62 fBodyGyro-mean()-Y				      Variable		double																		NA
63 fBodyGyro-mean()-Z				      Variable		double																		NA
64 fBodyGyro-std()-X				      Variable		double																		NA
65 fBodyGyro-std()-Y				      Variable		double																		NA
66 fBodyGyro-std()-Z				      Variable		double																		NA
67 fBodyGyro-meanFreq()-X		    	Variable		double																		NA
68 fBodyGyro-meanFreq()-Y		    	Variable		double																		NA
69 fBodyGyro-meanFreq()-Z		    	Variable		double																		NA
70 fBodyAccMag-mean()			      	Variable		double																		NA
71 fBodyAccMag-std()		      		Variable		double																		NA
72 fBodyAccMag-meanFreq()		    	Variable		double																		NA
73 fBodyBodyAccJerkMag-mean() 		Variable		double																		NA
74 fBodyBodyAccJerkMag-std()	   	Variable		double																		NA
75 fBodyBodyAccJerkMag-meanFreq()	Variable		double																		NA
76 fBodyBodyGyroMag-mean()	  		Variable		double																		NA
77 fBodyBodyGyroMag-std()		    	Variable		double																		NA
78 fBodyBodyGyroMag-meanFreq()		Variable		double																		NA
79 fBodyBodyGyroJerkMag-mean()		Variable		double																		NA
80 fBodyBodyGyroJerkMag-std()	  	Variable		double																		NA
81 fBodyBodyGyroJerkMag-meanFreq()Variable		double																		NA
