box::use(
  shiny[NS, textInput, observeEvent, req, showNotification, moduleServer]  
)


#' @export
ui <- function(id) {
  ns <- NS(id)
  textInput(
    inputId = ns("text"),
    label = "example"
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    observeEvent(input$text, { 
      req(input$text)
      req(input$text != "")
      showNotification(input$text)
    })
    
  })
}
