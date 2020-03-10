## Put comments here that give an overall description of what your
## functions do

            ##These functions when combine allow for the storage and inversion of 
                  #data as it relates to matrices. These functions save time and 
                  #memory in computing larger sets of data

## Write a short comment describing this function

      ##This function creates a cached matrix cabable of storing variables for 
            #retrevial by other functions

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
            x <<- y
            i <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) i <<- inverse
      getinverse <- function() i
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function
            ##This function inverses matrices if not previously solved.
                  ##If previously solved it saves memory and time by acuqiring the cached data
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      i <- x$getinverse()
      if(!is.null(i)) {
            message("getting cached data")
            return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i
      }

