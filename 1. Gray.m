clc 
clear all
close all
a=imread('E:\Wall\Tokyo Ghoul\tokyo-ghoul-re-sn.jpg');
b=rgb2gray(a);
subplot(1,2,1)
imshow(a), title('Color Image')
subplot(1,2,2)
imshow(b), title('Grey Image')
