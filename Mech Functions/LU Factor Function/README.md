# luFactor is a function that will use LU Factorization with partial pivoting to find the L (lower triangular matrix) and U (upper triangular matrix) which make up the matrix A, which must be a square matrix (3x3, 2x2 etc...) to work properly.

## Inputs:
### A: the matrix that stores the coefficients for the system of equations you are attempting to solve (must be a sqare matrix, see above explanation for square matrix defenition).

## Outputs:
###  L- the lower triangular output matrix for matrix A 
### U- the upper triangular output matrix for matrix A
### P- the 'pivot matrix', which stores the row switches performed during the process of LU factorization
