#Load in necessary libraries

library(shiny)
library(ggplot2)

# Load Library to add support for graphical tooltips and popovers to enrich UI.
library(shinyBS) 

# Load Library to add Bootstrap themes to the Shiny app.
library(shinythemes)


shinyUI(pageWithSidebar(
  headerPanel("BMI and Maximum Heart Rate Calculator"),
  
  # theme = shinytheme("superhero"),
  
  
  sidebarPanel(

    radioButtons('system_mhr', h4('Sex'), choices = list('Male' = 1, 'Female' = 2), selected = 1),    
    radioButtons('system_bmi', h4('Metric System'), choices = list('Metric' = 1, 'Imperial' = 2), selected = 1),

    numericInput('height', h4('Height(cm/in)'), 180,min=0,max=250,step=1),
    numericInput('age', h4('Age(years)'),40,min=0,max=150,step=1),
    numericInput('weight', h4('Weight(kg/lbs)'),80,min=0,max=250,step=1),

    submitButton('Submit'),
    
    p(""),    
    p("1. Select which measurement system you use"),
    p("2. Input height, age and weight"),
    p("3. Click submit")
    
  ),
  mainPanel(
    h4('Results'),
    #h5('Height'),
    #verbatimTextOutput("height"),
    #h5('Weight'),
    #verbatimTextOutput("weight"),
    p(""),
    h5('MHR'),
    p("Maximum Heart Rate (MHR) is a measure that indicates the theoretical limit of heart rate in safe margins."),
    p(""),
    h5(verbatimTextOutput("MHR")),
    p(""),    
    h5('BMI'),
    p("Body Mass Index (BMI) measures the body fat based on height and weight that applies to both men and women."),
    p(""),
    h5(verbatimTextOutput("BMI")),
    br(),
    div(h4("BMI Classification"),
        h6("18.5 or less = Underweight"),
        h6("18.5 to 24.99 =  Normal Weight"),
        h6("25 to 29.99 = Overweight"),
        h6("30 to 34.99 = Obesity (Class 1)"),
        h6("35 to 39.99 = Obesity (Class 2)"),
        h6("40 or greater = Morbid Obesity"),
        style="color:blue")
  )
)
)