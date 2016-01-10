% Applying noise to images
I = imread('Images\moose_gray.png');
J = imnoise(I, 'speckle');
imshow(I);
figure;
imshow(J);

% Remove noise using median filter as it works better
%..in case of outliers than mean filtering
L = medfilt2(J, [3 3]);
figure;
imshow(L);
