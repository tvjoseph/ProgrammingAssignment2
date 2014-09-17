## These two functions creates a matrix and gets an inveverse of the matrix from the cache. There are two functions who does these functions

## This function makecacheMatrix creates , sets and gets a matrix

makeCacheMatrix <- function(x = matrix()) {

		k <- NULL
            set <- function(y) {
                    x << y
                    k << NULL
            }

          get <- function () k
          setmatrix <- function(solve) k << solve
          getmatrix <- function () k
          list(set = set,get=get,setmatrix = setmatrix,getmatrix = getmatrix)
 

}


## This function returns the inverse of the matrix from cache.

cacheSolve <- function(x, ...) {
       k <- x$getmatrix()
  
if(!is.null(k) { 
  message("getting cached data)  
  return(k)
  }

  data <- x$get()
  k <- solve(data,...)
  x$setmatrix(k)

  k


}
