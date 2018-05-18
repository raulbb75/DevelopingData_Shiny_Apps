Developing Data Products - Shiny Applications

========================================================
author: Raul Banares
date: 18 May 2018
autosize: true

BMI and Maximum Heart Rate Calculator
========================================================
In this slides we will explain the Shiny Applicaton:

"BMI and Maximum Heart Rate Calculator""

Slide With Code
========================================================


```r
calBMI <- function(system_bmi, height, weight) {
  BMI <- 0
  if (system_bmi == 1) {
    BMI <- weight/(height/100)^2
  } else {
    BMI <- (weight*703)/(height)^2
  }
  round(BMI,2)
}

calMHR <- function(system_mhr, age, weight) {
  MHR <- 0
  if (system_mhr == 1) {
    MHR <- (210-(age*0.5))-(0.2*weight)
  } else {
    MHR <- (210-(age*0.5))-(0.2*weight)+4
  }
  round(MHR,0)
}
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](RSlides-figure/unnamed-chunk-2-1.png)


Slide About
========================================================

The application is published here:

https://raulbb.shinyapps.io/DevelopingData_Shiny_Apps/
