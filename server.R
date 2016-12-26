#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram

mysexquot<- function(int, body, humor, money){
        
        sumvar=0.25^2*15^2+ 0.25^2*15^2 +0.25^2*15^2+0.25^2*15^2
        summe<-int*0.25 + body*0.25 + humor*0.25 + money*0.25
        result<-100+(summe-100)*15/sqrt(sumvar) 
}

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R

    xs   <- seq(30,170,length.out=1000)
    y   <- dnorm(xs,mean=100, sd=15)
    
    result <- mysexquot(input$intell,input$body,input$humor,input$money)
    output$sexq<-renderText({
            result
    })
    plot(xs,y, type="l", lwd=1)
    abline(v=result,col='red')
    
  })
})
