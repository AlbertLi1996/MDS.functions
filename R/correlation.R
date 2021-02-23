#' correlation Function
#'
#' This function allows you to calculate correlation between numerical data in any year.
#' @param Year WHich specific year do you want to look into?
#' @keywords NBA
#' @export
#' @examples
#' highest_score()

correlation <- function(Year){
  data('Seasons_Stats_NBA')
  data = dplyr::filter(Seasons_Stats_NBA, Year==Year)
  data = purrr::keep(data, is.numeric)
  cor(data)
}
