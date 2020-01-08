#' Plots the usage of specific words across the three debates.
#'
#' Generates a facet wrap of plots, one for each of the words supplied by the parameter vector.
#' Each plot shows the subject word's usage for each turn of the Presidential debates as a % of all words spoken within that turn.
#' Regression lines and confidence intervals are also provided along with vertical dotted lines that mark the start of each indvidual debate.
#' To help create parameter vectors the full list of accepted words is supplied as 'word_percentage_data' and comes with this package.
#'
#' @param words A character vector of words from the 'word_percentage_data' data set.
#'
#'
#' @author Paul Hazell \email{paul.hazell@@postgrad.plymouth.ac.uk}
#' @import ggplot2
#' @import dplyr
#' @import tidytext
#' @import ggthemes
#' @import stats
#' @import utils
#' @export
#' @examples
#' words <- c("war", "china", "economy")
#' word_usage(words)
#'
word_usage <- function(words){
  data("word_percentage_data",envir=environment())
  out_df <- word_percentage_data[-(1:(nrow(word_percentage_data))),]
  counter <- 1
  while (counter <= length(words)) {
    temp <- word_percentage_data[which(word_percentage_data$word==words[counter]),]
    out_df <- rbind(out_df,temp)
    counter <- counter +1
  }

  ggplot(out_df, aes(x = turn, y = percentage, colour = word)) +
    geom_point() +
    geom_smooth(method='lm') +
    geom_vline(xintercept = 541, linetype="dotted",
               color = "grey", size=1) +
    geom_vline(xintercept = 1798, linetype="dotted",
               color = "grey", size=1) +
    labs(y = "Occurence Percentage") +
    labs(x= "Turn") +
    labs(title= "Occurence of words used in the 2012 Presidential Debates.\nExpressed on a per turn basis as a percentage of words spoken in that turn")+
    theme(plot.title = element_text(hjust = 0.5), legend.position = "none") +
    facet_wrap(~ word)
}
