# Contributing to Linear Regression Class

Thank you for your interest in contributing to this course repository! This guide will help you get started.

## How Students Can Contribute

We welcome contributions from students in several forms:

### 1. Report Issues
- Found a typo or error in course materials?
- Encountered a bug in example code?
- Have a question about the content?

**Create an issue** on GitHub describing what you found.

### 2. Suggest Improvements
- Have an idea for a better explanation?
- Know of a great dataset that would illustrate a concept?
- Want to suggest an additional topic?

**Open an issue** with your suggestion.

### 3. Share Examples
- Created an interesting analysis using course techniques?
- Built a useful Shiny app?
- Wrote a helpful vignette?

**Submit a pull request** with your contribution.

## Getting Started

### Fork the Repository

1. Click the "Fork" button at the top of the repository page
2. Clone your fork to your local machine:
```bash
git clone https://github.com/YOUR-USERNAME/linear_regression_class.git
cd linear_regression_class
```

### Set Up Your Environment

1. Install R (version 4.0.0 or higher)
2. Install required packages:
```r
install.packages(c("tidyverse", "broom", "car", "shiny"))
```

### Create a Branch

```bash
git checkout -b my-contribution
```

## Making Changes

### Code Style

Follow the [tidyverse style guide](https://style.tidyverse.org/):

- Use `<-` for assignment, not `=`
- Use `snake_case` for variable and function names
- Include spaces around operators: `x + y` not `x+y`
- Limit lines to 80 characters
- Use meaningful variable names

### R Markdown Documents

When editing `.Rmd` files:

- Test that the document knits without errors
- Include `sessionInfo()` at the end
- Use code chunk labels
- Add comments to explain complex code
- Include appropriate citations

### Commit Messages

Write clear commit messages:

```bash
git commit -m "Fix typo in lecture 01 introduction"
git commit -m "Add vignette on handling missing data"
git commit -m "Update README with new installation instructions"
```

## Submitting Changes

### Pull Requests

1. Push your changes to your fork:
```bash
git push origin my-contribution
```

2. Go to the original repository on GitHub
3. Click "New Pull Request"
4. Select your branch
5. Describe your changes clearly
6. Submit the pull request

### Pull Request Guidelines

**Good PR description:**
```
## Changes
- Fixed equation formatting in lecture 04
- Updated code example to use tidyverse syntax
- Added explanation of confidence intervals

## Testing
- Verified that lecture 04 knits to HTML without errors
- Tested code examples in R 4.2.0
```

## Types of Contributions

### 📝 Documentation
- Fix typos or unclear explanations
- Improve README files
- Add code comments
- Update references

### 💡 Examples
- Add new datasets with documentation
- Create additional vignettes
- Share analysis examples
- Contribute Shiny apps

### 🐛 Bug Fixes
- Fix errors in code examples
- Correct statistical mistakes
- Resolve package dependency issues

### ✨ Enhancements
- Improve visualizations
- Add interactive elements
- Suggest new topics
- Enhance existing content

## Quality Standards

Before submitting:

- [ ] Code runs without errors
- [ ] R Markdown documents knit successfully
- [ ] New files follow the repository structure
- [ ] Documentation is clear and complete
- [ ] Examples include comments
- [ ] Data includes a data dictionary
- [ ] Session info is included where appropriate

## Content Guidelines

### For Lectures
- Focus on one main concept per lecture
- Include learning objectives
- Provide worked examples
- Add practice exercises
- Use tidyverse approach
- Include visualizations

### For Vignettes
- Provide step-by-step explanations
- Use real or realistic data
- Show complete workflows
- Explain the "why" not just the "how"
- Include diagnostic checks
- Discuss interpretation

### For Shiny Apps
- Keep the interface simple and intuitive
- Include help text
- Provide clear labels
- Test with different inputs
- Include a README in the app folder
- Document learning objectives

### For Data
- Include a data dictionary
- Document the source
- Specify license or terms of use
- Keep files reasonably sized
- Use standard formats (CSV, RDS)
- Anonymize if necessary

## Review Process

1. **Submission**: You submit a pull request
2. **Review**: Instructor or TAs review your contribution
3. **Feedback**: You may receive requests for changes
4. **Revision**: Make requested changes if needed
5. **Merge**: Once approved, your contribution is merged

## Code of Conduct

### Be Respectful
- Treat all contributors with respect
- Welcome newcomers
- Be constructive in feedback
- Assume good intentions

### Be Collaborative
- Help others learn
- Share knowledge generously
- Give credit where due
- Celebrate contributions

### Be Professional
- Focus on improving course materials
- Stay on topic
- Avoid controversial non-course topics
- Follow academic integrity guidelines

## Questions?

If you have questions about contributing:

1. Check existing issues to see if it's been answered
2. Review this guide thoroughly
3. Ask in a new issue with the "question" label
4. Contact the course instructor

## Recognition

Contributors will be acknowledged in:
- The repository's contributor list
- Course acknowledgments (if significant contributions)
- Individual pull request credits

## License

By contributing to this repository, you agree that your contributions will be licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0).

## Additional Resources

- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)
- [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
- [R Packages: Git and GitHub](https://r-pkgs.org/git.html)
- [Tidyverse Style Guide](https://style.tidyverse.org/)

---

Thank you for helping make this course better! 🎉
