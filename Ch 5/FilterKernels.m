% Linear Spatial Filtering
I = imread('Images\ladies.jpg');
filter = fspecial('unsharp');   % kernel
jSharp = imfilter(I, filter);

imshow(jSharp);