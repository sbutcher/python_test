my1= read.csv("/home/sbutcher/gits/python_test/R-scripts/results_batch.txt")
my2= read.csv("/home/sbutcher/gits/python_test/R-scripts/results.txt")
library(lattice)
library(latticeExtra)

levels(my1$task) <- gsub(" ", "\n", levels(my1$task))
levels(my2$task) <- gsub(" ", "\n", levels(my2$task))

png('rplot-both.png', height=800,width=800, units="px",pointsize=15, res=100)

p <- dotplot(cpusecs ~ task, data = my1, main="Python performance in containers", pch=5, cex=1.5, xlab="Task type", ylab="Walltime/s", ylim=c(0,11000))
p2 <- dotplot(cpusecs ~ task, data = my2, main="Python walltime results", pch=1, cex=1.5, xlab="Task type", ylab="Walltime/s", col="red", ylim=c(0000,11000), key=list(columns=2,
        text=list(lab=c("separately run jobs","grouped array runs")),
        points=list(pch=c(1,5), col=c("red", "blue")))
        )
# add second p2 plot as a layer
p2 + as.layer(p)

dev.off()
# print mean values for tables
print("mean cpusecs")
mean(my1[1:10, ]$cpusecs)
mean(my1[11:20, ]$cpusecs)
mean(my1[21:30, ]$cpusecs)
mean(my1[31:40, ]$cpusecs)
print("mean ioops")
mean(my1[1:10, ]$ioops)
mean(my1[11:20, ]$ioops)
mean(my1[21:30, ]$ioops)
mean(my1[31:40, ]$ioops)
print("mean mem")
mean(my1[1:10, ]$mem)
mean(my1[11:20, ]$mem)
mean(my1[21:30, ]$mem)
mean(my1[31:40, ]$mem)
