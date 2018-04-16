function[nd] = days(mo, da, leap)
%this function allows the user to input information such as the month and
%day of the year and yeilds an output of how many days have passed in the
%year
% Inputs
%   mo=months in the year, from 1 to 12
%   da=date in the month in question, from 1 to 31
%   leap=determines whether the year in question is a leap year, if it is
%   the variable 1 is used, if not, the user will input 0
%   x= another variable for month, which is used in the array  'calendar'
%   in order to avoid redefining the variable 'mo'

%Outputs
%   nd= number of days elapsed in the year

%January 30, 2017 by Andrew Callaway
x=input('Enter month from 1 to 12, January being 1, December being 12');
%user inputs month
da=input('Enter day of month from 1 to 31');
%user inputs day of the month
leap=input('Type 1 if this year is a leap year, otherwise type 0');
if x>12
    error('There are only 12 months in a calendar year')
    %Error occurs because ther can not be more than 12 months in the year,
    %and error for x<1 occurs because ther can not be a month 0 or a
    %negative month
elseif x<1
    error('Months are numbered from 1 to 12, there can be no negative month or month 0')
elseif da>31 || da<1
    error('There are anywhere from 1 to 31 days in a month any more or less can not be an input')
elseif x==2 && leap==0 && da>28;
     error('This is a leap year, which means there cannot be a day in February > 28')
end
%%
calendar=[0 31 59 90 120 151 181 212 243 273 304 334];
%array that allows the calculation of the total number of days elapsed up
%until the given month. If it is a leap year, array is altered to add 1 day
%to every sum after February

if leap==1
    calendar=[0 31 60 91 121 152 182 213 244 274 305 335];
elseif leap==0
    calendar=[0 31 59 90 120 151 181 212 243 273 304 334];
end
mo=calendar(1,x);
days=mo+da
end

