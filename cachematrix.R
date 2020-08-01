makeMatrix <- function(x = matrix()) {
    
    theInverse <- NULL
    
    get <- function( ) {
        x 
    }
    
    set <- function(y) {
        x <<- y
        theInverse <<- NULL                  
    }
    
    getinverse <- function () {
        theInverse
    }
    
    setinverse <- function (i) {
        theInverse <<- i
    }
    
    list (get = get, set = set,                  
          getinverse = getinverse,
          setinverse = setinverse)
}

cacheInverse <- function(a = list()) {           
    i <- a$getinverse()
    matrix <- a$get()
    
    if(!is.null(i)) {
        message("Getting cached data")
        return(i)                                
    }
    
    i <- solve(matrix)                            
    a$setinverse(i)
    
    return(i)
}
