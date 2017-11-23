%% Laplacian pyramid
close all;
clc;
Img= imread('Image.bmp');
imshow(Img);
title('Original Image'); % Level 1 image of Laplacian Pyramids
GK=[1/16 1/4 6/16 1/4 1/16]; % Laplacian Kernel (binomial kernel)
%% Laplacian Pyramid
%% Level 2 
O11=zeros(1,958);
O22=zeros(1,1274);
C11 = [O22;O22;Img;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
for i=3:956
    for j=3:1276
        D((i-2),(j-2))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
Im=Img-D;
figure;
imshow(Im);
D11=D(1:2:end,:);
D22=transpose(D11);
D=D22(1:2:end,:);
D=transpose(D); % Downsampling step
title('Laplacian Pyramid level 2 Image');
%% Level 3 
O11=zeros(1,481);
O22=zeros(1,637);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
E=D;
for i=3:479
    for j=3:639
        D((i-2),(j-2))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
Im=E-D;
figure;
imshow(Im);
D11=D(1:2:end,:);
D22=transpose(D11);
D=D22(1:2:end,:);
D=transpose(D); % Downsampling step
title('Laplacian Pyramid level 3 Image');
%% Level 4 
O11=zeros(1,243);
O22=zeros(1,319);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
E=D;
for i=3:241
    for j=3:321
        D((i-2),(j-2))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
Im=E-D;
figure;
imshow(Im);
D11=D(1:2:end,:);
D22=transpose(D11);
D=D22(1:2:end,:);
D=transpose(D); % Downsampling step
title('Laplacian Pyramid level 4 Image');
%% Level 5 
O11=zeros(1,124);
O22=zeros(1,160);
C11 = [O22;O22;D;O22;O22];
C22 = [O11;O11;transpose(C11);O11;O11];
C = transpose(C22);
E=D;
for i=3:122
    for j=3:162
        D((i-2),(j-2))= GK(1,1)*C(i,j-2) +  GK(1,2)*C(i,j-1) + GK(1,3)*C(i,j) + GK(1,4)*C(i,j+1) + GK(1,5)*C(i,j+2);
    end
end
Im=E-D;
figure;
imshow(Im);
title('Laplacian Pyramid level 5 Image');
