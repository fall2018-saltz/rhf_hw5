
#read in census dataset
#dfStates <- read.csv(pop_data, stringsAsFactors = FALSE)
print(pop_data)

#Remove unnecesary rows
dfStates <- dfStates[-c(1, 53),]
#Remove unnecesary columns
dfStates <- dfStates[,-c(1:4)]

#utilize colnames to change the names of columns in dfStates
cnames <- colnames(dfStates)
cnames[1] <- "stateName"
cnames[2] <- "population"
cnames[3] <- "popOver18"
cnames[4] <- "percentOver18"

colnames(dfStates) <- cnames
colnames(dfStates)

#copy USArrests dataset to local variable
arrests <- USArrests
#convert row names of states to new column for merging
arrests <- arrests %>% rownames_to_column("stateName")
