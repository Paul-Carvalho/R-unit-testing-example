# app.R

library(shiny)

ui <- fluidPage(
  titlePanel("Identity Matrix Generator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("n", "Matrix Size (n):", value = 3, min = 1, step = 1)
    ),

    mainPanel(
      h4("Identity Matrix"),
      tableOutput("matrix_output")
    )
  )
)

# Define Server
server <- function(input, output, session) {

  # Reactive value to store the matrix
  identity_matrix_rv <- reactiveVal()

  # Update the matrix when input$n changes
  observeEvent(input$n, {
    n <- input$n
    if (is.numeric(n) && n > 0 && n == floor(n)) {
      identity_matrix_rv(identity_matrix(n))
    } else {
      identity_matrix_rv(NULL)
    }

    # exportTestValues("identity_matrix" = identity_matrix_rv())
  })

  # Display matrix
  output$matrix_output <- renderTable({
    identity_matrix_rv()
  }, rownames = TRUE)
}

shinyApp(ui, server)
