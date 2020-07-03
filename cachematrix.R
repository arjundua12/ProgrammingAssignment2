##Coursera programming assignment 2 : Caching inverse on a matrix
## this function will create a matrix that can cache it's inverse 

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<- function(y){
                x<<-y
                m<<-NULL
        }
        get<-function()x
        setinverse<-function(inverse)m<<-inverse
        getinverse<-function()m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## If the inverse exisits in cache it will retrive it from the cache to solve the matrix 

cacheSolve <- function(x, ...) {
       cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
  matrix <- x$get()
  m <- solve(matrix,...)
  x$setInverse(m)
  m
}
}
