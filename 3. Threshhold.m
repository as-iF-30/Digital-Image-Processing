clear all
clc;
close all;
a=imread('E:\Wall\Tokyo Ghoul\tokyo-ghoul-re-sn.jpg');
subplot(2,2,1)
imshow(a), title('color image')
b=rgb2gray(a);
subplot(2,2,2)
imshow(b), title('gray scale image');
[r,c]=size(b);
for i=1:r;
    for j=1:c;
        x=b(i,j);
        if x>100;
            y=1;
        else y=0;
        end
        m(i,j)=y;
    end
end
subplot(2,3,4);
imshow(m), title('threshold 100');
for i=1:r;
    for j=1:c;
        x=b(i,j);
        if x>150;
            y=1;
        else y=0;
        end
        m(i,j)=y;
    end
end
subplot(2,3,5);
imshow(m), title('threshold 150');
for i=1:r;
    for j=1:c;
        x=b(i,j);
        if x>200;
            y=1;
        else y=0;
        end
        m(i,j)=y;
    end
end
subplot(2,3,6);
imshow(m), title('threshold 200');