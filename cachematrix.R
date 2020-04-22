## Function creates a special "matrix" object that can cache its inverse

m<- makeCacheMatrix(matrix(1:4, 2, 2))
cacheSolve(m)

cacheSolve <- function(a, ...) {
  ### inverse of 'a'
  j <- a$getinverse()
  if(!is.null(j)) {
    message("inverse cached matrix ")
    return(j)
  }
  data <- a$get()
  j <- solve(data, ...)
  a$setinverse(j)
  j
}
makeCacheMatrix <- function(a = matrix()) {
  j <- NULL
  set <- function(y) {
    a <<- b
    j <<- NULL
  }
  get <- function() a
  setinverse <- function(inverse) 
    j <<- inverse
  getinverse <- function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
