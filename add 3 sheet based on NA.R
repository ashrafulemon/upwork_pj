# Create sample data frames (replace these with your actual data)
library(dplyr)
sheet1 <- data.frame(ID = c(1, 2, 3),
                     Value = c(NA, NA, "C"))
sheet2 <- data.frame(ID = c(1, 2, 3),
                     Value = c(NA, "B", NA))
sheet3 <- data.frame(ID = c(1, 2, 3),
                     Value = c("X", "Y", "Z"))

# Merge the sheets, prioritizing non-blank values
merged_data <- sheet1 %>%
  coalesce(sheet2) %>%
  coalesce(sheet3)

# Print the merged data
print(merged_data)


# Read the three Excel sheets
sheet1 <- readxl::read_excel("file.xlsx", sheet = 1)
sheet2 <- readxl::read_excel("file.xlsx", sheet = 2)
sheet3 <- readxl::read_excel("file.xlsx", sheet = 3)

sheet1 <- data.frame(ID = c(1, 2, 3),
                     Value = c(NA, NA, "C"))
sheet2 <- data.frame(ID = c(1, 2, 3),
                     Value = c(NA, "B", NA))
sheet3 <- data.frame(ID = c(1, 2, 3),
                     Value = c("X", "Y", "Z"))



# Replace blank cells with NA
sheet1[sheet1 == ""] <- NA
sheet2[sheet2 == ""] <- NA
sheet3[sheet3 == ""] <- NA

# Merge the sheets, prioritizing non-blank or non-NA values
merged_data <- sheet1
merged_data[is.na(merged_data)] <- sheet2[is.na(merged_data)]
merged_data[is.na(merged_data)] <- sheet3[is.na(merged_data)]

# Write the merged data to a new Excel file

# write_xlsx(merged_data, "merged_data.xlsx")
