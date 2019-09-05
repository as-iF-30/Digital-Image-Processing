clc 
clear all
close all
a=imread('E:\Wall\Tokyo Ghoul\tokyo-ghoul-re-sn.jpg');
b=rgb2gray(a);
subplot(2,2,1)
imshow(b), title('Grey Image')
subplot(2,2,3)
imhist(b), title('Histogram')
c=histeq(b);
subplot(2,2,2)
imshow(c), title('High contrast')
subplot(2,2,4)
imhist(c), title('Histogram High')