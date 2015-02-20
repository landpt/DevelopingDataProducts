library("devtools")
library("shiny")
library("shinyapps")
library("caret")
library("RcppEigen")
library("nloptr")
library("lattice")
library("ggplot2")
library("randomForest")
library("e1071")

fx <- function(f1,f2,f3,f4) {
        
        data <- iris
        
        trainData <- data[,1:ncol(data)-1]
        trainLabels <- data[,ncol(data)]
        
        train_control <- trainControl(method="LOOCV")
        
        model <- train(trainData , method="rf" , trainLabels , trControl = trainControl(method="cv", number=10))
        
        testData <- data[1,1:ncol(data)-1]
        
        testData[1] <- f1
        testData[2] <- f2
        testData[3] <- f3
        testData[4] <- f4
        
        
        fx <- predict(model,testData)     
        
        return(fx)
}



shinyServer(
        function(input, output) {
                output$type <- renderPrint(fx(input$slider1, input$slider2, input$slider3, input$slider4))
        }
)


