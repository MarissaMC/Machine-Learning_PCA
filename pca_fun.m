function [eigenvecs] = pca_fun(X, d)

% Implementation of PCA
% input:
%   X - N*D data matrix, each row as a data sample
%   d - target dimensionality, d <= D
% output:
%   eigenvecs: D*d matrix
%
% usage:
%   eigenvecs = pca_fun(X, d);
%   projection = X*eigenvecs;
%
% CSCI 576 2014 Fall, Homework 5

% centering 
mean_X=mean(X);

[n,f]=size(X);

X_centered=X-repmat(mean_X,n,1);

% calculate eigenvec
Cov_Matrix=corrcoef(X_centered);

[E,D]=eig(Cov_Matrix);

eigen_vec=flipud(sort(diag(D)));

Dim=zeros(d,1);
eigenvecs=zeros(f,d);

for i=1:d
Dim(i)=find(diag(D)==eigen_vec(i));
eigenvecs(:,i)=E(:,Dim(i));
end


end

