# The Simpson function will find the integral of a given set of data points. For the Simpson rule to be implemented properly, there must be an even number of intervals. So, in this function I added lines of code to make sure that if there was an odd number of intervals, the Trapezoidal Rule would be used on the last interval and added to the result of the other intervals on which the Simpson method had determined the integral. The results of both rules are then added to give the user a final integral.

## Inputs: 
###  x = horizontal component of the vector being integrated
### y = vertical component of the vector being integrated

## Outputs:
### I = the approximated integral of the data points given
