box::use(
  shiny[NS, div, h1, ]
)


#' @export
CoordContainer <- function(id, title, coord_module) {
  ns <- NS(id)
  div(
    class="container col-12 col-md-10 col-lg-6",
    h1(title),
    coord_module(ns("coord")),
  )
}
