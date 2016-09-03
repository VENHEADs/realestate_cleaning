task<-read.csv("TASK1.csv",sep=";")
for (i in 1:2) {
    task[,i] <- gsub('"', "", task[,i])
    task[,i] <-gsub("(\\s|\\s\\s|\\t|\\n)"," ",task[,i]) 
    task[,i] <-gsub("^(\\s)|$(\\s)","",task[,i])
    task[,i] <-gsub("\\([^\\]]*\\)","",task[,i],perl=TRUE)
    task[,i] <-gsub("^ЖК","",task[,i])
    task[,i] <-gsub("(^([[:alpha:]]))", "\\U\\2", perl=TRUE,task[,i])  	}
task<-unique(task)
class(task) 
write.csv(task,"valeriy1.csv", row.names = FALSE)
