## Put comments here that give an overall description of what your
## functions do

## Creates a function that has input x (which will be a matrix)
## Sets our matrix inverse, s, to NULL everytime makeCacheMatrix is called
## Sets the matrix inverse when cachesolve is called for the first time
## Can return the cached inverse matrix to cachesolve if it is already stored

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL 
    x <<- y
    s <<- NULL
  }
  get <- function() x      
  setinverse <- function(solve) s <<- solve 
  getinverse <- function() s    
  list(set = set, get = get,    
       setinverse = setinverse, 
       getinverse = getinverse)                         
}
}


## Creates a function with input of the object x which is created by makeCacheMatrix function
## accesses the object 'x' and gets matrix inverse if matrix inverse was already cached (i.e.not NULL) then a message is sent
## If the maytrix inverse S is not cached (ie S is NULL), then it works out the inverse, stores it, and returns it 

cacheSolve <- function(x, ...) {
  s <- x$getinverse()            
  if(!is.null(s)) {              
    message("getting cached data")
    return(s)  
  }
  data <- x$get ()
  s <- solve(data, ...)
  x$setinverse(s)
  s
}
