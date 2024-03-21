#for manual data

a= c(1,3,4,6,8,9,10)
b= c(1,2,5,4,4,7,5)
d= c(1,2,5,4,4,7,5)

union(a,b)
intersect(a,b)
a-b # regular substraction
setdiff(a,b)
setdiff(b,a)

differences1 <- a!= b
differences1
# Print the indices or values where differences occur
if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

differences1 <- b!= a
differences1
# Print the indices or values where differences occur
if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

differences1 <- b!= d
differences1
# Print the indices or values where differences occur
if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}


# good one 

set1 <- data.frame(
  Name = c("John", "", "Bob",""),
  Age = c(25, NA, 30,NA),
  Score = c(90, 85, NA,NA),
  Score1 = c(90, NA, NA,NA)
)

set2 <- data.frame(
  Name = c("Alice", "Charlie", "",NA),
  Age = c(30, 22, NA,NA),
  Score = c(95, 78, NA,NA),
  Score1 = c(91, 100, 200,NA)
)
set3 <- data.frame(
  Name = c("Alice", "Charlie", "",NA),
  Age = c(30, 22, NA,NA),
  Score = c(95, 78, NA,NA),
  Score1 = c(91, 100, 200,NA)
)


differences1 <- set2!= set3  #all false
differences1
differences1 <- set1!= set2 # all true
differences1
# Print the indices or values where differences occur
# output a atlieat one TRUE Needed
# if all false then give error 

if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

if (any(!is.na(differences1) & differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(!is.na(differences1) & differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}





# for table data

df1= read.xlsx("I:\\r project up\\demo r prg\\a.xlsx",
               startRow=1, colNames=T, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)
df2= read.xlsx("I:\\r project up\\demo r prg\\b.xlsx",
               startRow=1, colNames=T, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)
df3= read.xlsx("I:\\r project up\\demo r prg\\a.xlsx",
               startRow=1, colNames=T, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)
df4= read.xlsx("I:\\r project up\\demo r prg\\b.xlsx",
               startRow=1, colNames=T, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)

differences1 <- df1!= df2  #true false >> give well
differences1
differences1 <- df1!= df3 # all false >> give well
differences1
differences1 <- df2!= df4 # false NA >> give first error, but 2nd role well
differences1

# Print the indices or values where differences occur
# output a atlieat one TRUE Needed
# if all false then give error 

if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

if (any(!is.na(differences1) & differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(!is.na(differences1) & differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

#another way
are_identical <- identical(df1,df2)
if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}

are_identical <- identical(df1,df3)
if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}


are_identical <- identical(df2,df4)
if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}






d=union(df1,df2)
e=intersect(df1,df2)
g= setdiff(df1,df2)
g


