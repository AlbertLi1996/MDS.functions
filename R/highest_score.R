#' Highest Score Function
#'
#' This function allows you to know the highest score of one NBA player in any year.
#' @param Year WHich specific year do you want to look into?
#' @keywords NBA
#' @export
#' @examples
#' highest_score()

highest_score <- function(Year){
  data('Seasons_Stats_NBA')
  data = dplyr::filter(Seasons_Stats_NBA, Year==Year)
  max(data$PTS)
}

