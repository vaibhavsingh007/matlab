% clear the workspace
clear all;close all;

% data will be in variable 'data'
load('dataClustering');

%% plot map germany
figure; hold on;
img = imread('Deutschland.jpg');  
imagesc([0 5000],[5000 0],img); 
hold on;

%% plot data (customer locations)
h1 = plot(data(:,1), data(:,2),'*b');

legend(h1, 'Customer Locations');
set(gca, 'XTick', []);
set(gca, 'YTick', []);