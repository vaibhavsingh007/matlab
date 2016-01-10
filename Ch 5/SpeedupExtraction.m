% Often we are only interested in a subset of large data sets. 
% Below is a vector of 100,000,000 random numbers between 0 and 1. 
% Write code to find how many numbers are < 0.5 in less than 1 second. 
% Save your answer in the variable count. 
clc

%----- Do not edit this block ------------
rng(110)
data = rand(1, 1e6);
tstart = tic;
%-----------------------------------------

% Write your code below
lt = data < 0.5;
count = nnz(lt);

% Replace every such element with 0
% gte = data >= 0.5;
% data = data .* gte;
% nnz(data == 0)

%--- Write your code above this line ----
telapsed = toc(tstart)