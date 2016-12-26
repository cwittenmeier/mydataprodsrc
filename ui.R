#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Sexy Meter"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            sliderInput("intell",
                        "Intelligence:",
                        min = 70,
                        max = 130,
                        value = 100)
            ,
            sliderInput("body",
                        "Body:",
                        min = 70,
                        max = 130,
                        value = 100)
            ,
            sliderInput("humor",
                        "Humor:",
                        min = 70,
                        max = 130,
                        value = 100)
            ,
            sliderInput("money",
                        "Money:",
                        min = 70,
                        max = 130,
                        value = 100)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       h3("Your Sexiness-Quotient:"),
       textOutput("sexq"),
       h5("Instructions:First step is to estimate your qualities on a scale from 70 to 130 
       by using the sliders.
       Assume, that the distribution of these qualities in the manhood is 
        normal distributed with mean 100 and a standarddeviation of 15 and that these 
        qualities are independent from each other.
       The result on the right side is your Sexiness-Quotient that is also normal 
        distributed with mean 100 and standarddeviation 15.")
       
    )
  )
))
