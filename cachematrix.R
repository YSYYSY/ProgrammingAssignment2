## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeVector <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(i) b <<- solve(i)
  getsolve <- function() b
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}

## Write a short comment describing this function

cachesolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  x$setsolve(data)
  b
}

