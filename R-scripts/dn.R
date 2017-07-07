H <-c(6185,6304,15236,7721)
N <- c("Native", "Container", "Container,\n optimisations", "Container, SCL")

png(file = "dn.png")
# old colour #3f51b5
barplot(H, names.arg= N, xlab = "Task", ylab = "walltime/s", ylim= c(0,20000),  col=rainbow(16), main = "Fig 3:Walltime for python jobs on Xeon E5645", border="black")

dev.off()
