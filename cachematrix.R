## Put comments here that give an overall description of what your
## functions do

## The first function creates a matrix that can cache its inverse and the second function computes the inverse of the matrix created above.

## Write a short comment describing this function
## It constructs a matrix, sets its value, gets its value if it already exists, sets the value of the inverse and gets the value of the inverse if it already exists

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function
## This function computes the inverse of the matrix created in the previous function.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m        
		## Return a matrix that is the inverse of 'x'
}
