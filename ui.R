page_fluid(
  
  theme = bs_theme(
    version=5,
  ) |>
    bs_add_rules(sass_file("www/styles.scss")),
  
  div(
    id="banner-title",
    class="container centered-text",
    "Geocalculator"
  ),
  
  page_fixed(
    
    title = "Geocalculator",
    
    CoordContainer$CoordContainer(
      "coord_container",
      title = "Decimal Coordinates",
      coord_module = DecimalCoord$DecimalCoordInput
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