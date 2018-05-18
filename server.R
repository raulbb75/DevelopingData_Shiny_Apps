library(shiny)

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
  round(MHR,2)
}


shinyServer(
  function(input, output) {
    output$height <- renderPrint({input$height})
    output$weight <- renderPrint({input$weight})
    output$BMI <- renderPrint({calBMI(input$system_bmi, input$height, input$weight)})
    output$MHR <- renderPrint({calMHR(input$system_mhr, input$age, input$weight)})
  }
)



