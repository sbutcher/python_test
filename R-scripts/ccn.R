H <-c(9686,9666,23478,11813)
N <- c("A", "B", "C", "D")

png(file = "ccn.png")

barplot(H, names.arg= N, xlab = "Task", ylab = "walltime/s", col="blue", main = "Fig 2:Walltime for python jobs on AMD Opteron 6712", border="black")

dev.off()
