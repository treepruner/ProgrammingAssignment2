## Put comments here that give an overall description of what your
## functions do

## Caches the inverse of a matrix and stores it in cache
## These convoluted code is the r equivalent of the plot of the movie Inception
## 
## Comments are embedded inside the function
##
## See also https://github.com/DanieleP/PA2-clarifying_instructions
## 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                                 # sets m to undefined         
        set <- function(y) {                      # changes the vector stored in the main function
                x <<- y                           # substitutes the vector x with y (the input) in the main function
                m <<- NULL                        # restores m to null
        }
        get <- function() x                       # returns matrix x stored in main function
        setInverse <- function(solve) m <<- solve # performs the inverse on the matrix
        getInverse <- function() m                # returns the inverse
                                                  # stores the functions by name in a list
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## computes the inverse of a matrix if it isn't already in the cache
## see the comments on each line
## See also https://github.com/DanieleP/PA2-clarifying_instructions
## 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## the built in function solve gets the inverse
        ## 
        m <- x$getInverse()                       # returns from list defined in makeCacheMatrix
        if(!is.null(m)) {                         # if m isn't null, it prints it out with message
                message("getting cached data")
                return(m)
        }
        data <- x$get()                            # if m isn't found, then it brings the matrix back
        m <- solve(data, ...)                      # computes the inverse
        x$setInverse(m)                            # stores the inverse for next time
        m
}
