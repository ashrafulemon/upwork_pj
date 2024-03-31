
library(dplyr)
# Example data frames
df1 <- data.frame(ID = c(1, 3, 5, 4,7),
                  Name = c("Alice", "Bob", "Charlie", "David","AAa"))

df2 <- data.frame(ID = c(1, 2, 3, 7),
                  Age = c(25, 30, 35, 40))

# Perform VLOOKUP-like operation
df1
df2
result <- left_join(df1, df2, by = "ID") #ok
result
result <- right_join(df1, df2, by = "ID") #not good
result
result <- inner_join(df1, df2, by = "ID") #not use
result
result <- full_join(df1, df2, by = "ID")
result

df1$Age <- df2$Age[match(df1$ID, df2$ID)] # match return element number

result <- merge(df1, df2, by.x = "ID", by.y = "ID", all.x = TRUE) # but sort id
result
# Show result
print(result)



# Example data frames
df1 <- data.frame(ID = c(1, 6, 4, 5,10,11,11,5),
                  Name = c("Alice", "Bob", "Charlie", "David","qww","Aa","bb","cc"))

df2 <- data.frame(ID = c(1, 13, 3, 5,4,11,2,9,10),
                  Age = c(25, 30,NA, 35, 40,NA,22,87,78),
                  Name = c("Alice", "Bob", "Charlie", "David","qww","Aa","bb",NA,"cc"),
                  Dept = c("HR", "Finance","swre","fddf", "IT","jj",NA,NA,"dddd"))


result <- merge(df1, df2, by = "ID") #sort
result
result <- merge(df1, df2, by = "ID", all.x = TRUE) #sort
result
result <- merge(df1, df2, by = "ID", all.x = TRUE,all.y = F,sort=F) #sort
result
result <- merge(df1, df2, by = "ID", all.x = TRUE,all.y = F,sort=F,suffixes = c(".x",".y")) #sort
result
result <- merge(df1, df2,  by = intersect(names(df1), names(df2)), all.x = TRUE,all.y = F,sort=F) #sort
result
result <- merge(df1, df2, by = "ID", all.x = TRUE,all.y = F,sort=F) #sort
result
result <- merge(df1, df2, by = "ID", all.y = F) #sort
result




result <- left_join(df1, df2, by = "ID")
result

# Perform VLOOKUP-like operation based on ID and Dept columns
result <- merge(df1, df2, by = c("ID", "Dept"), all.x = TRUE) #sort
result
result <- left_join(df1, df2, by = c("ID", "Dept"))
result





unique_df <- unique(result)
unique_df 

aa= result[,c(1,3)]
aa= result[c(1,3)]
aa

result1 <- result[!duplicated(result$ID), ] 
result1 <- result[!duplicated(result$ID,fromLast= T), ] 
result1

library(dplyr)
data1 <- result %>% distinct(ID, .keep_all = TRUE)
data1

