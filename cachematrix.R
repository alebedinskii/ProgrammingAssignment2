## Put comments here that give an overall description of what your
## functions do
 
## Write a short comment describing this  function
## following function reverse the matrix and cache's  the reversed one

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m<<- NULL 
  }
  get<- function()x
  setReverse<- function(solve) m<<- solve 
  getReverse<- function() m
  list(set=set, get=get, setReverse=setReverse, getReverse= getReverse)

}


## Write a short commevalue nt describing this function
## this function cthe hecks if the matrix has been already reversed, if so -gets it from cache skiping calculation, 
## otherwise sets the value of reversed matrix via setReverse function.
 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getReverse()
  if(!is.null(m)){
    message("getting cached data")
    return (m)
  }
  data<- x$get()
  m<- solve(data, ...)
  x$setReverse(m)
  m
}
