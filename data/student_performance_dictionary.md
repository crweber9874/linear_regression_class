# Example Dataset: Student Performance

**Source**: Simulated data for educational purposes  
**Date Created**: 2026-01-06  
**License**: CC0 (Public Domain)

## Description

This dataset contains simulated data on student performance, designed to demonstrate linear regression concepts. The data represents a hypothetical study examining factors that influence test scores.

## Variables

| Variable | Type | Description | Units | Range/Levels |
|----------|------|-------------|-------|--------------|
| student_id | integer | Unique student identifier | - | 1-100 |
| hours_studied | numeric | Hours spent studying per week | hours | 0-20 |
| previous_score | numeric | Score on previous test | points | 0-100 |
| attendance_rate | numeric | Proportion of classes attended | proportion | 0-1 |
| socioeconomic_status | factor | Family socioeconomic status | - | Low, Medium, High |
| study_group | factor | Whether student participates in study group | - | Yes, No |
| test_score | numeric | Score on current test (outcome variable) | points | 0-100 |

## Data Generation

This data was generated using the following model:

```
test_score = 40 + 2.5 * hours_studied + 0.3 * previous_score + 
             10 * attendance_rate + SES_effect + study_group_effect + error
```

Where:
- SES_effect: Low = 0, Medium = 5, High = 10
- study_group_effect: No = 0, Yes = 5
- error ~ Normal(0, 8)

## Purpose

This dataset is suitable for:
- Demonstrating simple and multiple linear regression
- Exploring categorical predictors
- Understanding interaction effects
- Practicing data visualization
- Model comparison and selection

## Usage in R

```r
library(tidyverse)

# Load the data
students <- read_csv("data/student_performance.csv")

# Quick exploration
glimpse(students)
summary(students)

# Simple regression
model1 <- lm(test_score ~ hours_studied, data = students)
summary(model1)

# Multiple regression
model2 <- lm(test_score ~ hours_studied + previous_score + attendance_rate + 
             socioeconomic_status + study_group, data = students)
summary(model2)
```

## Notes

- All values are simulated and do not represent real students
- The relationships are designed to be relatively strong for pedagogical clarity
- Some realistic features included: moderate correlation between predictors, realistic score ranges
- Use this data for practice, not for real-world conclusions

## Citation

If using this dataset in examples or teaching materials:

```
Student Performance Dataset (2026). Linear Regression Class Repository.
https://github.com/crweber9874/linear_regression_class
```

## Related Materials

- Lecture 04: Simple Linear Regression
- Lecture 08: Categorical Predictors
- Vignette: Multiple Regression Example
