# Data Directory

This directory contains datasets used throughout the Linear Regression course.

## Principles

All datasets in this directory follow these principles:

1. **Documented**: Each dataset includes a data dictionary
2. **Cited**: Original sources are clearly referenced
3. **Clean**: Preprocessing steps are documented
4. **Accessible**: Data are in standard formats (CSV, RDS)
5. **Reproducible**: Scripts for data generation/cleaning are included when applicable

## Dataset Organization

### Raw Data
Place original, unmodified data files here with a `raw_` prefix.

### Processed Data
Cleaned and preprocessed data ready for analysis.

### Data Dictionaries
Companion files (`.txt` or `.md`) describing variables, units, and data collection methods.

## Example Datasets

This folder will contain datasets such as:

- **Duncan's Occupational Prestige Data**: Classic dataset for regression analysis (from the `car` package)
- **Davis Height and Weight Data**: Demonstrates measurement error and outlier detection
- **Prestige of Canadian Occupations**: Multiple regression with categorical predictors
- **Simulated datasets**: For demonstrating specific statistical properties

## Adding New Data

When adding a new dataset:

1. Include the raw data file
2. Create a data dictionary (`.md` file with same name)
3. Document the source and date accessed
4. Include any cleaning/preprocessing scripts
5. Add the dataset to this README

## Data Format Standards

### Preferred Format: CSV
- Easy to version control
- Human-readable
- Widely compatible

### RDS Format
- For R-specific objects (factors with specific levels, etc.)
- More efficient for large datasets
- Preserves R data types

### File Naming
- Use lowercase with underscores: `dataset_name.csv`
- Include date if multiple versions: `dataset_name_2024-01-15.csv`
- Raw data: `raw_dataset_name.csv`
- Processed data: `dataset_name.csv`

## Example: Loading Data in R

```r
library(tidyverse)

# Load CSV data
prestige <- read_csv("data/prestige.csv")

# Load RDS data
prestige <- readRDS("data/prestige.rds")

# Load data from R package
library(car)
data(Prestige)
```

## Data Privacy and Ethics

- Do not include personal or sensitive data without proper authorization
- Anonymize data when necessary
- Respect data use agreements and licenses
- Cite original sources appropriately

## References

- Fox, J., & Weisberg, S. (2019). *An R Companion to Applied Regression* (3rd ed.). Sage.
- Data from the `car`, `datasets`, and other standard R packages are used with appropriate attribution.

## Template: Data Dictionary

When creating a data dictionary, use this template:

```markdown
# Dataset Name

**Source**: [Original source and citation]
**Date Accessed**: YYYY-MM-DD
**License**: [License information]

## Description
[Brief description of the dataset and its context]

## Variables

| Variable | Type | Description | Units | Range/Levels |
|----------|------|-------------|-------|--------------|
| var1 | numeric | Description | units | min-max |
| var2 | factor | Description | - | level1, level2 |
| var3 | character | Description | - | - |

## Notes
- [Any important notes about the data]
- [Data collection methods]
- [Known issues or limitations]
```
