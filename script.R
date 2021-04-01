library("plot3D")
data(iris)
x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width
scatter3D(x, y, z, main = "Sample data", xlab = "dimension 1",
          ylab ="dimension 3", zlab = "dimension 2", phi = 0, bty = "b",
          pch = 20, cex = 2, 
          col = c("#1B9E77", "#D95F02", "#7570B3"), 
          colkey = list(at = c(2, 3, 4), side = 1),
          labels = c("setosa", "versicolor", "virginica"),
          col.var = as.integer(iris$Species))

scatter3D(x, y, z, bty = "u", pch = 20, cex = 2, phi = 20,xlab = "dimension 1",
          ylab ="dimension 3", zlab = "dimension 2",main = "Sample data",
          col.var = as.integer(iris$Species), 
          col = ramp.col(c("blue", "yellow", "red")),
          colkey = list(at = c(2, 3, 4), side=1,
                        length = 0.5, width = 0.5,
                        labels = c("adulthood", "versicolor", "infancy")))          

