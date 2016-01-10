% Simulate rolling 5 dice, 1 million times!
% Make sure your final answer is in diceSum to receive credit!
rng(100)
diceRolls = randi([1,6],1E6,5);

diceSum = sum(diceRolls, 2);   % Row-wise sums

%--- Code to help you visualize if your answer is correct ---
% --------- Do not edit below -----------------------------

% x is a vector of possible outcomes
x = 5:30;
% histogram will return the number of times each value of x occured
counts = hist(diceSum, x);

% bar will display a histogram of the results
bar(x, counts)
hold on

% fit your results to a normal distribution
[mu, sig] = normfit(diceSum)

% normpdf creates a normal distribution with a given mean
% and standard deviation
y = normpdf(x, mu, sig);

% Rescale y to match the data
y = max(counts)*y/max(y);
plot(x, y, 'r')