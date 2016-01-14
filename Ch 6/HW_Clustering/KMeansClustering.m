%% function to calculate k-means clustering
% parameters are the data, the start centers and k (number of clusters)
% centers is a 3x2 matrix (3 rows, 2 columns)
function [centers]=KMeansClustering(data, k)

rng(123); % initialize the random generator (do not delete)

%% Excercise 1: Initialization Step
% Complete the code for initialization of the cluster centers
% 1.1 Please implement the Forgy method to obtain k = 3 (see solutionClustering.m) 
%     clusters
dataLength = length(data);
centerIndices = randperm(dataLength, k);
centers = data(centerIndices, [1 2]);   % Nifty way of getting index vals.
clusters = zeros(dataLength, 2);

for i=1:dataLength
    % Associate each point to its nearest mean (centroid).
    minD = 1E6;
    for j=1:k
        currentD = sqrt(sum((centers(j,:) - data(i,:)).^2));
        if currentD < minD
            minD = currentD;
            clusters(i,:) = centers(j,:);   
            % 'clusters index' to 'data' is a 1-1 reln.
        end
    end
end


% 1.2 Store the centers in the return variable centers

% Note: Please leave the command rng(123); in the code 
%         (the command fixes random generator to make results comparable)

% TIP: use functions "rand, round":
%      first scale outcome of rand (0...1) to the 
%      data set size -1 (0 ... 299)
%      add one to model all indices between 1 ... 300
%      round the outcome to be integer values (used as indices)
%      size(centers) should be a 3x2 vector




%% Assigment and Update Steps (Excercise 2)
% Please implement the iterative k-means algorithm
% TIP: use a variable indicating the convergence
%      save the distances between each point and cluster in a matrix
%      use "sqrt, sum" to calculate the Euclidian distance
%      use "min" to find the nearest center
%      use "sum, /, find" to calculate the new mean centers

% Repeat until convergence
change = 1;

while change
    change = 0;
    
    % Update centroids to cluster means
    for i=1:k
        currentMean = centers(i,:);
        currentClusterIndices = clusters(:,1) == currentMean(1,1) &...
                        clusters(:,2) == currentMean(1,2);
        currentCluster = data(currentClusterIndices,:);
        
        % Calculate new mean
        newMean = mean(currentCluster);
        
        if newMean ~= currentMean
            change = 1;
            
            % Update new mean in both 'centers' and clusters
            centers(i,:) = newMean;
            clusters(currentClusterIndices,1) = newMean(1,1);
            clusters(currentClusterIndices,2) = newMean(1,2);
        end
    end
end




