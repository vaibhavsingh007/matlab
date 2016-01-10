function[n] = smallest_double_error()
% Returns the smallest number, n for which the fact of
% n!/(n-1)! - n is not zero (which ideally should be).
fact = 0;
n = 0;
while fact == 0
    n = n+1;
    fact = (factorial(n)/factorial(n-1) - n);
end