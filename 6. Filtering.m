clc 
clear all
close all
a=imread('ig.jpg');
a=rgb2gray(a);
subplot(3,2,1)
imshow(a)
title ('Grey Scale Image')
b = imnoise(a, 'salt & pepper', .01);
subplot(3,2,2)
imshow(b)
title ('Noisy Image')
c=medfilt2(b);
subplot(3,2,3)
imshow(c)
title('Image after medfilt operation');
w=fspecial('prewitt');
d=imfilter(a,w);
subplot(3,2,4)
imshow(d)
title('Image after Prewitt operation');
k = 1/9*[1 1 1;1 1 1;1 1 1];
f = filter2(k,a);
f = uint8(f);
subplot(3,2,5)
imshow(f)
title ('filtered image by averaging filter')