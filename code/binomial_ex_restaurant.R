cust <- 4
p <- 4/15
x <- 0:4
ap <- dbinom(x,cust,p)
barplot(ap, names=x, col='#000080', xlab='x', ylab='f(x)', density=40,
main = sprintf("Binomial distr. Customers=%d, p=%.2f",cust,p),
cex.lab=1.5, cex.axis=1.25, cex.main=1.25, cex.sub=1.5)
cat(paste(c("P(2|np) = ", ap[3],'\n')))