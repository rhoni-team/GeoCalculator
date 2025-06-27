function(input, output, session) {
  lon_dec <- reactive(input$lon_dec)
  output$output_lon_dec <- lon_dec
  example$server("id_example")
}