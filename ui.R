
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("Census Vis"),
    
    sidebarLayout(
      sidebarPanel(
        conditionalPanel(condition="input.condPanels==1",
                         selectInput(inputId="year", label="Select Year",
                                     choices=c(2006, 2011)),
                         helpText("Content Panel1")),
        conditionalPanel(condition="input.condPanels==2",
                         helpText("Content Panel2"))
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Canada Census", 
                   h3(textOutput("year")),
                   htmlOutput("gvis"),
                   value=1),
          tabPanel("Panel 2", value=2),
          id="condPanels")
      )
    )
  )
)