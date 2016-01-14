% clear the workspace
clear all; close all;
load('dataDrinks.mat');

figureOn = 0;

%% start evaluation
n = size(data, 1);

% create test set using 5-fold cross validation
kfold = 5;
error = 0;

rng(123);
c = cvpartition(n, 'kfold',kfold);


errorField = [];


for  h = 0.1:0.1:10
    for f=1:kfold
        trainIdxs = find(training(c,f) );
        testInxs  = find(test(c,f)       );
        
        current_train = data(trainIdxs, :);
        current_test = data(testInxs, :);
        
        % call KNN-Regression over each testpoint
        for i=1:size(current_test,1)
            
            %generate false instance as condition for if-loop
            
            RegValue(i,:) = [current_test(i,1) NWRegression(current_train,...
                current_test(i,1), h)];
            error = error + abs(RegValue(i,2)-current_test(i,2));
            
        end
        
        if(figureOn == 1)
            figure; hold on;
            
            %plot training instances
            h= plot(data(:,1),data(:,2),'r+');
            
            h4 = scatter(current_test(:, 1), current_test(:,2), 100, 'b');
            h5 = plot(RegValue(:,1), RegValue(:,2),'k*');
            hold on
            legend([h h4 h5], 'Experience value', 'Test value','Predicted value');
            
            xlabel('Outside Temperature [°C]');
            ylabel('Per Day Sale of Soft Drinks [Liters]');
        end
        
     
    end

    errorField = [errorField; [h error]];
    fprintf('Error for %4.2f: %4.2f\n', h, error);
    error = 0;
       
end

%% plot error wrt k
plot(errorField(:,1), errorField(:,2),'-');
% xlabel('k (nearest neighbors)');
% ylabel('sum of errors for each data point');