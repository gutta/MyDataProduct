library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Over Billing Mulltiple Based on Medicare Payments - Inpatient Care"),
    titlePanel("First column - dollars billed per paid dollar"),
    p(a("More information here",href="https://github.com/gutta/MyDataProduct", target="_blank")), 
    # Inputs
    fluidRow(
             selectInput("st", 
                         "Select State:", selected = "CA",
                        c("AL","AK", "AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"))
         
    ),
   
    #  Table output.
    
      dataTableOutput(outputId="table"),
    titlePanel("How Do These Numbers Correlate to Bankruptcy in Non-Medicare Population?...")   
  )  
)
