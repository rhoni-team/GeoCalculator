function(input, output, session) {
  
  decimal_coords <- DecimalCoord$DecimalCoordServer("coord_container-coord")
  
  output$output_lon_dec <- renderText({
    paste("The selected longitude is:", decimal_coords$lon())
  })
  
}