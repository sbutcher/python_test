H <-c(4731,4723,9892,5604)
N <- c("Native", "Container", "Container,\n optimisations", "Container, SCL")


png(file = "nxv.png")

barplot(H, names.arg= N, xlab = "Task", ylim=c(0,10000), ylab = "walltime/s", col=rainbow(16), main = "Fig 1:Walltime for python jobs on Xeon E5-2683 v4", border="black")

dev.off()
