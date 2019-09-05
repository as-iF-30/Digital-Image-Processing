clc 
clear all
close all
a=imread('E:\Wall\Tokyo Ghoul\tokyo-ghoul-re-sn.jpg');
b=rgb2gray(a);
[r,c]=size(b);
for i=1:r
    for j=1:c
       tr=b(i,j);
       nw=256-tr;
       out(i,j)=nw;
    end
end
subplot(1,2,1)
imshow(b), title('Grey Image')
subplot(1,2,2)
imshow(out), title('Negative Image')