
% Read the picture  and convert to gray.
E_pic = rgb2gray(imread('0009.jpg'));

% Downsample, just to avoid dealing with high-resolution images.
%E_pic = im2double(imresize(E_pic, 0.5));% scale image by factor 0.5

E_pic = E_pic'; % ' : transpose operation

E_pic = im2double(E_pic); %Convert int-unsigned to double

% Make reduced row Echelon form:
[R,p] = rref(E_pic);
% p is a vector that contains the indices of the pivots

%Make matrix M by using only the basic columns of original matrix
M = E_pic( : , p );

% Show full-rank picture
figure; 
imshow(E_pic'), title('Original picture');


% Show compressed image via using the basic columns
figure
    
imshow(M'), title('Compressed image');

