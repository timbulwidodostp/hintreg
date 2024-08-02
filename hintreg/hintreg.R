# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a heterogeneous normal interval regression model to interval data Use hintreg With (In) R Software
install.packages("remotes")
remotes::install_github("ystmmrsw/hintreg")
library("hintreg")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
hintreg = read.csv("https://raw.githubusercontent.com/timbulwidodostp/hintreg/main/hintreg/hintreg.csv",sep = ";")
# Estimation Fit a heterogeneous normal interval regression model to interval data Use hintreg With (In) R Software
hintreg[sapply(hintreg,is.character)]<-lapply(hintreg[sapply(hintreg,is.character)],as.factor)
hintreg<-hintreg(q2~sex,~sex,~sex,~sex,data=hintreg,threshbelow=NULL,threshabove=1:5,limenlb=-2,limenub=1)
summary(hintreg)
# Fit a heterogeneous normal interval regression model to interval data Use hintreg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
