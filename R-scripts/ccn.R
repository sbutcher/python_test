H <-c(9686,9666,23478,11813)
N <- c("Native", "Container", "Container,\n optimisations", "Container, SCL")

png(file = "ccn.png")

barplot(H, names.arg= N, xlab = "Task", ylim = c(0,25000), ylab = "walltime/s", col=rainbow(16), main = "Fig 2:Walltime for python jobs on AMD Opteron 6712", border="black")

dev.off()
