
clear all;
close all, clear all, clc, format compact
% number of samples of each class
K=30;
% define classes
q=0.6;
A= [rand(1,K)-q; rand(1,K)+q];
B= [rand(1,K)+q; rand(1,K)+q];
C= [rand(1,K)+q; rand(1,K)-q];
D= [rand(1,K)-q; rand(1,K)-q];

plot(A(1, :), A(2, :), 'bs')
hold on
grid on
plot(B(1,:), B(2, :), 'r+')
plot(C(1,:), C(2, :), 'go')
plot(D(1,:), D(2, :), 'm*')

% text labels for classes
text(0.5-q, 0.5+2*q, 'Class A')
text(0.5+q, 0.5+2*q, 'Class B')
text(0.5+q, 0.5-2*q, 'Class C')
text(0.5-q, 0.5-2*q, 'Class D')

% define output coding for classes
a=[0 1]';
b=[1 1]';
c=[1 0]';
d=[0 0]';

[m, n]=size(A);
print m;
