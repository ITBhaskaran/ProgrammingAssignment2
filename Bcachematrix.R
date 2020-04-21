## Functions for MakecacheMatrix

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
}


## Function for cache solve

cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'a'
          j <- a$getinverse()
  if(!is.null(j)) {
    message("inverse cached matrix ")
    return(j)
  }
  data <- x$get()
  j <- solve(data, ...)
  a$setinverse(j)
  i
}
}
