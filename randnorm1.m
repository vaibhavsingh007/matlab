% Generating normally distributed pseudorandom numbers
randnorm = 1 + 3*randn(10000,1); % Here, 1 is the mean and 3, SD
hist(randnorm, 100);