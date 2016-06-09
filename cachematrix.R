## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a special 'matrix ' object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        inverse= NULL #set the matrix
        set=function(y){
                #to cache something in an environment where is different from the current environment uses <<-
                x<<-y
                inverse<<-NULL
                }
        get=function()x
        setinverse=function(inverse)inv<<-inverse
        getinverse=function()inv
        list(set=set, get=get,setinverse=setinverse, getinvere=getinverse)
        }


## Write a short comment describing this function
# this function computes the inverse of the special'matrix' returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        inverse=x$getinverse()
        
        # If the inverse has already been calculated(and the matrix has not changed),
        # then cacheSolve should retrieve the inverse from the cache
        if (!is.null(inv)){
                print('Retrieving from cached data')
                return(inv)
        }
        # otherwise, calculate the inverse here
        data=x$get()
        inverse=solve(data,...)         # This returns the invers of the matrix:
        x$setinvers(inv)
        
        return(inv)
        ## Return a matrix that is the inverse of 'x'
}
