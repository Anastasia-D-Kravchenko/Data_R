library(shiny)
library(ggplot2)
# --- 2. A Basic Webapp ---

# UI: Defines what the user sees on the screen
ui <- fluidPage(
  # Application title
  titlePanel("Interactive Histogram: Old Faithful Geyser"),

  # Sidebar layout with input and output definitions
  sidebarLayout(
    # Sidebar panel for inputs
    sidebarPanel(
      helpText("Adjust the slider to change the number of bins in the histogram."),

      # Input: Slider for the number of bins
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Main panel for displaying outputs
    mainPanel(
      # Output: Histogram
      plotOutput(outputId = "distPlot")
    )
  )
)

# Server: Contains the logic to transform inputs into outputs
server <- function(input, output) {

  # This expression is 'reactive'. It re-runs whenever 'input$bins' changes.
  output$distPlot <- renderPlot({

    # Use the 'waiting' column from the built-in 'faithful' dataset
    x    <- faithful$waiting

    # Generate bins based on input$bins from the UI slider
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # Draw the histogram
    hist(x,
         breaks = bins,
         col = '#78B4B7', # Using your Teal color from the palette
         border = 'white',
         xlab = 'Waiting time to next eruption (in mins)',
         main = 'Histogram of waiting times')
  })
}

# Run the application
shinyApp(ui = ui, server = server)