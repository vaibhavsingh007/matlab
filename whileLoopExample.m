% Display the first integer n for which n! is 51 digits
n = 1;
nFact = 1;

while nFact < 1e51
    n = n + 1;
    nFact = factorial(n);
end

disp('The first integer for which n! is 51 digits is:')
n
nFact