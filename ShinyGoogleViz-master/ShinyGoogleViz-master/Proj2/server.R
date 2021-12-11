shinyServer(function(input, output) { 
 output$main_plot <- reactivePlot( 
 function(){ 
 hist(faithful$eruptions, 
 probability = TRUE, 
 breaks = as.numeric(input$n_breaks), 
 xlab = "Duration (minutes)", 
 main = "Geyser eruption duration") 
 }) 
}) 

# http://trestletechnology.net/wp-content/uploads/2013/02/shiny_introduction.pdf
