Virus_data<- Cui_etal2014
Virus_data
summary(Virus_data)

# Applying a log transformation to fit a linear model to  the data
(Virus_data$log_transformed_volume <- log(Virus_data$"Virion volume (nm×nm×nm)"))+
(Virus_data$log_transformed_genomelength<- log(Virus_data$`Genome length (kb)`))

#This creates two new columns in the data- log transformed virion volume, and log transformed genome length

#Creating a linear model with the log-transformed data- logV= log(beta)+ alpha.log(L)
#We can estimate beta by taking the exponent of the intercept of the model, and we can estimate alpha by taking the slope of the model
linear_model <- lm(log_transformed_volume ~ log_transformed_genomelength, data = Virus_data)
summary(linear_model)

#This creates the graph shown in the readme document, and saves it as a .png file
graph<-ggplot(Virus_data, aes(x=log_transformed_genomelength, y=log_transformed_volume))+
  geom_point()+
  geom_smooth(method=lm,linewidth=0.5)+
  labs(y="log [Virion volume (nm3)]", x="log [Genome length (kb)]")+
  theme_bw()
graph  

install.packages("ragg")
library(ragg)

#Saving the object as a high resolution .png file
agg_png("question5_figure.png",  width = 4000, height = 3000, units = "px", res = 600)+
  print(graph)
dev.off()

#Finding the estimated volume of a 300kb virus
# Specify the x value for which you want to find the predicted y value
given_x <- log(300)

# Predict the y value
predicted_y <- predict(linear_model, newdata = data.frame(log_transformed_genomelength = given_x))

# Print the predicted y value
print(predicted_y)
#But the linear model is log-transformed: so we need the exponent
exp(predicted_y)

