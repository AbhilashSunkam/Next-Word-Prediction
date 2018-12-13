library(shiny)
library(DT)

load("Rdata/DF_unigram.RData",envir=.GlobalEnv)
load("Rdata/DF_bigram.RData",envir=.GlobalEnv)
load("Rdata/DF_trigram.RData",envir=.GlobalEnv)
load("Rdata/DF_quadgram.RData", envir=.GlobalEnv)

source("Clean_TextString.R")
source("Word_prediction_R.R")

shinyServer(function(input, output){
  
  strs <- reactive({
    
    Word_prediction(input$str1)
    
    
  })
  output$table1 <- DT::renderDataTable(strs())
  
})