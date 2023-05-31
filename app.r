library('shiny')
library('pacman')

ui <- fluidPage(
  
  titlePanel("title panel"),
  
#Added a collapsible property to the Navigation Bar for ease of use for mobile users

  navbarPage("My application", inverse = TRUE, collapsible = TRUE,
             tabPanel("Component 1"),
             tabPanel("Component 2"),
             tabPanel("Component 3"),
             navbarMenu("More",
              tabPanel("Sub-Component A"),
              tabPanel("Sub-Component B")
             ),
             
  
  sidebarLayout(position = "right",
    sidebarPanel("sidebar panel"),
    mainPanel("main panel",
    h1("First level title", align = "left"),
    h2("Second level title", align = "center"),
    h3("Third level title", align = "right"),
    h4("Fourth level title"),
    h5("Fifth level title"),
    h6("Sixth level title")
    )
  )
  
  
)
)



server <- function(input, output) {
  
  
}

shinyApp(ui = ui, server = server)
