#working directory belirleme. �lkay� kendi kullan�c� ad�n�zla de�i�tirin.
setwd("C:/Users/ilkay/Documents/Github/R-Final/shiny") 

library(shiny)


ui<-fluidPage(
  sliderInput(inputId = "num", 
              label = "Choose a number",
              value = 25, min = 1, max = 100),
  plotOutput("hist")
  )



server <- function(input, output){
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)
