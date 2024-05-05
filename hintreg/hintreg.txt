# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a heterogeneous normal interval regression model to interval data Use hintreg With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("devtools")
library("httr")
library("readxl")
library("devtools")
devtools::install_github("ystmmrsw/hintreg")
library("hintreg")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/hintreg/raw/main/hintreg/hintreg.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
hintreg <- readxl::read_excel(temp_file)
# Estimate productivity - Levinsohn-Petrin method
hintreg[sapply(hintreg,is.character)]<-lapply(hintreg[sapply(hintreg,is.character)],as.factor)
hintreg<-hintreg(q2~sex,~sex,~sex,~sex,data=hintreg,threshbelow=NULL,threshabove=1:5,limenlb=-2,limenub=1)
summary(hintreg)
# Fit a heterogeneous normal interval regression model to interval data Use hintreg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
