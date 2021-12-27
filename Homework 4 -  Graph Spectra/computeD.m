function D = computeD(A)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
D = diag(sum(A,2));
end