shinyServer(function(input, output) { 
  getY<-reactive({

    isolate({a<-input$goButton
      x<-rnorm(input$num)
      return(x)})
  })

  output$temp <-renderPlot({
     b<-input$goButton1
     plot(getY())
  }, height = 400, width = 400)
})

shinyUI(pageWithSidebar(
  headerPanel("Example"),
  sidebarPanel(
    sliderInput("num",
            "Number of Samples",
            min = 2,
            max = 1000,
            value = 100),
    actionButton("goButton", "Resample"),
    actionButton("goButton1","Update View")        
  ),  
  mainPanel(
    tabsetPanel(      
      tabPanel("Heatmap",
               plotOutput("temp")
      ),
      tabPanel("About"),      
      id="tabs"
    )#tabsetPanel      
  )#mainPane;   
))
