clc 
clear all
close all
a=imread('E:\Wall\Tokyo Ghoul\tokyo-ghoul-re-sn.jpg');
subplot(2,2,1)
imshow(a), title('Color Image')
b=imcrop(a);
subplot(2,2,2)
imshow(b), title('Croped Image')
c=imresize(a,1/4);
subplot(2,2,3)
imshow(c), title('Resized Image')
d=flipdim(a,2);
subplot(2,2,4)
imshow(d), title('Fliped Image')