x <- "  Some   text. "
x
trimws(x)
trimws(x, "l")
trimws(x, "r")

#new data
df= data.frame( id= c(1,2),
                name= c("asd   ","  asdafs "))
df
df1=df
df2=df
df3=df
df4=df

df1[2]
df1[2]=trimws(df1[2])             # not ok
df1

unlist(df2[2])
df2[2]=trimws(unlist(df2[2]))     #   ok
df2
 
df3[,2] = trimws(df3[,2])         #   ok
df3


df4[[2]]=trimws(df4[[2]])          #  that is ok
df4





strtrim(c("abcdef", "abcdef", "abcdef"), c(1,5,10))
