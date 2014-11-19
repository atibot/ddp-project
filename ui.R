# Define UI for application
library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Viewer"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("According to the checkbox(On/Off), 
                create and display a monthly stock price chart or
                a monthly return chart of the company specified with it's SYMBOL.
                Information will be collected from Yahoo! in the period from 
                1998-01-01 to 2014-10-31"),
      
      textInput("symbol", label = h3("Enter SYMBOL"), value = "SBUX"),
      hr(),
      actionButton("goButton", "Go!"),
      #       hr(),
      #       fluidRow(column(10, verbatimTextOutput("value"))),
      p("Click the button to update the chart of the sybmol you enter."),
      
      hr(),
      checkboxInput("checkbox", label = "Price chart (Off) or Return chart (On)", value = FALSE),
      #       hr(),
      #       fluidRow(column(3, verbatimTextOutput("check")))
      p("If checked (On), a chart of monthly continuously compounded returns is displayed 
        along with the expected anual return and volatility in %.
        The red horizaontal line shows the mean of monthly returns.")
    ),
    
    mainPanel(
      plotOutput("chart")
    )
  )
))