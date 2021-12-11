# https://github.com/EconometricsBySimulation/2013-06-11-Shiny-Exploration/blob/master/server.R

library(shiny)
library(datasets)

mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))

# A server parameters
SP <- list()
  # Record the number of poeple who have used the app 
  #    since initiation on the server
  SP$npers <- 0

shinyServer(function(input, output) {
  position <- 0
  
  # shinyServer is Started up every time the domain is called.
  # Use <<- to assign to the global server environment.
  SP$npers <<- SP$npers+1
  
  formulaText <- reactive(paste("mpg ~", input$variable))

  output$hits <- renderText({
    paste0("App Hits:" , SP$npers)
  })
  
  output$clicks <- renderText({
    paste("Position:",input$next1)
  })
  
  output$click.feeback <- renderText({
    text <- "Click the button to advance"
    if (input$next1>1) text <- "Click the button to advance!!"
    if (input$next1>2) text <- "Try again"
    if (input$next1>4) text <- "Hmm..."
    if (input$next1>6) text <- "Come on! You can do better than that!"
    if (input$next1>8) text <- "Try harder!!!"
    if (input$next1>11) text <- "Damnit!  Look what you have done! It's broken"
    if (input$next1>13) text <- "Now, you are just waisting our time."
    if (input$next1>16) text <- "I don't need this."
    if (input$next1>20) text <- "Goodbye"
    if (input$next1>24) text <- ""
    text
  })  

  output$mpgPlot1 <- renderPlot({
    par(mar=c(0,0,0,0))
    split.screen(1:2)
    
    bplot <- function () {boxplot(as.formula(formulaText()), 
                          data = mpgData)}
    screen(1) ; bplot()
    screen(2) ; bplot()
  })
  
  output$mpgPlot2 <- output$mpgPlot3 <- renderPlot({
    par(mar=c(0,0,0,0))
    boxplot(as.formula(formulaText()), 
            data = mpgData)
  })
  

})
