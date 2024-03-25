n_people_tot <- 50
pbday <- rep(0, n_people_tot)
for (k in 2:n_people_tot) {
n_tests = 1E5; cb <- 0
for (i in 1:n_tests) {
bdays <- sample(1:365, k ,
replace=TRUE)
if (length(bdays) > length(unique(bdays))) {
cb = cb + 1
}
}
pbday[k] <- cb/n_tests
message(paste("k:", k, "pb(",k,"):",pbday[k]))
}
pfunc <- function(f, b) function(a) f(a,b)
p50_index <- Position(pfunc(`>`, 0.5), pbday)
message(paste("First element with prob >0.5:", p50_index))