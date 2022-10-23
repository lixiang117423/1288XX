library(shiny)
library(shinythemes)
library(shinyWidgets)
library(DT)
library(ggplot2)
library(lmtest)

shinyServer(function(session, input, output){
  #source("main/server/server.home.R", local = TRUE, encoding = "UTF-8")
  source("main/server/server.qpcr.R", local = TRUE, encoding = "UTF-8")
})
