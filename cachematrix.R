## Put comments here that give an overall description of what your
## functions do

## FUNCTION 1 (makeCacheMatrix)
## My first function creates a matrix and creates a symbol that is very
## important for both functions. The important symbol is 'a'. It comes
## in handy because it is eventually what gets checked to see if the ma-
## trix has been cached previously or not. Then it also will be the ele-
## ment that contains the cached inverse after running cacheSolve.

## FUNCTION 2 (cacheSolve)
## Once the matrix has been created with makeCacheMatrix, cacheSolve
## checks to see if the inverse has been computed yet. If not, it will
## compute the inverse and save it for later.



## Write a short comment describing this function

##See description above.

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y){
                x <<- y
                a <- NULL
        }
        get <- function() x
        setsolve <- function(solve) a <<- solve
        getsolve <- function() a
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

##See description above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getsolve()
        if(!is.null(a)){
                message("cache is incoming!")
                print(a)
        }
        info <- x$get()
        a <- solve(info, ...)
        x$setsolve(a)
        a
}