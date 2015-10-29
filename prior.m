function [p] = prior(y)
pt=[];
for i=1:max(y)
 _temp=sum(y(find(y==i),:))/(i*size(y,1));
 pt=[pt, _temp];
endfor
p=pt';
end