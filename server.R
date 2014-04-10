
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output) {
#   yearSelected <- reactive({
#     input$year
#   })
#   output$year <- renderText({
#     # we must call yearSelected() to use the value
#     paste("Population per province in", yearSelected())
#   })
#   output$gvis <- renderGvis({
#      
#     data <- subset(fake.census.data, year == yearSelected())
#     
#     gvisGeoChart(data, locationvar="province", colorvar="population",
#                  options=list(region="CA", displayMode="regions",
#                               resolution="provinces",
#                               width=400, height=380,
#                               colorAxis="{minValue: 0, colors:['#FFFFFF', '#0000FF']}",
#                               colorAxis.minValue=0))
#   })
  
})
