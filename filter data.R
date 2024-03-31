# Example data frame
df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 35, 40, 45)
)

colnames(df)
# Filter data where Age is greater than 30
#install.packages("dplyr") #for filter()
library(dplyr)  #for filter()

filtered_data <- df[df$Age > 40, ]
filtered_data1 <- subset(df, Age > 40)
filtered_data2 <- filter(df, Age==40)
# Show filtered data
print(filtered_data)


