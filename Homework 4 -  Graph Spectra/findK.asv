function k = findK(eigVals)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = 0;
max_delta = 0;
for i=1:length(eigVals)-2
    delta = eigVals(i) - eigVals(i+1);
    if delta > max_delta
        max_delta = delta;
        k = i+1;
    end
end