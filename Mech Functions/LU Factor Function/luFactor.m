function [L,U,P] = luFactor(A)
%luFactor is a function that will use LU Factorization with partial
%pivoting to find the L (lower triangular matrix) and U (upper triangular
%matrix) which make up the matrix A, which must be a square matrix (3x3,
%2x2 etc...) to work properly.
%
% Inputs
%
%   A- the matrix that stores the coefficients for the system of equations you
%   are attempting to solve (must be a sqare matrix, see above explanation for
%   square matrix defenition).
%
% Outputs
%
%   L- the lower triangular output matrix for matrix A
%   U- the upper triangular output matrix for matrix A
%   P- the 'pivot matrix', which stores the row switches performed during
%   the process of LU factorization
% Written By Andrew Callaway on 3/25/18
%%
[n,m] = size(A);            %these are the rows and columns for matrix A
if nargin > 1
    error('Too many input arguments')    %only one input is needed, matrix A
end

if n ~= m
    error('A has to be a square matrix for LU Factorization (n must equal m)')  %A must be a square matrix
end

[m,n] = size(A);

L = eye(n);         %makes L an identity matrix
U = A;              
P = eye(n);         %makes P an identity matrix (creates matrix of 1 and 0, where 1 denotes there is a value there, and 0 means there isn't)
for y = 1:m-1
    pivot = max(abs(U(y:m,y)));     %pivots so largest abs value of column is in the top row
    for x = y:m
        if (abs(U(x,y)) == pivot)   %finds largest coefficient of column, and pivots largest value to top row
            ind = x;
        end
    end
    
    U([y,ind],y:m) = U([ind,y],y:m);     %switches the rows in upper triangular matrix
    L([y,ind],1:y-1) = L([ind,y],1:y-1); %switches the rows in lower triangular matrix
    P([y,ind],:) = P([ind,y],:);         %stores row switches in 'pivot matrix'
    
    for x = y+1:m
        L(x,y) = U(x,y)/U(y,y);         %final L matrix of A
        U(x,y:m) = U(x,y:m)-L(x,y)*U(y,y:m);    %final U matrix of A
    end
end
P=P                     %displays final values for user
L=L
U=U

end

