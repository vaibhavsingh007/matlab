% PA 5.3.3 Vectorization
clc
% ------ Do not edit --------------------------------

tstart = tic;		% starting stop watch
rng(110);			% Seeding the random number generator
A= randi(100,1000);	% creating a matrix A
B= randi(100,1000);	% creating a matrix B

% ---------------------------------------------------
% We want to create a matrix C, which is the result of the
% elementwise multiplication of A and B
% Change the code to be faster than 0.35 seconds!
% ---------------------------------------------------
% Have fun!

% for i=1:size(A,1)
%     for j=1:size(B,2)
%         C(i,j) = A(i,j)*B(i,j);
%     end
% end
C = A .* B;

% ------------------------------------------------------
% Do not edit the TOC command! It belongs to 
% TIC command in the 3rd line and times your operations
telapsed = toc(tstart)	% terminate stop watch