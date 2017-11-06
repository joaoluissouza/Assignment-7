#2
#Just making a comment for the ex 2 because I do not know what analysis we are going to run.

#3
read.csv("./data/houseelf_earlength_dna_data.csv")

#4
read.csv("./data/houseelf_earlength_dna_data_1.csv")

#5
#remote was added
 
#6.1
library(stringr)
GC_content <- function(sequence){
c_count <- str_count(sequence,"c")
g_count <- str_count(sequence,"g")
C_count <- str_count(sequence,"C")
G_count <- str_count(sequence,"G")
GgCc_content <- ((c_count+C_count+g_count+G_count)/str_length(sequence))*100
return(GgCc_content)
}


get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
