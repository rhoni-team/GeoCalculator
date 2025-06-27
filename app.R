library(shiny)
library(bslib)
library(sass)
library(geosphere)
library(dplyr)


# Define UI for application that draws a histogram
ui <- page_fluid(
  
  theme = bs_theme(
    version=5,
  ) |>
  bs_add_rules(sass::sass_file("www/styles.scss")),
  
  navset_bar(
    title = "Geocalculator",
  ),
  
  page_fixed(
  
    title = "Geocalculator",
    
    card(
      numericInput("lon_dec", "input the longitude as decimal", min=-180, max=180, value=0),
    ),
    
    card(
      layout_columns(
        numericInput("lon_hex_hour", "input hour", min=0, max=180, value=0),
        numericInput("lon_hex_min", "input minutes", min=0, max=60, value=0),
        numericInput("lon_hex_sec", "input seconds", min=0, max=60, value=0),
      ),
    ),
      
    textOutput("output_lon_dec")
)

)

# Define server logic required to draw a histogram
server <- function(input, output) {

    lon_dec <- reactive(input$lon_dec)
    
    output$output_lon_dec <- lon_dec
}

# Run the application 
shinyApp(ui = ui, server = server)
