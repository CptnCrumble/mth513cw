#' Subset of the full data set that has been subject to further analysis.
#'
#' List of words that can be used as valid parameters in this packages 'word_usage_function'.
#' This data is a subset of the 'debate_data' and has been filtered to remove structural words such as 'the', 'of', 'etc'.
#'
#'
#' @format A data.frame with 12201 rows and 4 columns:
#' \describe{
#'  \item{turn}{The turn in which the subject word was spoken.}
#'  \item{word}{The word being analysed.}
#'  \item{count}{The number of times the word was used within this turn.}
#'  \item{percentage}{The count expressed as a percentage of all the words spoken within this turn.}
#' }
#'
#' @examples
#'
#' @source Plymouth University, 2019
"word_percentage_data"
