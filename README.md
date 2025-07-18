# R Unit Testing Example

A tutorial for getting started with unit testing in R using the ```testthat``` and ```shinytest2``` packages.

## Overview
This repository provides a hands-on introduction to unit testing in R, covering both traditional R function testing with ```testthat``` and Shiny application testing with ```shinytest2```. Through practical examples, you'll learn how to write, organize, and run tests to ensure your R code is reliable and maintainable.

## Usage
The main tutorial document ```R_unit_testing.qmd``` provides a comprehensive walkthrough of the testing process from initializing testthat and shinytest2 to creating and running tests. 

The Shiny App ```app.R``` is a simple application that generates an identity matrix based on a single numeric input. The example function ```identity_matrix.R``` is located in the ```R/``` subfolder and is simply a wrapper for the ```diag()``` function.

## Resources
- [testthat documentation](https://testthat.r-lib.org/)
- [shinytest2 documentation](https://rstudio.github.io/shinytest2/)
- [R packages book - testing chapter](https://r-pkgs.org/testing-basics.html)
