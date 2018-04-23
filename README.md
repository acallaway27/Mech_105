# Mech 105 Functions

## This branch contains three folders each containing a README.md, and a .m file for Matlab functions each concerning numerical methods.

### False Position Function
#### This function estimates the roots of a funtion using a lower and upper estimate of where the root might be (so it is a closed method). This function takes some time to run and is not very computationally effecient, however, it will always give you a very good estimate of where the actual root is (assuming the upper and lower guess were reasonably close to the actual root).

### LU Factorization Function
#### This function allows the user to generate a Lower and Upper Triangular Matrix for any given square matrix [A].The function uses partial pivoting.  *note: matrix [A] must be a square matrix for this function to work properly.

### Simpson's Function
#### The Simpson function will find the integral of a given set of data points. For the Simpson rule to be implemented properly, there must be an even number of intervals. So, in this function I added lines of code to makesure that if there was an odd number of intervals, the Trapezoidal Rule would be used on the last interval and added to the result of the other intervals on which the Simpson method had determined the integral. The results of both rules are then added to give the user a final integral.
