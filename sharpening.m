clc 
clear all
close all

img = imread("partenon.jpg");
figure(1)
imshow(img)

kernelSharpening0 = [1 -2 1;-2 5 -2; 1 -2 1];
kernelSharpening1 = [-1 -1 -1;-1 9 -1; -1 -1 -1];
kernelSharpening3 = [0 -1 0;-1 5 -1; 0 -1 0];
kernelRepujado = [-2 -1 0;-1 1 1;0 1 2]; 

imgFilt = imfilter(img, kernelRepujado);
figure(2)
imshow(imgFilt)
