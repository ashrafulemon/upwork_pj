# Create example data frame
data <- data.frame(
  col1 = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
  col2 = c("K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"),
  col3 = c("U", "V", "W", "X", "Y", "Z", "AA", "AB", "AC", "AD"),
  col4 = c("AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN")
)

# Concatenate items across columns for each row

data$concat<- paste(data$col1, data$col2, data$col3, data$col4,sep="_") # that is nice ok
data$concat1<- paste(data[[1]], data[[2]],sep="_") # that is nice ok
concat1<- paste(data[[1]], data[[2]],sep="_") # that is nice ok


data$concatenated <- apply(data, 1, paste, collapse = "_")




# Example existing data frame
existing_data <- data.frame(
  col1 = c(1, 2, 3),
  col2 = c("A", "B", "C")
)

# New column data
new_column <- c("X", "Y", "Z")

# Add new column to the first position
existing_data <- data.frame(NewColumn = new_column, existing_data)

existing_data <- cbind(NewColumn11 = new_column, existing_data)

# Show updated data frame
print(existing_data)





