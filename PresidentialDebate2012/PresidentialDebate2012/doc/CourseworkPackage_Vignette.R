## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  fig.width=9,
  fig.height=6
)

## ----setup, echo=FALSE---------------------------------------------------
library(PresidentialDebate2012)

## ----prop_plot-----------------------------------------------------------
#testwords<-c('word1','word2',....,'wordn')
#prop_plot(testwords)

## ----prop_plot_example, echo=TRUE----------------------------------------
require(CourseworkPackage)
testwords<-c('jobs','military','china','people')
print(prop_plot(testwords))

## ----freq_plot,echo=TRUE-------------------------------------------------
freq_plot()

## ----zipf_plot-----------------------------------------------------------
zipf_plot()

