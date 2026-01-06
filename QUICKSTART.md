# Quick Start Guide

Welcome to the Linear Regression Class! This guide will help you get started quickly.

## Step 1: Install Prerequisites (5 minutes)

### Install R
1. Go to https://cran.r-project.org/
2. Download R for your operating system (Windows, Mac, or Linux)
3. Install R by following the installation wizard

### Install RStudio (Recommended)
1. Go to https://posit.co/download/rstudio-desktop/
2. Download RStudio Desktop (free version)
3. Install RStudio

### Install Git (Optional but Recommended)
1. Go to https://git-scm.com/downloads
2. Download Git for your operating system
3. Install Git with default settings

## Step 2: Get the Course Materials (2 minutes)

### Option A: Using Git (Recommended)
```bash
git clone https://github.com/crweber9874/linear_regression_class.git
cd linear_regression_class
```

### Option B: Download ZIP
1. Go to https://github.com/crweber9874/linear_regression_class
2. Click the green "Code" button
3. Click "Download ZIP"
4. Extract the ZIP file to a folder on your computer

## Step 3: Install R Packages (10-15 minutes)

Open RStudio and run the setup script:

```r
# Navigate to the repository folder
setwd("path/to/linear_regression_class")

# Run the setup script
source("setup.R")
```

**Note**: The first time you install packages, it will take 10-15 minutes.

### Manual Installation (Alternative)
If the setup script doesn't work, install packages manually:

```r
install.packages("tidyverse")
install.packages("broom")
install.packages("car")
install.packages("shiny")
install.packages("rmarkdown")
```

## Step 4: Test Your Setup (2 minutes)

### Test 1: Load Key Packages
```r
library(tidyverse)
library(broom)
library(car)

# If no errors appear, you're good!
```

### Test 2: Run Example Code
```r
# Create simple data
data <- tibble(x = 1:10, y = 2 + 3*x + rnorm(10))

# Fit a model
model <- lm(y ~ x, data = data)

# View results
summary(model)

# Create a plot
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")
```

If you see a plot and model summary, everything is working!

### Test 3: Try the Shiny App
```r
shiny::runApp("shiny/simple-regression-app")
```

A web browser should open with an interactive app. If you see it, Shiny is working!

## Step 5: Explore the Materials

### Start with the Introduction Lecture
```r
# Open in RStudio
file.edit("lectures/01-introduction.Rmd")

# Or knit to HTML
rmarkdown::render("lectures/01-introduction.Rmd")
```

### Try the Reproducible Analysis Template
```r
# Open the vignette
file.edit("vignettes/reproducible-analysis-template.Rmd")
```

## Recommended Workflow

### For Each Lecture:
1. Open the `.Rmd` file in RStudio
2. Read through the content
3. Run code chunks interactively (Ctrl+Enter or Cmd+Enter)
4. Try the exercises at the end
5. Knit to HTML to see the full document

### For Assignments:
1. Copy the reproducible analysis template
2. Rename it for your assignment
3. Replace example code with your analysis
4. Knit to HTML to create your report

## Common Issues and Solutions

### Issue: "Package 'X' not found"
**Solution**: Install the package
```r
install.packages("package_name")
```

### Issue: "Cannot knit to PDF"
**Solution**: PDF output requires LaTeX. Either:
- Install TinyTeX: `tinytex::install_tinytex()`
- Or use HTML output (recommended for beginners)

### Issue: "Object not found" error
**Solution**: Make sure you've run all previous code chunks in order

### Issue: Plots don't appear
**Solution**: 
- In RStudio, check the "Plots" pane
- Try running the plot code again
- Make sure ggplot2 is loaded: `library(ggplot2)`

### Issue: Shiny app doesn't load
**Solution**:
- Make sure you're in the repository directory
- Check that the path to the app is correct
- Try: `setwd("path/to/linear_regression_class")`

## Getting Help

### During Class:
- Ask the instructor
- Ask teaching assistants
- Work with classmates

### Outside Class:
1. Check course materials and README files
2. Search existing GitHub issues
3. Create a new GitHub issue with:
   - What you're trying to do
   - What error you're getting
   - Your R version and OS: `sessionInfo()`

### Useful Resources:
- [R for Data Science](https://r4ds.had.co.nz/) - Free online book
- [RStudio Cheatsheets](https://www.rstudio.com/resources/cheatsheets/)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/r) - For coding questions
- [RStudio Community](https://community.rstudio.com/) - Friendly help forum

## Next Steps

### Week 1:
- [ ] Complete setup (this guide)
- [ ] Read the README.md
- [ ] Read the AI-DISCLAIMER.md
- [ ] Complete Lecture 01: Introduction
- [ ] Run the simple regression Shiny app

### Week 2:
- [ ] Review tidyverse basics
- [ ] Complete assigned lectures
- [ ] Try the reproducible analysis template
- [ ] Start first assignment

## Tips for Success

1. **Run code yourself**: Don't just read it, type it and run it
2. **Experiment**: Change values and see what happens
3. **Use R Markdown**: Practice combining code and narrative
4. **Comment your code**: Future you will thank present you
5. **Ask questions**: If you're confused, others probably are too
6. **Practice regularly**: Consistency beats cramming
7. **Use version control**: Commit your work regularly with Git

## RStudio Tips

### Useful Keyboard Shortcuts:
- Run current line/selection: `Ctrl+Enter` (Windows/Linux) or `Cmd+Enter` (Mac)
- Insert code chunk: `Ctrl+Alt+I` or `Cmd+Option+I`
- Insert `<-`: `Alt+-` or `Option+-`
- Knit document: `Ctrl+Shift+K` or `Cmd+Shift+K`
- Show help: `F1` (cursor on function name)

### Useful RStudio Panes:
- **Source**: Edit your R scripts and R Markdown files
- **Console**: Run R commands interactively
- **Environment**: See variables and data objects
- **Plots**: View graphics
- **Help**: Search and view documentation

## Course Structure

```
lectures/     → Start here: Core concepts
vignettes/    → Deep dives: Detailed examples  
data/         → Practice: Real datasets
shiny/        → Explore: Interactive apps
```

## Ready to Start!

You're all set! Open `lectures/01-introduction.Rmd` and begin your journey into linear regression analysis.

**Good luck and enjoy the course!** 🎓📊

---

**Questions?** Open an issue on GitHub or ask in class.
