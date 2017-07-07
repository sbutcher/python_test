H <-c(6185,6304,15236,7721)
N <- c("A", "B", "C", "D")

png(file = "dn.png")

barplot(H, names.arg= N, xlab = "Task", ylab = "walltime/s", col="blue", main = "Fig 3:Walltime for python jobs on Xeon E5645", border="black")

dev.off()
