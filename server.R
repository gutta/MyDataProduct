library(shiny)
#Medicare 2011 data set (obtained from https://data.cms.gov/, Top 100 Diagnosis )
#Cleaned data was grouped by provider ID and the ratio of pay/billed was computed.
#As this processing takes a significant amount of time, it is not practical to impliment within server.R 
 



# Define a server for the Shiny app
shinyServer(function(input, output) {  
  # Display only the selected state
  output$table <- renderDataTable({
    load('ll.rda')
    ll1<-ll[ll$State==input$st,]
    ll1
  })
  
})