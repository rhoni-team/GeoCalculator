box::use(
  shiny[NS, numericInput, textOutput, moduleServer, renderText, reactive, ],
  bslib[card, layout_columns,]
)

#' @export
DecimalCoordInput <- function(id) {
  ns <- NS(id)
  card(
    layout_columns(
      numericInput(
        ns("lon_dec"),
        "Longitude as decimal",
        min=-180,
        max=180,
        value=0
      ),
      numericInput(
        ns("lat_dec"),
        "Latitude as decimal",
        min=-180,
        max=180,
        value=0
      ),
    ),
    textOutput(ns("output_dec"))
  )
}


#' @export
DecimalCoordServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Los output suelen siempre llevar una funcion renderAlgo
    output$output_dec <- renderText({
      input$lon_dec
    })
    
    return(
      list(
        lon = reactive(input$lon_dec),
        lat = reactive(input$lat_dec)
      )
    )
    
  })
}
