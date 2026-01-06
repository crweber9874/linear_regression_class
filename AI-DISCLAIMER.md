# AI Tools Disclaimer

## Purpose

This document outlines the policy and best practices for using Artificial Intelligence (AI) tools in this course, including Large Language Models (LLMs) like ChatGPT, Claude, GitHub Copilot, and other AI-assisted coding tools.

## Philosophy

AI tools are powerful aids for learning and productivity, but they must be used thoughtfully and ethically. This course aims to help students:

1. **Understand** statistical concepts deeply, not just generate code
2. **Develop** critical thinking skills to evaluate AI-generated outputs
3. **Learn** to use AI tools as assistants, not replacements for learning
4. **Practice** transparency about AI usage in academic work

## Permitted Uses

AI tools **may be used** for:

### Learning and Exploration
- Understanding error messages and debugging code
- Exploring alternative approaches to solving problems
- Learning new R functions or tidyverse syntax
- Generating example code to understand concepts
- Formatting and documenting code

### Productivity
- Autocompleting repetitive code patterns
- Generating boilerplate code structure
- Refactoring code for readability
- Creating visualizations with ggplot2
- Writing documentation and comments

### Research
- Exploring package documentation
- Finding relevant statistical methods
- Understanding mathematical notation
- Summarizing academic papers (with proper citations)

## Required Practices

When using AI tools in this course:

1. **Understand the Code**: Never submit code you don't understand. Take time to study AI-generated code line by line.

2. **Verify Outputs**: AI tools can produce incorrect or nonsensical statistical analyses. Always validate results against your statistical knowledge.

3. **Cite AI Usage**: When submitting assignments, include a brief statement about how AI tools were used (e.g., "Used ChatGPT to debug ggplot2 syntax errors").

4. **Test Thoroughly**: AI-generated code may contain subtle bugs. Test all code with different inputs and edge cases.

5. **Document Your Understanding**: In assignments, explain your code and results in your own words to demonstrate comprehension.

## Prohibited Uses

AI tools **may not be used** for:

1. **Generating complete assignment solutions** without understanding
2. **Bypassing learning objectives** by having AI do the conceptual work
3. **Plagiarism** - passing off AI-generated work as entirely your own
4. **Exam/quiz assistance** unless explicitly permitted
5. **Generating fake data** or results to support incorrect conclusions

## Specific Guidelines

### For Homework Assignments
- ✅ Use AI to help debug code or understand concepts
- ✅ Adapt AI-generated examples to your specific problem
- ❌ Submit AI-generated code without understanding it
- ❌ Copy-paste entire solutions without modification

### For Projects
- ✅ Use AI to explore different analytical approaches
- ✅ Generate visualization templates to customize
- ❌ Have AI write your entire analysis narrative
- ❌ Use AI-generated interpretations without statistical reasoning

### For Exams
- ❌ AI tools are not permitted during exams unless explicitly stated
- ✅ You may use AI for exam preparation and practice

## Critical Thinking with AI

When using AI tools, ask yourself:

1. **Is the code correct?** AI can confidently generate incorrect code.
2. **Is the statistical approach appropriate?** AI may not understand your research context.
3. **Do I understand what this code does?** If not, study it or seek alternatives.
4. **Are there assumptions being made?** AI-generated analyses may violate statistical assumptions.
5. **Is this helping me learn?** If AI is preventing learning, step back and work through the problem manually.

## Common AI Pitfalls in Statistics

Be especially careful with AI tools when:

- **Choosing statistical tests**: AI may suggest inappropriate methods
- **Interpreting p-values and coefficients**: Context matters more than AI knows
- **Assessing assumptions**: AI-generated diagnostics may be incomplete
- **Causal inference**: AI often confuses correlation with causation
- **Domain knowledge**: AI lacks field-specific expertise

## Examples

### ✅ Good Use
```r
# Student writes:
# I want to create a scatterplot with a regression line
# Uses AI to help with ggplot2 syntax
# Understands each component and customizes it

ggplot(data, aes(x = predictor, y = response)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "My Analysis", x = "X Variable", y = "Y Variable")
```

### ❌ Poor Use
```r
# Student copy-pastes AI-generated code without understanding
# Code uses inappropriate methods or has errors
# Student cannot explain what the code does
```

## Academic Integrity

Using AI tools inappropriately may constitute academic misconduct. When in doubt:

1. **Ask the instructor** if a specific use is permitted
2. **Err on the side of transparency** - disclose AI usage
3. **Prioritize learning** over efficiency

## Evolving Technology

AI tools are rapidly evolving. This policy may be updated throughout the course. Students will be notified of any changes.

## Resources

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [OpenAI Usage Policies](https://openai.com/policies/usage-policies)
- University Academic Integrity Policy (consult your institution)

## Questions?

If you're unsure whether a specific use of AI tools is appropriate, please ask the instructor before proceeding. It's always better to ask than to assume.

---

**Last Updated**: January 2026

This policy is designed to help students learn effectively while leveraging modern tools responsibly. The goal is not to prohibit AI use, but to ensure it enhances rather than replaces genuine learning.
