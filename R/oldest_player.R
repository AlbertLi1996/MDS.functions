#' Oldest Player Function
#'
#' This function allows you to know the oldest NBA player in any year.
#' @param Year Which specific year do you want to look into?
#' @keywords NBA
#' @export
#' @examples
#' highest_score()

oldest_player <- function(Year){
  data('Seasons_Stats_NBA')
  data = dplyr::filter(Seasons_Stats_NBA, Year==Year)
  data = dplyr::arrange(data, desc(Age))
  data$Player[1]
}
