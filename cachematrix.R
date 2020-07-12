## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) a <<- solve
  getsolve <- function() a
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  a <- x$getsolve()
  if(!is.null(a)) {
    message("inversed matrix")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setsolve(a)
  s
}
}
