for e=1 %This line sets the machine epsilon equal to 1 for the time being
   
while e+1>1 %This loop will keep redefining e until the statement e+1>1 is
            %longer true
    e=e/2
end
end
e=e*2 %The code will display the value generated for machine epsilon in
      %workspace and command window
