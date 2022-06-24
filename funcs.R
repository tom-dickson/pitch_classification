# Functions used in pitch classification project

# Function for plotting 3-dimensional pitch data given full data file and
# the name of the desired pitcher
pitch_plot<- function(frame, player){
  frame <- subset(frame, player_name == player)
  figure<- plot_ly(frame, x=~release_speed, y=~release_spin_rate, z=~spin_axis, 
                   color=~pitch_name)
  figure <- layout(figure, title = paste(player, " Pitches"))
  figure
}

# Function for implementing SVM classifier, specify the dataframe and kernel
# Returns confusion matrix
svm_ <- function(frame, ker){
  sel <- subset(frame, select=-c(...1, player_name))
  rows <- nrow(sel)
  ntest <- round(rows*.7)
  index <- sample(n, ntest)
  test_set <- sel[-index,]
  train_set <- sel[index,]
  classifier <- svm(factor(pitch_name)~., data=train_set, kernel=ker)
  predicted <- predict(classifier, test_set)
  results <- table(test_set$pitch_name, predicted)
  return(results)
}