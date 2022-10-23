library(shiny)
library(shinythemes)
library(shinyWidgets)
library(DT)
library(ggplot2)
library(colourpicker)

# in shiny server, please run the next code
#library(dbplyr,lib.loc = "/home/lixiang/miniconda3/envs/Rpackages/lib/R/library/")


shinyUI(fluidPage(
  theme = shinytheme("cerulean"),
  titlePanel("1288XX: 一二布布的科研工具箱"),
  navbarPage(
    "🐻🐻出发~",
    # home page
    #source("main/ui/ui.home.R", local = TRUE, encoding = "UTF-8")$value,
    # go page
    source("main/ui/ui.qpcr.R", local = TRUE, encoding = "UTF-8")$value
  )
))
