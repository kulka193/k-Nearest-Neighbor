function [neighbors,idx] = kNN(X,test)
m=size(X,1);
distances=zeros(m,1);
for i=1:m
    distances(i)=norm(X(i,:)-test);
end
idx=[];
neighbors=[];
for i=1:3
    [nearest,I]=min(distances);
    idx=[idx I];
    neighbors=[neighbors nearest];
    distances=distances(distances~=nearest);
end
end


