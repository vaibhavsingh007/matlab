% Create a normal distrubution 
clc
mu = 100;
sd = 4;
y = mu + sd.*randn(100,1); 

% Check parameters of y
stats = [mean(y) std(y) var(y)]