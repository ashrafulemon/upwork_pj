getwd()
#install.packages("readxl")
#install.packages("openxlsx")
library(readxl)
library(openxlsx)


df1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx") # jinu file 
df1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx", colNames=T)  #defult
df1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx", colNames=FALSE)
df1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx",
               sheet=1,startRow=5,colNames=FALSE,detectDates = T)


df2= read.xlsx("I:\\r project up\\demo r prg\\3_maxi_em_10.xlsx",colNames=T) # my manual edited file
df2= read.xlsx("I:\\r project up\\demo r prg\\3_maxi_em_10.xlsx",colNames=FALSE)
df2= read.xlsx("I:\\r project up\\demo r prg\\3_maxi_em_10.xlsx",sheet=1,colNames=FALSE,
               detectDates = T)


df1_a1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx",
               startRow=5, colNames=FALSE, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)
                                                       # all col but without marge blank col

df1_af1= df1_a1[,c(4,6:10,15:17,11,12,19:23,26,29:37)]       # my format col with last NA row



df1_c1= read.xlsx("I:\\r project up\\demo r prg\\1_maxi_jn_10.xlsx",
               startRow=5, colNames=FALSE, detectDates = T,
               col=c(4,6:12,17:19,21:25,29,32,34:41)) # needed col but use cell col with count marge
                                                      # main data theke nile exact col call korbo from excel
                                                      # akhne col serial format thik kora jai na

df1_cf1= df1_c1[,c(1:6,9:11,7,8,12:26)]                      # my format col

