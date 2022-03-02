## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the special matrox object which created can cache its inverse

makeCacheMatrix <- function( x = matrix() ) {
        
        ## Initialize the inverse property
        i <- NULL
        
        ## Set the matrix
        set <- function( matrix ) {
                x <<- matrix
                i <<- NULL
        }
        
        ## Return the matrix
        get <- function() x
        ## Set and get the inverse of the Matrix
        setInverse <- function(inverse)
                i <<- inverse
        getInverse <- function() i
        ## Return a list of the methods
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        
        
        get <- function() {
                ## Return the matrix
                x
        }
        
        ## Method to set the inverse of the matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
        
        ## Method to get the inverse of the matrix
        getInverse <- function() {
                ## Return the inverse property
                i
        }
        
        ## Return a list of the methods
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
i <- x$getInverse()
## Return the inverse if its already set
if (!is.null(x)) {
        message("getting cached data")
        return (x)
## Get the matrix from above object
        mat <- x$get()
## Calculate the inverse using matrix multiplication
        i <- solve(mat, ...)
## Set the inverse to the object
        x$setInverse(i)
## Return the matrix        
        i
}
        }
