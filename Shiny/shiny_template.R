#working directory belirleme. Ýlkayý kendi kullanýcý adýnýzla deðiþtirin.
setwd("C:/Users/ilkay/Documents/Github/R-Final/shiny") 

library(shiny)
ui<-fluidPage()

server <- function(input, output) {

}

shinyApp(ui = ui, server = server)