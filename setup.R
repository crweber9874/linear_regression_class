# Setup Script for Linear Regression Class
# This script installs required packages and sets up the environment

# Function to check and install packages
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
  if (length(new_packages) > 0) {
    cat("Installing missing packages:", paste(new_packages, collapse = ", "), "\n")
    install.packages(new_packages, dependencies = TRUE)
  } else {
    cat("All required packages are already installed.\n")
  }
}

# Core packages for the course
required_packages <- c(
  # Tidyverse ecosystem
  "tidyverse",      # Data manipulation and visualization
  "broom",          # Tidy model outputs
  "modelr",         # Helper functions for modeling
  
  # Regression and diagnostics
  "car",            # Companion to Applied Regression
  "lmtest",         # Testing linear regression models
  "sandwich",       # Robust covariance matrix estimation
  
  # Additional visualization
  "GGally",         # Extension to ggplot2
  "patchwork",      # Combining plots
  "scales",         # Scale functions for visualization
  
  # Data summary
  "skimr",          # Compact data summaries
  
  # Shiny apps
  "shiny",          # Interactive web applications
  "plotly",         # Interactive plots
  "DT",             # Interactive tables
  
  # R Markdown
  "rmarkdown",      # Dynamic documents
  "knitr"           # Literate programming
)

cat("==============================================\n")
cat("Linear Regression Class - Package Setup\n")
cat("==============================================\n\n")

cat("This script will install packages required for the course.\n")
cat("This may take several minutes...\n\n")

# Install packages
install_if_missing(required_packages)

cat("\n==============================================\n")
cat("Verifying installation...\n")
cat("==============================================\n\n")

# Test loading key packages
test_packages <- c("tidyverse", "broom", "car", "shiny")

all_loaded <- TRUE
for (pkg in test_packages) {
  loaded <- tryCatch({
    library(pkg, character.only = TRUE)
    TRUE
  }, error = function(e) {
    FALSE
  })
  
  status <- if (loaded) "✓" else "✗"
  cat(sprintf("%s %s\n", status, pkg))
  
  if (!loaded) all_loaded <- FALSE
}

cat("\n==============================================\n")

if (all_loaded) {
  cat("SUCCESS! All packages installed correctly.\n")
  cat("You're ready to start the course!\n")
} else {
  cat("WARNING: Some packages failed to load.\n")
  cat("Try running: install.packages(c('tidyverse', 'broom', 'car', 'shiny'))\n")
}

cat("==============================================\n\n")

# Print session info
cat("R Session Information:\n")
cat("==============================================\n")
print(sessionInfo())

# Optional: Set up renv for reproducibility
cat("\n==============================================\n")
cat("Optional: Package Version Management\n")
cat("==============================================\n\n")

cat("For better reproducibility, consider using renv:\n")
cat("  install.packages('renv')\n")
cat("  renv::init()\n")
cat("This will create a project-specific package library.\n\n")

cat("Setup complete!\n")
