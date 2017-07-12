my1= read.csv("results.txt")
library(lattice)
levels(my1$task) <- gsub(" ", "\n", levels(my1$task))
png('rplot.png', width=1000, height=1000)
dotplot(cpusecs ~ task, data = my1, main="Python performance in containers", pch=5, cex=2, cex.axis=2, xlab="Task", ylab="Walltime/s")

dev.off()
