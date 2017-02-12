#Plots the growth of 5 different Orange trees over time from the default
#Orange dataset

#Step 1: Subset the data into multiple data.frames by tree

tree1 <- subset(Orange, Orange$Tree == "1", select=c(age, circumference))
tree2 <- subset(Orange, Orange$Tree == "2", select=c(age, circumference))
tree3 <- subset(Orange, Orange$Tree == "3", select=c(age, circumference))
tree4 <- subset(Orange, Orange$Tree == "4", select=c(age, circumference))
tree5 <- subset(Orange, Orange$Tree == "5", select=c(age, circumference))

#There is probably an easier way to do this using a funciton, but this works for now

#Step 2: Plot the base graph

opar <- par(no.readonly = TRUE)

plot(tree1$age, tree1$circumference, xlim=range(Orange$age), ylim=range(Orange$circumference), type="b", pch=15, lty=1, col="red", main="Orange Tree Growth over Time", xlab="Age of tree in days", ylab="Trunk circumference (mm)")

#Step 3: Add the other tree lines as needed.

lines(tree2$age, tree2$circumference, type = "b", pch=16, lty=1, col="blue")
lines(tree3$age, tree3$circumference, type = "b", pch=17, lty=1, col="green")
lines(tree4$age, tree4$circumference, type = "b", pch=18, lty=1, col="purple")
lines(tree5$age, tree5$circumference, type = "b", pch=19, lty=1, col="orange")

#Step 4: Add the legend

legend("topleft", inset=0.05, c("Tree 1", "Tree 2", "Tree 3", "Tree 4", "Tree 5"), pch=c(15:19), col = c("red", "blue", "green", "purple", "orange"))

par(opar)