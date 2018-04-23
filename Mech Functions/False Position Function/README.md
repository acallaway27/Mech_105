# This function estimates the roots of a funtion using a lower and upper estimate of where the root might be (so it is a closed method). This function takes some time to run and is not very computationally effecient, however, it will always give you a very good estimate of where the actual root is (assuming the upper and lower guess were reasonably close to the actual root)

## Inputs:
### Func: the equation used in this method of root finding. xl: lower bound of interval where a sign change has occurred. xu: the upper bound of the interval where a sign change has occurred. es: the level of error the user will allow for the final root value. maxit: the maximum number of iterations the user wants the code to run. 

## Outputs:
### root: the estimated root found by the function from the given inputs. fx: function for the equation for the approximated root. ea: value of error for the given approximation. iter: the number of times the code was run until the desired error was met.

