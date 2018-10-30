library(shiny)

#ui
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min = 0, max = 100),
              plotOutput("hist")
)

#server
server <- function(input,output){
  output$hist <- renderPlot({
    title <- "Random normal values"
    hist(rnorm(input$num), main = title)
    })
}

#run app
shinyApp(ui = ui, server = server)

#conectar a mi cuenta de shinyapps.io 
library(rsconnect)
rsconnect::setAccountInfo(name='spereranemer',
                          token='4045B496FC1E60AF4BD8C4E6969A73AD',
                          secret='SNu6DsYHXHB+AQi1lNYsGb3ugpRmzPSqhJ8tQsiE')

#subir la app
library(rsconnect)
rsconnect::deployApp('\\ferrere8\Economia\Sara\prueba')