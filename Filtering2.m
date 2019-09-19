clc 
clear all
close all
a=imread('if.jpg');
a=rgb2gray(a);
subplot(2,4,1)
imshow(a)
title ('Grey Scale Image')
b = imnoise(a, 'salt & pepper', .01);
subplot(2,4,2)
imshow(b)
title ('Noisy Image')
k1=1/9*[1 1 1;1 1 1;1 1 1]; 
k2=1/16*[1 2 1;2 4 2;1 2 1]; 
k3=1/8*[0 1 0;1 2 1;0 1 0]; 
k4=[1 0 1; 0 -4 0; 1 0 1]; 
k5=1/2*[-2 -2 -2;0 1 0;1 1 1]; 
k6=1/2*[1 1 1;0 1 0;-2 -2 -2]; 
f1=filter2(k1,b); 
f1=uint8(f1); 
subplot(2,4,3)
imshow(f1)
title ('filtered image by avgering filter')
f2=filter2(k2,b); 
f2=uint8(f2);
subplot(2,4,4)
imshow(f2)
title ('filtered image by weighted avg. filter')
f3=filter2(k3,b);
f3=uint8(f3);
subplot(2,4,5)
imshow(f3)
title ('filtered image by gaussian filter')
f4=filter2(k4,b); 
f4=uint8(f4);
subplot(2,4,6)
imshow(f4)
title ('filtered image by edge filter')
f5=filter2(k5,b); 
f5=uint8(f5);
subplot(2,4,7)
imshow(f5)
title ('filtered image by spl edge filter 1 filter')
f6=filter2(k6,b); 
f6=uint8(f6);
subplot(2,4,8)
imshow(f6)
title ('filtered image by spl edge filter 2 filter')