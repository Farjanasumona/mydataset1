a=imread('Tulips.jpg');
b=imread('horse.jpg');
i=rgb2gray(a);
j=rgb2gray(b);
a1=imresize(a,[256,256]);
b1=imresize(b,[256,256]);
d=immultiply(a1,b1);
lh=imadjust(i,stretchlim(i));
figure(1);subplot(1,3,1);imshow(a1);title('Image1');
subplot(1,3,2);imshow(b1);title('Image2');
subplot(1,3,3);imshow(d);title('Image Multiplication');

figure(2);subplot(2,2,1);imshow(a);title('input Image1');
subplot(2,2,2);imhist(a);title('Histogram');
subplot(2,2,3);imshow(i);title('input gray Image1');
subplot(2,2,4);imhist(i);title('Histogram');

k=histeq(a);
l=histeq(i);
figure(3);subplot(2,2,1);imshow(a);title('Original Image');
subplot(2,2,3);imshow(k);title('Image Enhancement');
subplot(2,2,2);imhist(a);title('original histogram');
subplot(2,2,4);imhist(k);title('Histogram Equilization');
figure(4);subplot(2,2,1);imshow(i);title('gray Image');
subplot(2,2,3);imshow(lh);title('Image Enhancement');    
subplot(2,2,2);imhist(i);title('original histogram');
subplot(2,2,4);imhist(lh);title('Histogram Equilization');

m=bitand(a1,b1);
n=bitor(a1,b1);
figure(5);subplot(2,2,1);imshow(a1);title('Image1');
subplot(2,2,3);imshow(b1);title('Image2');
subplot(2,2,2);imshow(m);title('And of two image');
subplot(2,2,4);imshow(n);title('Or of two image');