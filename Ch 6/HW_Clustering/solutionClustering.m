clear all;close all;

% initialize number of cluster centers
numberClusterCenter = 3;

%% load data for clustering
% data will be in variable 'data'
load('dataClustering');


%% apply k-means clustering
centers = KMeansClustering(data,numberClusterCenter);

%% plot map germany
h = figure; hold on;
img = imread('Deutschland.jpg');
imagesc([0 5000],[5000 0],img);

h1 = plot(data(:,1), data(:,2),'*b');
h2 = plot(centers(:,1), centers(:,2),'gx', 'LineWidth',10, 'MarkerSize',5);

legend([h1 h2], 'Customer Locations','Cluster-Center');
set(gca, 'XTick', []);
set(gca, 'YTick', []);

