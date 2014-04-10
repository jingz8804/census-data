
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
    tags$head(
      tags$link(rel="stylesheet", 
                type="text/css", 
                href="http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.css"),
      tags$script(type="text/javascript",
                  src="http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.js"),
      tags$script(type="text/javascript",
                  src="js/main.js"),
      tags$script(type='text/javascript',
                  src='https://www.google.com/jsapi'),
      tags$script(type="text/javascript",
                  src="js/geochart.js")
    ),
    titlePanel("Census Vis"),
    
    sidebarLayout(
      sidebarPanel(
        conditionalPanel(condition="input.condPanels==1",
                         helpText("Content Panel1")),
        conditionalPanel(condition="input.condPanels==2",
                         selectInput(inputId="year", label="Select Year",
                                     choices=c(2006, 2011)),
                         helpText("Content Panel2"))
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Plot",
                   div(id="map", style="width: 700px; height: 600px;"),
          value=1),
          tabPanel("Summary",
                   div(id="chart_div", style="width: 900px; height: 500px;"),
          value=2),
          id="condPanels")
      )
    )
  )
)