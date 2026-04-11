dataset<- read.table(file="clipboard", header = TRUE, sep = "\t",dec=',')
dataset

cleaned_dataset <- na.omit(dataset)
cleaned_dataset
complete_cases <- complete.cases(dataset)
complete_cases
cleaned_dataset <- dataset[complete_cases, ]
cleaned_dataset

z_scores <- scale(dataset$cholesterol)
z_scores

outlier_threshold <- 3
outlier_threshold

outliers <- which(abs(z_scores) > outlier_threshold)
outliers

cleaned_dataset <- dataset[-outliers, ]
cleaned_dataset

colnames(dataset)


age <- dataset$age
gender <- dataset$gender
alco <- dataset$alco
cardio <- dataset$cardio
cholesterol <- dataset$cholesterol

gender <- as.factor(gender)
levels(gender) <- c("Male","Female")
alco<-as.factor(alco)
levels(alco) <- c("Methane", "Ethane", "Propane", "Butane", "Pentane")
cardio <- as.factor(cardio)
levels(cardio) <- c("running","Cycling","Dance","Rowing","jumping")
cholesterol <- as.factor(cholesterol)
levels  <-c("normal","high")

height<- dataset$height
weight<- dataset$weigh
ap_hi<- dataset$ap_hi
ap_lo<- dataset$ap_lo

height <- as.double(height)
weight <- as.double(weight)
age <- as.double(age)
ap_hi<- as.double(ap_hi)
ap_lo <- as.double(ap_lo)

median(height)

dotchart(table(cardio),col=c("orange","green","blue","yellow","black"),pch=15,main=paste("Dot chart of counts of alcohol"))

col <- c("gray","orangered","lightyellow","red")
barplot(table(cardio),col=col)

col <- c("yellow","yellow2","sandybrown","orange","darkolivegreen","green","olivedrab2","green4")
barplot(sort(table(alco),TRUE),col=col)

nbh <- table(gender)[1]
nbf <- table(gender)[2]
males <- table(alco[gender=="Male"])/nbh
females <- table(alco[gender=="Female"])/nbf
barplot(cbind(males,females),main="Stacked bar chart for variable alcohol",col= c("pink","red","blue","purple","yellow"))


classes <- hist(age,right=TRUE,freq=FALSE,ylab="Density",main="Histogram of variable age",col="lightblue")

classes <- hist(height,right=TRUE,freq=FALSE,main=paste("Histogram and frequency polygon of variable height"))
middles <- classes$mid ; mlon <- length(middles)
densities <- classes$density
segments(middles[1:mlon-1],densities[1: mlon-1],middles[2:mlon],densities[2:mlon],col=
rgb(0.4196078,0.4196078,0.1372549,0.9),lwd=3)

alco_counts <- table(alco)
pie(alco_counts, main = "calcohol Distribution", col = rainbow(length(alco_counts)), cex.main = 0.8)


plot(weight/length(unique(weight)),ylab="",col="green",lwd=5,main="Bar chart for variable weight")

boxplot(height,col="orange",main="Boxplot for variable height")


classes <- hist(age, right = TRUE, freq = FALSE, main = "Histogram of variable age", ylab = "Density", breaks = "FD")



