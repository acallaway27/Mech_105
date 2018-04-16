function [row,column] = MagicMatrix(row,column)
%This function returns a row x column matrix ion which the first row is the
%number of the column, the first column is the number of the row, and the
%rest of the elements have a value equal to the sum of the element above it
%and to the left of it.
%  Inputs
%   Row= the number of rows desired 
%   Column= the number of columns desired
%  Outputs
%   MagicMatrix, which has all of the characteristics listed under the
%   description of the function.

%Jan 31, 2017 by Andrew Callawat
row = input('Input number of rows');
column = input('Imput number of columns');
for i=1:row
    for j=1:column
        if i==1
            MagicMatrix(i,j)=j;%The element in the first row is the number of the column
        elseif j==1
            MagicMatrix(i,j)=i;% The element in the first column is the number of the row
        else
            MagicMatrix(i,j)=MagicMatrix(i-1,j)+MagicMatrix(i,j-1);% every other element is the sum of the elements above and the element to the left
        end
    end
end
disp(MagicMatrix)%shows the matrix with the characteristics desired which are listed under the description of the function.

