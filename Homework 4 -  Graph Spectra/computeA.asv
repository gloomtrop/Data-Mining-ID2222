function A = computeA(E)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
col1 = E(:,1);
col2 = E(:,2);
max_ids = max(max(col1,col2));
As = sparse(col1, col2, 1, max_ids, max_ids); 
A = full(As);
end
% sigma = 1;
% A = zeros(size(E,1), size(E,1));
% for i=1:size(E,1)    
%     for j=1:size(E,1)
%         dist = sqrt((E(i,1) - E(j,1))^2 + (E(i,2) - E(j,2))^2); 
%         A(i,j) = exp(-dist/(2*sigma^2));
%     end
% end
