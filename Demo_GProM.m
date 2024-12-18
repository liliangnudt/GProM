clear;
clc;
warning off;
path = addpath(genpath('./'));

% Remark: We release the strongest option GProM-LG in our framework.

%% dataset
Dataset_Name = {'Dermatology'};
Dataset_Path = './data/';
load(strcat(Dataset_Path,Dataset_Name{1}));
disp(Dataset_Name{1});
%% parameter setting
n = size(Y,1);
v = length(X);
k = length(unique(Y));
m = [1:4]*k;
xi = [0.1:0.1:0.9];
[res]=main(X,Y,m,xi);
