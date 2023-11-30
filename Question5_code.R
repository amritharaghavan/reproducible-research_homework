data<- Cui_etal2014
data
summary(data)

# Applying a log transformation to fit a linear model to  the data
(data$log_transformed_volume <- log(data$"Virion volume (nm×nm×nm)"))+
(data$log_transformed_genomelength<- log(data$`Genome length (kb)`))
data
#This creates two new columns in the data- log transformed virion volume, and log transformed genome length

#This creates the graph shown in the readme document, and saves it as a .png file
graph<-ggplot(data, aes(x=log_transformed_genomelength, y=log_transformed_volume))+
  geom_point()+
  geom_smooth(method=lm,linewidth=0.5)+
  labs(y="log [Virion volume (nm3)]", x="log [Genome length (kb)]")+
  theme_bw()
graph  

install.packages("ragg")
library(ragg)

#Saving the objects as high resolution .png files, in the 'figures' folder
agg_png("question5_figure.png",  width = 4000, height = 3000, units = "px", res = 600)+
  print(graph)
dev.off()

#Finding the estimated volume of a 300kb virus
# Fit a linear model
model <- lm(log_transformed_volume ~ log_transformed_genomelength, data = data)

# Specify the x value for which you want to find the predicted y value
given_x <- log(300)

# Predict the y value
predicted_y <- predict(model, newdata = data.frame(log_transformed_genomelength = given_x))

# Print the predicted y value
print(predicted_y)
#But the linear model is log-transformed: so we need the exponent
exp(predicted_y)

