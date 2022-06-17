## Put comments here that give an overall description of what your
## makeCache function allows us to create a matrix whose matrix can be inversed and stored in a cache)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)


}


## Write a short comment describing this function
# the cachesolve function inverts a matrix ifthe cache already stores the inverse then it will return it but if it empty then it will calculate the inverse)
cacheSolve <- function(x, ...) {inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      

}
