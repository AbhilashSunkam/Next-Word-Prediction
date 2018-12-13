library(shiny)
library(DT)

shinyUI(fluidPage(
  tags$head(
    tags$style(HTML("
                    @import url('//fonts.googleapis.com/css?family=Catamaran|Cabin:400,700');"
    ))
    ),
  
  titlePanel(h1("Next Word Predictor", align = "center",
                style = "font-family: 'Lobster', cursive;
                font-weight: 500; line-height: 1.1; 
                color: #4d3a7d; font-weight: bold")
  ),
  tags$header(src='image2.png', align = "right"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Enter your text here", align = "center", style="font-family:'calibri'"),
      tags$style("body{background-color:#ffffff; color:brown;  }"),
      
      tags$textarea(id = 'str1', placeholder = 'Type here', rows = 5, class='form-control', 
                    style="box-shadow:-10px 2px 5px #75c99d; border-radius:10px"),
      tags$head(src='img1.png', align = "center")
      
    ),
    
    mainPanel(
      
      
      div(DT::dataTableOutput("table1"), style = "font-size: 110%; width: 100%; background: rgba(200,231,103,1); 
          color: black; border: 1px solid black; table-layout: fixed; width:500px; border-radius: 7px"  )
      )
    ),
  ## Footer
  hr(),
  
  
  tags$span(style="color:Green", 
            
            tags$footer(
              tags$p("\n"),
              tags$p("Developed By", style="font-size: large; color: brown"),
              tags$p("\n"),
              tags$p("Abhilash, Lokesh, Vishal", style="font-size: large;font-family: 'Lobster', cursive; color: #4d3a7d;"),
              tags$p( " \n  "),
              align = "Center")
  )
  
))