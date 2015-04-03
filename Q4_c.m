% 4_c

Face_Mat=zeros(640,2500);

for n=1:640
    Face_Mat(n,:)=reshape(image{n},1,2500);
end

d=5;
[eigenvecs]=pca_fun(Face_Mat,d);

%[W, eigenvecs] = princomp(Face_Mat');


figure
imshow(reshape(eigenvecs(:,1),50,50),[],'InitialMagnification', 200);
figure
imshow(reshape(eigenvecs(:,2),50,50),[],'InitialMagnification', 200);
figure
imshow(reshape(eigenvecs(:,3),50,50),[],'InitialMagnification', 200);
figure
imshow(reshape(-eigenvecs(:,4),50,50),[],'InitialMagnification', 200);
figure
imshow(reshape(eigenvecs(:,5),50,50),[],'InitialMagnification', 200);