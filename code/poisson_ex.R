lambda <- 1
x <- 0:10
ap <- dpois(x,lambda)
barplot(ap , names=x, col='firebrick2', xlab='x', ylab='f(x)', density=30,
main = sprintf("Poisson distr. lambda=%.2f",lambda),
ylim=c(0,0.415),
cex.lab=1.5, cex.axis=1.25, cex.main=1.25, cex.sub=1.5)
cat(paste(c("P(2|lambda) = ", ap[3],'\n')))
cat(paste(c("P(>=1|lambda) = ", 1 - ap[1],'\n')))