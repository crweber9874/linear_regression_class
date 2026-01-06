# Lectures Directory

This directory contains lecture materials for the Linear Regression course, following the structure and approach of Fox's *Applied Regression Analysis and Generalized Linear Models*.

## Format

All lectures are written in **R Markdown** (`.Rmd`) to support:
- Reproducible analysis
- Integration of code, output, and narrative
- Multiple output formats (HTML, PDF, slides)

## Lecture Series

### Module 1: Foundations
1. **01-introduction.Rmd**: Course overview, reproducibility, tidyverse introduction
2. **02-data-visualization.Rmd**: Exploratory data analysis with ggplot2
3. **03-statistical-foundations.Rmd**: Review of probability and inference

### Module 2: Simple Linear Regression
4. **04-simple-regression.Rmd**: Least squares estimation, interpretation
5. **05-inference-regression.Rmd**: Hypothesis tests, confidence intervals
6. **06-assumptions-diagnostics.Rmd**: Residual analysis, diagnostic plots

### Module 3: Multiple Regression
7. **07-multiple-regression.Rmd**: Multiple predictors, partial relationships
8. **08-categorical-predictors.Rmd**: Factors, dummy variables, contrasts
9. **09-interactions.Rmd**: Interaction terms, effect modification

### Module 4: Model Building
10. **10-variable-selection.Rmd**: Model comparison, AIC, cross-validation
11. **11-transformations.Rmd**: Log transforms, polynomial terms, Box-Cox
12. **12-outliers-influence.Rmd**: Leverage, Cook's distance, robust methods

### Module 5: Advanced Topics
13. **13-collinearity.Rmd**: Multicollinearity diagnosis and remedies
14. **14-generalized-linear-models.Rmd**: Logistic regression, Poisson regression
15. **15-case-studies.Rmd**: Applied examples with real data

## Running Lectures

### In RStudio
1. Open the `.Rmd` file
2. Click "Knit" to render to HTML/PDF
3. Or run code chunks interactively with Ctrl+Enter (Cmd+Enter on Mac)

### From Command Line
```r
rmarkdown::render("lectures/01-introduction.Rmd")
```

### Batch Rendering
```r
# Render all lectures
library(purrr)
list.files("lectures", pattern = "\\.Rmd$", full.names = TRUE) %>%
  walk(rmarkdown::render)
```

## Lecture Template

Each lecture follows this structure:

```markdown
---
title: "Lecture Title"
author: "Course Instructor"
date: "`r Sys.Date()`"
output:
  html_document:
    toc: true
    toc_float: true
    code_folding: show
    theme: flatly
---

## Learning Objectives
- Objective 1
- Objective 2

## Setup
```{r setup, message=FALSE}
library(tidyverse)
library(broom)
library(car)
```

## Introduction
[Content]

## Main Content
[Content with code chunks]

## Summary
[Key takeaways]

## Practice Exercises
[Exercises for students]

## References
[Citations]

## Session Info
```{r}
sessionInfo()
```
```

## Best Practices

1. **Load packages in setup chunk**: All `library()` calls in a setup chunk at the beginning
2. **Set chunk options**: Use meaningful chunk labels and appropriate options (e.g., `warning=FALSE`)
3. **Comment code**: Explain what code does, especially for complex operations
4. **Use tidyverse**: Prefer tidyverse functions for consistency
5. **Include visualizations**: Use ggplot2 for all graphics
6. **Add exercises**: Include practice problems for students
7. **Document session**: Always end with `sessionInfo()` for reproducibility

## Output Formats

### HTML (default)
- Interactive
- Easy to view in browser
- Can include interactive elements (plotly, DT tables)

### PDF
- Professional appearance
- Good for printing
- Requires LaTeX installation

```yaml
output:
  pdf_document:
    toc: true
    number_sections: true
```

### Slides (Slidy, ioslides, or xaringan)
```yaml
output:
  ioslides_presentation:
    widescreen: true
```

## Code Style

Follow the [tidyverse style guide](https://style.tidyverse.org/):

- Use `<-` for assignment, not `=`
- Use `snake_case` for variable names
- Use spaces around operators
- Limit lines to 80 characters
- Use pipes `%>%` for multi-step operations

## Example Code Patterns

### Loading and Exploring Data
```r
# Load data
data <- read_csv("data/example.csv")

# Quick exploration
glimpse(data)
summary(data)

# Visualization
ggplot(data, aes(x = predictor, y = response)) +
  geom_point() +
  theme_minimal()
```

### Fitting Models
```r
# Fit model
model <- lm(response ~ predictor, data = data)

# Tidy output
tidy(model)
glance(model)
augment(model)
```

### Diagnostic Plots
```r
# Using base R
par(mfrow = c(2, 2))
plot(model)

# Using ggplot2 (with augment)
model_data <- augment(model)

ggplot(model_data, aes(x = .fitted, y = .resid)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed") +
  labs(x = "Fitted Values", y = "Residuals")
```

## Resources

- [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
- [R Markdown Cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf)
- [RStudio Visual Markdown Editor](https://rstudio.github.io/visual-markdown-editing/)

## Contributing

To add a new lecture:
1. Copy the template structure
2. Follow naming convention: `##-topic-name.Rmd`
3. Include session info at the end
4. Test knitting to HTML before committing
5. Update this README with the new lecture
