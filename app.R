library(shiny)

# Define UI
ui <- fluidPage(
  titlePanel("Hello World Shiny App"),
  sidebarLayout(
    sidebarPanel("This is the sidebar."),
    mainPanel("Hello, world!")
  )
)

# Define server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)
