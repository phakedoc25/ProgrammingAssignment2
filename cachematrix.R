## Put comments here that give an overall description of what your
## functions do

#The first function create an object that stores the matrix and the inverse of the matrix.
#The second function calls the object to see if the object already has an inverse matrix already in it.
#If it does than it returns the saved matrix but if it does not it calculates the inverse matrix and saves it to the original object


## Write a short comment describing this function
#This creates an object with 4 functions.
#1. Initalizes the matrix cells and creates an inverse matrix set as null
#2. Retrives the initial matrix
#3. Sets the inverse matrix
#4. Retrives the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  #This initalizes the inverse of the matrix x to be the value of NULL
  inv<- NULL
  #This function sets the matrix's cells value
  setmatrix <- function(y=matrix){
    #It sets X to equal to the given matrix in the input
    x <<-y
    #It also sets m, the inverse of the x to be null to be NULL
    inv <<-NULL
    
    
  }
  #This function returns the values of the cells in matrix x
  getmatrix<- function(){
    #Prints the value of the matrix x
    x
    
  }
  #This function takes the value of the inverse of the matrix x and saves it so it can be recieved later as needed
  setinversematrix <- function(inversematrix){
    #This makes the m to be equal to the inverse matrix of x
    inv<<-inversematrix
    
  }
  #This function returns the value of the inverse of matrix x, which is m
  getinversematrix <- function(){
    #Prints the value of the inverse matrix of x
    inv
  }
  #This keeps the function of x as a list so that it can be pulled out easily
  list(setmatrix = setmatrix, getmatrix = getmatrix, setinversematrix = setinversematrix, getinversematrix = getinversematrix)
  

}


## Write a short comment describing this function

#This function either returns the cached inverse matrix or calculates the inverse matrix and stores it for later

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  #Takes the value of x and gets the inverse of the matrix and sets it equal to m
  inv <-x$getinversematrix()
  #Checks to see if the inverse of the matrix exists
  if(!is.null(inv)){
    #If the inverse matrix exists then prints out the cached inverse matrix
    message("getting cached data")
    #It returns the inverse of the matrix
    return(inv)
    
  }
  #If the inverse matrix does not exists it takes the matrix of x
  data<-x$getmatrix()
  #The Solve function is used to give the value of the inverse matrix
  inv<-solve(data)
  #It saves the value of the inverse matrix of x back into the function
  x$setinversematrix(inv)
  #And returns the value of the inverse matrix
  inv
  
}
