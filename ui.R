
shinyUI(fluidPage(
        
        mainPanel(
                h1("Introduction"),
                h5("In this work, I wanted to implement an interactive data classification using shinyapps."),
                h5("For that purpose, I'll be using the recognized Iris database, which is perhaps the best known database to be found in the pattern recognition literature."),
                h5("Fisher's paper is a classic in the field and is referenced frequently to this day. The data set contains 3 classes of 50 instances each, where each class refers to a type of iris plant."),
                h5("The main task is to try to identify the type of the iris plant (class) when taking into account four different attributes: sepal length in cm, sepal width in cm, petal length in cm and petal width in cm."),
                h5("For the purpose of the classification, I decided to implement Random Forest technique as it achieved Kappa statistic 1 when using cross-validation Leave-One-Out. As such I think it's exceptionally good for this project."),
                hr(),
                h1("Instructions"),
                h5("User needs to define four different attributes, then an assigned estimated type of iris plant will be shown below."),
                h5("For instance, if we have some plant that has 5.6 cm of sepal length in cm, 2.6 cm of sepal width, 4.7 cm of petal length and 1.4 cm petal width, this interactive app will estimate that we're have a versicolor plant."),
                h5("Please wait a few seconds until the final classification is settled."),
                column(6,
                       
                       # Copy the line below to make a slider bar 
                       sliderInput("slider1", label = h3("Sepal length in cm"), min = 0, 
                                   max = 10, value = 5, step = 0.1)
                ),
                column(6,
                       
                       # Copy the line below to make a slider bar 
                       sliderInput("slider2", label = h3("Sepal width in cm"), min = 0, 
                                   max = 10, value = 5, step = 0.1)
                ),
                column(6,
                       
                       # Copy the line below to make a slider bar 
                       sliderInput("slider3", label = h3("Petal length in cm"), min = 0, 
                                   max = 10, value = 5, step = 0.1)
                ),
                column(6,
                       
                       # Copy the line below to make a slider bar 
                       sliderInput("slider4", label = h3("Petal width in cm"), min = 0, 
                                   max = 10, value = 5, step = 0.1)
                ),
                hr(),
                h2("Estimated type of the iris plant"),
                verbatimTextOutput("type")
        )
))