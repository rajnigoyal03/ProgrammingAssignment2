## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL 
12     set <- function(y) { 
13         x <<- y 
14         inv <<- NULL 
15     } 
16     get <- function() x 
17     setinverse <- function(inverse) inv <<- inverse 
18     getinverse <- function() inv 
19     list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}


## Write a short comment describing this function
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            inv <- x$getinverse() 
31     if(!is.null(inv)) { 
32         message("getting cached data.") 
33         return(inv) 
34     } 
35     data <- x$get() 
36     inv <- solve(data) 
37     x$setinverse(inv) 
38     inv 
}
