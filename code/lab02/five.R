pCards <- function(x){
    y <- 26 - x

    n_fav <- (factorial(26) - factorial(y))**2
    d_fav <- factorial(52) - factorial(2*y)
    fav <- n_fav / d_fav
    print(fav)

    n_not <- factorial(y)**2
    d_not <- factorial(2 * y)
    not <- n_not / d_not 
    print(not)
    
    p <- fav * not 
    return(p)
} 

p <- pCards(10) 
print(p)