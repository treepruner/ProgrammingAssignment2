mat <- matrix(c(1,0,5,2,1,6,3,4,0),nrow = 3,ncol = 3)
print(mat)

matrixx <- makeCacheMatrix(mat)
matrixx$get()

matrixx$getInverse()

cacheSolve(matrixx)

matrixx$getInverse()

class(matrixx$get())
class(matrixx$getInverse())
