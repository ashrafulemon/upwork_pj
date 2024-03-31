
#install.packages("readxl")
#install.packages("openxlsx")
library(readxl)
library(openxlsx)
getwd()


# jinu given maximo data
df1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx",
                  startRow=5, colNames=T, detectDates=T, )          # all col but without marge blank col
#head(df1)
#tail(df1)


# {
df1_1= df1[1:(nrow(df1)-1),]

# my edited maximo data
df1_2 = read.xlsx("I:\\r project up\\demo r prg\\3_maxi_em_10.xlsx",
                sheet=1, colNames=T, detectDates = T)
# df1_1 == df1_2 == needed sheet 1
#  }



#df1 correction
df1[27] = as.Date( as.integer( unlist(df1[27])), origin = "1899-12-30")  # date+ Time>> date

#df1[34] [ df1[34]==""| is.na(df1[34])] <-  df1[27] [ df1[34]==""|is.na(df1[34])] 
df1[34] [is.na(df1[34])] <-  df1[27] [is.na(df1[34])]                 # if vandor date EEE==NA >> vandor date

#df_final
df1_f= df1[1:(nrow(df1)-1), c(4,6:10,15:17,11,12,19:23,26,29:37)]     # need col and row in jinu maxibo or df1

df1_f[5]= as.numeric(unlist(df1_f[5]))
df1_f[10]= as.numeric(unlist(df1_f[10]))
df1_f[11]= as.numeric(unlist(df1_f[11]))

# df1_f== needed sheet2 my edit

write.xlsx(df1_f,"I:\\r project up\\demo r prg\\r_maximo_needed_1.xlsx",asTable = T,colNames=T)

 









#df2_1 = df1_1 == df1_2           # sheet 1
df2= read.xlsx("I:\\r project up\\demo r prg\\5_need_em_10.xlsx",sheet=1,colNames=T,
               detectDates = T)
df2_1= df2[-c(13,14,26,33)]
#df2_1[40] = as.Date( as.integer( unlist(df2_1[40])), origin = "1899-12-30")

# Set JAVA_HOME environment variable

#df2_f= df1_f                     # sheet 2
df2_f= read.xlsx("I:\\r project up\\demo r prg\\5_need_em_10.xlsx",sheet=2,colNames=T,
               detectDates = F)

df2_f[4]= as.character(unlist(df2_f[4]))
df2_f[21]= as.character(unlist(df2_f[21]))
df2_f[22]= as.character(unlist(df2_f[22]))
df2_f[[4]]= gsub("&amp;", "&", df2_f[[4]])
df2_f[[4]]= gsub("&gt;", ">", df2_f[[4]])
df2_f[[21]]= gsub("&amp;", "&", df2_f[[21]])
df2_f[[22]]= gsub("&amp;", "&", df2_f[[22]])


df2_f[7] = as.Date( as.integer( unlist(df2_f[7])), origin = "1899-12-30")
df2_f[8] = as.Date( as.integer( unlist(df2_f[8])), origin = "1899-12-30")
df2_f[14] = as.Date( as.integer( unlist(df2_f[14])), origin = "1899-12-30")
df2_f[15] = as.Date( as.integer( unlist(df2_f[15])), origin = "1899-12-30")
df2_f[18] = as.Date( as.integer( unlist(df2_f[18])), origin = "1899-12-30")
df2_f[20] = as.Date( as.integer( unlist(df2_f[20])), origin = "1899-12-30")
df2_f[23] = as.Date( as.integer( unlist(df2_f[23])), origin = "1899-12-30")
df2_f[25] = as.Date( as.integer( unlist(df2_f[25])), origin = "1899-12-30")
#df2_f[23] = as.Date(unlist(df2_f[23]), origin = "1899-12-30")



# df1_1 == df1_2 == needed sheet 1
differences1 <- df1_1 != df1_2   # NA+___= NA golo count check kore
differences1
a=colSums(differences1==T, na.rm=T)
sum(a)
a=colSums(differences1==F, na.rm=T)
sum(a)

# Print the indices or values where differences occur
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
are_identical <- identical(df1_1,df1_2)  # NA golo count check kore

if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}




# df1_1 == df1_2 == needed sheet 1
#df2_1 = df1_1 == df1_2           # sheet 1
differences2 <- df2_1 != df1_2
differences2
a=colSums(differences2==T, na.rm=T)
a
a=colSums(differences2==F, na.rm=T)
sum(a)
# Print the indices or values where differences occur
if (any(differences2)) {
  cat("Differences found at the following indices:\n")
  print(which(differences2, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

if (any(!is.na(differences2) & differences2)) {
  cat("Differences found at the following indices:\n")
  print(which(!is.na(differences2) & differences2, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

are_identical <- identical(df2_1, df1_2) #why wrong
if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}



#df2_f= df1_f 

differences3 <- df2_f != df1_f
differences3
a=colSums(differences3==T, na.rm=T)
sum(a)
a
a=colSums(differences3==F, na.rm=T)
sum(a)

# Print the indices or values where differences occur
if (any(differences3)) {
  cat("Differences found at the following indices:\n")
  print(which(differences3, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

if (any(!is.na(differences3) & differences3)) {
  cat("Differences found at the following indices:\n")
  print(which(!is.na(differences3) & differences3, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

are_identical <- identical(df2_f ,df1_f)

if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}





















