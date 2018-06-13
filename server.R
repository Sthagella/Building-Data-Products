#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Generate Contribution Margin based on input costs from ui.R
shinyServer(function(input, output) {
   
  output$contribm <- renderText(input$binsr + input$binsc + input$binsd)
  
})

