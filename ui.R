#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Contribution Margin Calculator for a Retail Widget"),
  
  # Sidebar with a slider input for costs and retail information
  sidebarLayout(
    sidebarPanel(
       sliderInput("binsr",
                   "Retail per Unit",
                   min = 0.5,
                   max = 50,
                   value = 100)
    ,
    
      sliderInput("binsc",
                  "Cost of Goods per Unit",
                  min = -50,
                  max = -0.5,
                  value = 100)
    
    ,
    
    sliderInput("binsd",
                "Variable Cost per Unit",
                min = -50,
                max = -0.5,
                value = 100)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Output : Contribution Margin"),
           textOutput("contribm"),
       h4("A positive contribution margin indicates profitability"),
       
       h3("Documentation"),
       h5("The calculator helps with determining the profitability of a retail item. You can set the retail for a given cost of goods and other variable costs so that the margin is profitable. Note that costs are negative and retail is postive.")
    ))
  )
)

