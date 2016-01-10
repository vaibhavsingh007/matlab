% Using Monte Carlo Simulation to solve Gary Foshee problem
% Prob: "I have two children. One is a boy born on a Tuesday.
% What is the probability that the other is also a boy?"

% Soln: Using N families (uniformaly at random with two children each).
% n(E) = Families with two boys, one of whom is born on a Tuesday.
% n(S) = Families with one boy born on a Tuesday.
clc
tic
N = 1E6;                % 1 m families
child1 = randi(2,N,1);  % Sex of the first child (1=B, 2=G)
child2 = randi(2,N,1);
child1Day = randi(7,N,1); % 1 = Monday
child2Day = randi(7,N,1);
bothBoys = child1==1 & child2==1;
oneBoyOnTue = child1 == 1 & child1Day == 2 |...
                            child2 == 1 & child2Day == 2;
familiesBothBoysOneOnTue = bothBoys & oneBoyOnTue;
% Note that we are concerned about the non-zero (true) elements.
P = nnz(familiesBothBoysOneOnTue)/nnz(oneBoyOnTue)
toc
 