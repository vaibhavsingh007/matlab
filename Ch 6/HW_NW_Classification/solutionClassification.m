clear all; close all; % clear the workspace

load('woodData.mat'); % will load 'data' (class label, x, y)

% create test set
[X, Y] = meshgrid(-4:0.05:6,-4:0.05:6);

% call KNN-classification on each test point
for i=1:size(X,1)         
    for j = 1:size(X,2)
        label(i,j) = NWClassification(data, [X(i,j) Y(i,j)], 0.7750);
    end
end

% plot areas of class one and two
contourf(X, Y, label);
hold on; % 

% plot training instances of class 0
index = find(data(:,1) == -1);
h1 = plot(data(index, 2), data(index,3), 'ko');
plot(data(index, 2), data(index,3), 'wo');

% plot training instancaes of class 1
index = find(data(:,1) == 1);
h2 = plot(data(index, 2), data(index,3), 'kx');
plot(data(index, 2), data(index,3), 'wx');


legend([h1 h2], 'Class -1 (Junk)','Class  1 (Correct Boards)');
xlabel('Regularity');
ylabel('Light Intensity');

