makeCacheMatrix <- function(x = numeric()) {
  #if an object is called without a method
  m <- NULL
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() return(x)
  
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() return(m)
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)  
}

