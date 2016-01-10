% The question paper problem
clc
tic
S = 1E6;    % # of students
Q = 30;     % # of questions
P = zeros(Q,5);     % Each q will have 5 choices
A = zeros(Q,5);     % To be used to record a student's answers

% Simulate correct ans.
for i = 1:Q
    P(i,:) = randi([0,1],5,1);
end

luckyStudents = 0;  % Count to record # students with >= 4 correct ans.
for s=1:S
    % Solve all Q questions
    for i = 1:Q
        A(i,:) = randi([0,1],5,1);
    end
    
    correct = A == P;
    if length(nnz(correct(:,1))) >= 4
        'Yahoo'
        luckyStudents = luckyStudents + 1;
    end
end
luckyStudents
N = round(luckyStudents/2500)
toc

