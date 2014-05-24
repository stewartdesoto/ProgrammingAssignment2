# function that stores the matrix in a cache 

makeCacheMatrix <- function(x = numeric()) {
  #if an object is called without a method
  m <- NULL
  
  # function to set the x matrix, and to set the inverse to Null
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # function to return the matrix
  get <- function() return(x)
  
  #function to set the matrix inverse
  setinverse <- function(inverse) m <<- inverse
  
  #function to get the matrix inverse
  getinverse <- function() return(m)
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)  
}



# function which accesses the cache for the matrix inverse
cacheSolve <- function(x, ...) {
  # try to get the matrix inverse
  m <- x$getinverse()
  # if the inverse is in the cache, then return it
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # otherwise, retrieve the matrix and calculate and return its inverse
  data <- x$get()
  m<-solve(data, ...)
  x$setinverse(m)
  return (m)
}