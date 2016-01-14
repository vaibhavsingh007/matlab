clear all; close all; % clear the workspace
load('woodData.mat'); % will load 'data' (class label, x, y)


%% Exercise: Implement the CV for classification
% 1. Extend the code to use crossvalidation: current_train, current_test are
%    the test and train instances
% 2. Calculate the label (first for fixed k), use fprintf to print the
%    number of correct/incorrect classified and the recognition rate
% 3. Surround the running code by a loop over h running from 0.1:0.3:5
% 4. Run solutionClassification with the optimal h
% 5. Upload the resulting figure as PDF or JPG for peer review

% Surround following code by a loop for CV for a fixed h = 0.3
% Calculate the regression value for each sample i in current_test
%% start evaluation
n = size(data, 1);

% create test set using 5-fold cross validation
kfold = 5;
error = 0;

rng(123);
c = cvpartition(n,'kfold',kfold);

maxRecognition = 0; % Set a worst case
errorField = [];

for  h = 0.1:0.3:5
    for f=1:kfold
        trainIdxs = find(training(c,f) );
        testInxs  = find(test(c,f)       );

        current_train = data(trainIdxs, :);
        current_test = data(testInxs, :);

        testLen = size(current_test,1);
        recognition = zeros(testLen, 1);

        % call KNN-Regression over each testpoint
        for i=1:testLen
            label = NWClassification(current_train, current_test(i,2:3), h); % h kernel

            recognition(i) = current_test(i,1) == label;
        end

        % Calculate the number of correcly classified, wrongly classified and the 
        % recognition rate for the given h
        correctCount = nnz(recognition);
        currentRate = correctCount / testLen;

        if currentRate > maxRecognition
            maxRecognition = currentRate;
        end
    end
end
maxRecognition



