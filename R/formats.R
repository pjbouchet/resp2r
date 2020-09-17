#' Output format for response to reviewer document
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}}
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Phil Bouchet.
#'
#' @export
#' @rdname response
#' @export

response <- function(...) {
  template <- system.file("rmarkdown/templates/response_doc/resources/response_doc.tex",
                          package = "resp2r")
  bookdown::pdf_document2(..., template = template)
}
