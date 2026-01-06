# Simple Linear Regression Explorer

## Overview

This interactive Shiny app helps students explore the fundamentals of simple linear regression by allowing them to:

- Adjust sample size and see effects on estimates
- Modify true population parameters (slope and intercept)
- Control noise level to understand residual variance
- Generate new random samples
- Visualize the regression line with confidence intervals
- View model summary statistics

## Running the App

### From RStudio
1. Open `app.R`
2. Click "Run App" button in the toolbar

### From Console
```r
shiny::runApp("shiny/simple-regression-app")
```

## Features

### Interactive Controls
- **Sample Size**: Adjust from 20 to 500 observations
- **True Slope**: Set the population slope parameter
- **True Intercept**: Set the population intercept parameter
- **Noise Level**: Control the standard deviation of residuals
- **New Sample Button**: Generate a new random sample

### Visualizations
- Scatter plot with fitted regression line
- Confidence interval band (95%)
- Displayed regression equation
- Color-coded points

### Statistics Display
- Estimated coefficients with standard errors
- R-squared and adjusted R-squared
- Residual standard error
- F-statistic and p-value

## Learning Objectives

Students using this app will:
1. Understand how sample size affects precision of estimates
2. See how noise affects model fit (R²)
3. Observe sampling variability in estimates
4. Learn to interpret regression output
5. Develop intuition about confidence intervals

## Technical Details

- Built with Shiny and tidyverse
- Uses ggplot2 for visualizations
- Reactive programming for real-time updates
- Uses `broom` package for tidy model output

## Customization

To modify the app:
1. Edit parameter ranges in `sliderInput` controls
2. Adjust plot aesthetics in `ggplot` code
3. Add additional statistics to the output
4. Include diagnostic plots

## References

Fox, J. (2016). *Applied Regression Analysis and Generalized Linear Models* (3rd ed.). Sage Publications.
