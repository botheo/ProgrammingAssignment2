##Commit Programming 2 Asigment

## Create a vector (containing functions) for the inverse matrix calcualtion.
## Potentially calculate the inverse matrix in case that it is not cashed.
##I did not solve the potentially issues with matrix (not possible to use solve function for the inverse matrix calculation)


## Create a vector of function, that could be used for casching of inv matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Calcualtion of inverse matrix itslefe, with condition on already existing (calcaulted) results

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m
}
