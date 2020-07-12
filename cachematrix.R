## Put comments here that give an overall description of what your
## functions do

##input x was set as a matrix 
##solve function makes an inverse matrix
##makeCacheMatrix creates object that can
##cache the inverse of a matrix

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


##cacheSolve computes the inverse of the matrix



cacheSolve <- function(x, ...) {
  a <- x$getsolve()
  if(!is.null(a)) {
    message("inversed matrix")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setsolve(a)
  a
}
}
