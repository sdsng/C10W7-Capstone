suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

shinyUI(navbarPage("Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: Sandy Sng</strong>"),
                            br(),
                            HTML("<strong>Date: 13 June 2018</strong>"),
                            br(),
                            img(src = "./headers.png"),
                            # Sidebar
                            sidebarLayout(
                                  sidebarPanel(
                                            helpText("Enter a word or partially complete sentence to begin the next word prediction"),
                                            textInput("inputString", "Please enter your text here",value = ""),
                                            br(),
                                            br(),
                                            br(),
                                            br()
                                    ),
                                    mainPanel(
                                            h2("Predicted Next Word"),
                                            verbatimTextOutput("prediction"),
                                            strong("Sentence Input:"),
                                            tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                            textOutput('text1'),
                                            br(),
                                            strong("Note:"),
                                            tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                            textOutput('text2')
                                    )
                            )
                            
                   )
                   )
)