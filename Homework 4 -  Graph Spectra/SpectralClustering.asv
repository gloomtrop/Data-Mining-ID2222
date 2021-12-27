clc, clf, clear
% Load data
E1=load("example1.dat"); E1=load("example2.dat");
% Compute matrices
A1 = computeA(E1);
figure(1);
scatter(E1(:,1),E1(:,2))

D1 = computeD(A1);
L = computeL(A1, D1);
% Compute eigenvectors and eigenvalues and choose 
% k largest vector with respect to eigenvalues
% k = 5 for A1 as it has largest difference
[eigVecs, eigVals] = computeEig(L);
[eigVals, ind] = sort(diag(eigVals),'descend');
figure(2);
plot(1:length(eigVals), eigVals);
xlabel("Eigenvalue")
eigVecs = eigVecs(:, ind);
% Find k
k = findK(eigVals);
X = eigVecs(:,1:k);
% Normalize k eigenvectors
Y = normalizeEV(X);
% % Compute Kmeans
idx = kmeans(Y,k-1);
figure(3);
cmap = parula(k-1); 
hold on 
for i=1:k-1
    k = find(idx==i);
    for j=k
        e = E1(ismember(E1(:,2), k),:);
        scatter(e(:,1),e(:,2),  'c', 'MarkerEdgeColor',cmap(i,:)); 
    end
end 
hold off 