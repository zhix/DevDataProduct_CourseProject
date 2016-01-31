## ui.R controls appearance/all styles elements
## alternatively, an index.html file can be used 
## instead of ui.R

library(shiny)
# 
# shinyUI(pageWithSidebar(
#   headerPanel("Header Panel"),
#   sidebarPanel(
#     h1('sidebar'),
#     numericInput('id1', 'Numeric input, labeled id1',
#                  0, min=0, max=10, step=1),
# #    submitButton('Submit'),
#     sliderInput('mu', "Guess at mean", value=70, 
#                 min=62, max=74, step=0.05), 
#     checkboxGroupInput('id2', 'Checkme!',
#                        c("Value 1" = "1",
#                          "Value 2" = "2",
#                          "Value 3" = "3")),
#     dateInput('date',"Date")),
#   mainPanel(
#     plotOutput('newHist'),
#     h3('Main Panel - showing you out puts'),
#     code('some code'),
#     p('some ordinary text'),
#     h4("'you've entered'"),
#     verbatimTextOutput("oid1"),
#     verbatimTextOutput("oid2"),
#     verbatimTextOutput("oid3"),
#     verbatimTextOutput("odate")
#     )
#   
#   ))
# 
# 


shinyUI(pageWithSidebar(  
  headerPanel("Air Pollution Index (API) Reading at Banting, Malaysia"),  
  sidebarPanel(    
    h2('Pick an Option below'),
    checkboxGroupInput('id_pollutant', 'Pick Pollutants',
                           c("*" = 1,
                             "0" = 2,
                             "a" = 3,
                             "c" = 4)),
    selectInput('id_year', 
                label = 'Select interested year', 
                choices = seq(2013, 2015, by = 1))    
    
    ), 
  mainPanel(    
    h4("The haze phenomenon has persistently return to Malaysia and Singapore on an annual basis 
    over the past 3 decades. Here we analyse the Air Pollution Index (API) readings collected
    from 2013 to 2015 at the town Banting (near capital Kuala Lumpur) to examine the haze situation."),
    
    tags$div(class="header", checked=NA,
             tags$p("The original unprocessed data can be found here:"),
             tags$a(href="http://data.gov.my/view.php?view=280", "The Govenment of Malaysia's Open Data Official Portal")),
             
    h4("Here is a sample of the data"),
    verbatimTextOutput("head"),
    
    h4("You have selected the following Pollutant(s)"),
    verbatimTextOutput("pollute"),
        
    h4("Here are the API values as requested:"),
    plotOutput('Graphing')

  )
))
