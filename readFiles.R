setwd(
    "C:\\Users\\Lucas\\Documents\\GitHub\\R\\files"
)

# Ler arquivos .txt
txt = read.table(
    "Tab.txt", header=TRUE
)
# Ler arquivos .ods 
# install.packages("readODS")
library(readODS)

ods = read_ods(
    "Tab.ods", sheet=1
)
# Ler arquivos .xlsx
# install.packages("openxlsx")
library(openxlsx)

xlsx = read.xlsx(
    "Tab.xlsx", sheet=1
)
