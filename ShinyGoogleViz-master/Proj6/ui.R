library(shiny)

# runApp("00-base") # This command though highlighted out makes it easy 
                    # makes it easy to run the code from the R console.

# This is a UI page with three panels
threepage <- function(headerPanel,left,middle,right) {
  bootstrapPage(div(class = "container-fluid", div(class = "row-fluid", 
  headerPanel), div(class = "row-fluid", left,  middle, right)))}

# Define UI for miles per gallon application
shinyUI(threepage(

# Application Title ---------------------------------------
   headerPanel=headerPanel("Exploring Shiny"),
   # Notice the "," which follows the headerPanel
   # This is because though very lengthy each block
   # of display is just a different argument passed to
   # the pageWithSidebar function.

 # Left PANEL -------------------------------------------
   # I am assigning all of the panels to be "sidebarPanel"
   #  because that sytle works well for a three panel display.

   left=sidebarPanel(
   selectInput("variable", "Variable:",
            list("Cylinders" = "cyl", 
                 "Transmission" = "am", 
                  "Gears" = "gear")),
   checkboxInput("SidebySide", "Side by Side", value=T),
   checkboxInput("ontop", "On Top of Each Other", value=T),
   # submitButton("Submit"),
     h5(textOutput("click.feeback")),
     actionButton("next1", "Next!"),
   # This displays the server side reactive text 
   #  recording number of clicks.
     h5(textOutput("clicks")),
   
   # Display the total number of hits on the app.
     h5(textOutput("hits")),
      
   # HTML code can be input directly into the user interface.
   # In this case <hr> inserts a (barely visible) line
   HTML("<hr>"),
   # heading tags are used to indicate different text styles
   #  customized by customizing CSS syle sheets.
   h1("Heading Tags", br(), "h1"),
   h2("h2"),
   h3("h3"),
   h4("h4"),
   h5("h5"),
   h6("h6"),
   
   HTML("<hr>"),  # Add a line
   # Attribute with link.
   # h6 defines the size while a tells HTML to underline and
   #    href
   h6("by Francis Smart at", a("Econometrics by Simulation", 
            href="http://www.EconometricsBySimulation.com"))
 ), # End Side Bar Panel Code

# Middle PANEL ----------------------------------------------
# By listing the mainPanel first we move the sidebar to 
#    the right side of the screen.
  middle=conditionalPanel(
   condition = "input.SidebySide == true",
   sidebarPanel(
    h5("Display graphs next to each other"),
    # In principal there is no reason you can't do this with 
    #   HTML tagging functions and css sytle sheets.
    #   However, I do not know the command, though R can
    #   easily map multiple graphs in the same window.
    plotOutput("mpgPlot1"),
    h6("Using 'split.screen' function")
  )  # End conditional display code
),   # End middle panel code

  right=conditionalPanel(
    condition = "input.ontop == true",
      sidebarPanel(
      h5("Display graphs on top of each other"),
      # Can easily be accomplished by listing them sequentially    
    
      plotOutput("mpgPlot2", width="100%", height="200px"),
      plotOutput("mpgPlot3", width="100%", height="200px"),
      h6("Using plotOutput")
    )  # End conditional display code
  )    # End right panel code
))
