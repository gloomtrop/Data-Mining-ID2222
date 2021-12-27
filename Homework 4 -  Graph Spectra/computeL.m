function L = computeL(A, D)
%UNTITLED3 Summary of this function goes here
%   Normalized Laplace matrix

L = sqrtm(inv(D))*A*sqrtm(inv(D));
end