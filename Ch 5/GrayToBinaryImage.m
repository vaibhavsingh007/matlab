grayImg = imread('Images\moose_gray.png');
threshold = 0.55;   % Above which, the pixel will be made white (1)
binImg = im2bw(grayImg, threshold);
imwrite(binImg, 'Images\binTest.png');
imshow(binImg);