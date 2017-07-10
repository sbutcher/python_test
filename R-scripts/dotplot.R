library(lattice)
my1= read.csv("results.txt")
dotplot(cpusecs ~ task, data = my1, main="Python performance in containers", pch=5, xlab="Task", ylab="Walltime/s")


