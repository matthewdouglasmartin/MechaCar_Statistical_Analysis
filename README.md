# MechaCar Statistical Analysis
## Statistical Analysis with R

## Linear Regression to Predict MPG

![Linear Regression Model](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_Regression_Model.png)

![Summary Linear Regression](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/Summary_Linear_Regression.png)

A linear regression model was designed and used to better hone in on variables that contribute to performance of MechaCar prototypes.  This model enables MechaCar to better predict the MPG of the prototypes within the MechaCar dataset. As seen from the Summary Linear Regression image: vehicle weight, spoiler angle, and AWD are the variables that provide a non-random variance to MPG within this dataset (the probability values are considered significant).  The slope of this linear model is significant and not equal to zero as seen in the Linear Regrssion Model image, the intercept is estimated to be -1.040+02.  With the dataset provided, the linear model does not effectively predict MPG for the prototypes.  This can be determined by looking at how significant the intercept value is and would be considered overfitting (performs well with the current dataset but lack of other contributing variables).  

## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

![Lot Summary](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

Based off of the design specifications provided by MechaCar for suspension coils, the variance cannot exceed 100 PSI.  Though the Total Summary image shows that across all lots this requirement is met (variance = 76), when the lots are grouped there are only two of the three lots that meet this specification requirement.  Lot 1 and Lot 2 both meet this requirement with PSI variances below 100 PSI.  

## T-Tests on Suspension Coils

![t-Test of All Lots](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/t-Test_ALL.png)

![t-Test of Each Lot](https://github.com/matthewdouglasmartin/MechaCar_Statistical_Analysis/blob/main/Resources/t-Test_EACH.png)

When a t-Test is performed on all of the lots as a whole, the p-value is greater than the .05 agreed upon standard.  This would lead us to accept the null hypothesis for all lots.  Though this is the case for all lots, when t-Tests are performed on each lot individually, Lot 1 and Lot 2 have p-values well below the needed .05.  Thus the nnull hypothesis would be rejected for these two lots.  Regarding Lot 3, the p-value is above .05 and therefore the null hypothesis would be accepted.  

## Study Design: MechaCar vs Competition

