## controls functions

library(UsingR)
library(ggplot2)


shinyServer(  
  function(input, output) {    
    file <- 'C:/Users/User/Dropbox/Personal/Coursera/DataScience/9_DevelopingDataProducts/CourseProject/API_Banting.csv'
    
    ## Load data from CSV file
    mydata <- read.csv(file)
    mydata[,3] <- as.Date(mydata[,3], "%Y-%m-%d")
    temp.map <- c("*"=1, "0"=2, "a"=3, "c"=4)
    mydata$pollute <- temp.map[as.character(mydata$Pollutant)]
    mydata$year <- as.numeric(format(mydata$Date, "%Y"))
    
    
    
    output$Graphing <- renderPlot({      
      input_pollute <- input$id_pollutant
      
      mydata2 <- subset(mydata, pollute == input$id_pollutant)
      mydata2 <- subset(mydata2, year == as.numeric(input$id_year))
      plotx <- ggplot(mydata2, aes(x=Date,y=API)) + 
                  geom_point(col="black") + 
                  labs(title=paste('API Reading at Banting in Year',input$id_year, 'for the above chosen Pollutant(s)'),
                       x='Date',
                       y='API')+
                  ylim(0,350)
        
      print(plotx)
    })
    
    output$pollute <- renderPrint({names(temp.map)[as.integer(input$id_pollutant)]})
    output$head <- renderPrint(head(mydata))
    output$year <- renderPrint(input$id_year)
    
    #output$pollute <- renderPrint({input$id_pollutant})
  }
)
