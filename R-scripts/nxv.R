H <-c(4731,4723,9892,5604)
N <- c("A", "B", "C", "D")

png(file = "nxv.png")

barplot(H, names.arg= N, xlab = "Task", ylab = "walltime/s", col="blue", main = "Fig 1:Walltime for python jobs on Xeon E5-2683 v4", border="black")

dev.off()
