# Vignettes Directory

This directory contains extended tutorials and detailed examples that complement the lecture materials. Vignettes provide deep dives into specific topics, workflows, and best practices.

## Purpose

Vignettes serve to:
- Provide step-by-step walkthroughs of complete analyses
- Demonstrate best practices for reproducible research
- Explore real-world applications of regression methods
- Showcase tidyverse workflows in depth
- Serve as templates for student projects

## Vignette Topics

### Getting Started
- **`tidyverse-workflow.Rmd`**: Complete introduction to tidyverse for regression analysis
- **`reproducible-analysis-template.Rmd`**: Template for reproducible statistical reports
- **`data-wrangling.Rmd`**: Data cleaning and preparation with dplyr and tidyr

### Regression Fundamentals
- **`simple-regression-walkthrough.Rmd`**: Detailed simple linear regression example
- **`interpretation-guide.Rmd`**: Understanding and communicating regression results
- **`confidence-prediction-intervals.Rmd`**: Working with uncertainty in predictions

### Diagnostics and Assumptions
- **`residual-diagnostics.Rmd`**: Comprehensive guide to checking assumptions
- **`outlier-detection.Rmd`**: Identifying and handling influential observations
- **`transformation-strategies.Rmd`**: When and how to transform variables

### Multiple Regression
- **`multiple-regression-example.Rmd`**: Complete multiple regression workflow
- **`categorical-variables.Rmd`**: Working with factors and dummy variables
- **`interaction-effects.Rmd`**: Understanding and visualizing interactions

### Model Building
- **`model-selection.Rmd`**: Strategies for choosing predictors
- **`cross-validation.Rmd`**: Assessing model performance
- **`comparing-models.Rmd`**: AIC, BIC, and model comparison tools

### Visualization
- **`ggplot2-regression.Rmd`**: Creating publication-quality regression plots
- **`diagnostic-plots-ggplot.Rmd`**: Custom diagnostic plots with ggplot2
- **`interactive-visualizations.Rmd`**: Using plotly for interactive graphics

### Advanced Applications
- **`case-study-real-estate.Rmd`**: Housing price prediction example
- **`case-study-biomedical.Rmd`**: Medical data analysis example
- **`case-study-social-science.Rmd`**: Survey data analysis example

## Vignette Structure

Each vignette should include:

1. **Clear objectives**: What will the reader learn?
2. **Prerequisites**: Required knowledge or previous vignettes
3. **Setup**: Loading packages and data
4. **Motivation**: Why is this topic important?
5. **Step-by-step walkthrough**: Detailed explanations with code
6. **Interpretation**: What do the results mean?
7. **Common pitfalls**: What mistakes to avoid
8. **Exercises**: Practice problems for readers
9. **Further reading**: Links to additional resources
10. **Session info**: For reproducibility

## Template

```markdown
---
title: "Vignette Title: Specific Topic"
author: "Your Name"
date: "`r Sys.Date()`"
output:
  html_document:
    toc: true
    toc_depth: 3
    toc_float: true
    code_folding: show
    theme: flatly
    highlight: tango
---

## Overview

Brief description of what this vignette covers and why it's important.

### Learning Objectives
By the end of this vignette, you will be able to:
- Objective 1
- Objective 2
- Objective 3

### Prerequisites
- Required background knowledge
- Previous vignettes or lectures to review
- R packages needed

## Setup

```{r setup, message=FALSE, warning=FALSE}
# Load required packages
library(tidyverse)
library(broom)
library(car)

# Set default theme
theme_set(theme_minimal())

# Set seed for reproducibility
set.seed(42)
```

## Introduction

[Motivation and context for the topic]

## Section 1: Main Content

[Detailed explanation with code examples]

```{r}
# Example code with extensive comments
```

### Interpretation

[Explain what the results mean]

## Section 2: Additional Topics

[Continue with more sections as needed]

## Common Pitfalls and Best Practices

### ❌ Common Mistakes
- Mistake 1 and why it's wrong
- Mistake 2 and why it's wrong

### ✅ Best Practices
- Best practice 1
- Best practice 2

## Practice Exercises

1. **Exercise 1**: [Description]
2. **Exercise 2**: [Description]
3. **Exercise 3**: [Description]

## Summary

Key takeaways:
- Point 1
- Point 2
- Point 3

## Further Reading

- Fox, J. (2016). Chapter X. *Applied Regression Analysis*.
- [Online resources]

## Appendix: Complete Code

```{r eval=FALSE}
# Complete analysis code without interruption
```

## Session Information

```{r}
sessionInfo()
```
```

## Best Practices

### Writing Style
- **Be conversational**: Write as if teaching a student
- **Explain the "why"**: Don't just show code, explain reasoning
- **Use examples**: Concrete examples are more memorable than abstract concepts
- **Anticipate questions**: Address common confusion points
- **Show alternatives**: Demonstrate different approaches when relevant

### Code Style
- **Annotate heavily**: More comments than in lectures
- **Show incremental steps**: Break complex operations into steps
- **Use meaningful variable names**: Self-documenting code
- **Demonstrate best practices**: Show the "right way" to do things
- **Include error handling**: Show how to avoid and fix common errors

### Data
- **Use realistic data**: Examples should feel authentic
- **Keep it manageable**: Datasets should be small enough to understand
- **Include data exploration**: Always start with EDA
- **Document data sources**: Cite where data come from

## Creating a New Vignette

1. Copy the template above
2. Choose a focused, specific topic
3. Work through the analysis yourself first
4. Write the narrative to match your code
5. Have someone else test the vignette
6. Render to HTML and check output
7. Add to version control
8. Update this README

## Rendering All Vignettes

```r
# Render all vignettes
library(purrr)
library(rmarkdown)

list.files("vignettes", pattern = "\\.Rmd$", full.names = TRUE) %>%
  walk(render)
```

## Tidyverse Workflow Pattern

Most vignettes should follow this general pattern:

```r
# 1. Load packages
library(tidyverse)

# 2. Import data
data <- read_csv("path/to/data.csv")

# 3. Explore data
glimpse(data)
skim(data)  # from skimr package

# 4. Visualize relationships
ggplot(data, aes(x = x, y = y)) +
  geom_point()

# 5. Fit model
model <- lm(y ~ x, data = data)

# 6. Tidy model output
tidy(model)
glance(model)

# 7. Check diagnostics
augment(model) %>%
  ggplot(aes(x = .fitted, y = .resid)) +
  geom_point()

# 8. Interpret and communicate results
```

## Resources

- [R Markdown Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/)
- [Tidyverse Style Guide](https://style.tidyverse.org/)
- [ggplot2 Book](https://ggplot2-book.org/)
- [R for Data Science](https://r4ds.had.co.nz/)

## Quality Checklist

Before committing a vignette, verify:
- [ ] Knits to HTML without errors
- [ ] All code chunks run successfully
- [ ] Includes sessionInfo() at end
- [ ] Has clear learning objectives
- [ ] Provides sufficient explanation
- [ ] Includes visualizations
- [ ] Has practice exercises
- [ ] Lists prerequisites
- [ ] Cites sources appropriately
- [ ] Follows tidyverse style guide
- [ ] Includes useful comments
