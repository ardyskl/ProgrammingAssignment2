## Two functions that cache, retuns and

## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(n = matrix()) {
  
    ## Initialise the inverse property
    i <- NULL

    ## Method to set the matrix 
    set <- function( matrix ) {
          n <<- matrix
          i <<- NULL
    }
  
    ## Method to get the matrix 
    get <- function() {
      ## Return the matrix
      m
    }
  
    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse 
    }
  
    ## Method to get the inverse of the matrix 
    getInverse <- function() {
      ## Return the inverse property
      i
    }
  
    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}

## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## If inverse already set -> return
  if ( !is.null(n)) {
           message("getting cached data")
            return(n)
  }
  
  ## Get the matrix from our object
  data <- x$get()
  
  ## calc the inverse of the matrix by multiplication
  n <- solve(data) %*% data
  
  ## Set the inverse to the object
  x$setInverse(n)
  
  ## Return the matrix
  n
}