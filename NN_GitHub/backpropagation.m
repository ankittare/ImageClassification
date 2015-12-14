function [w1,w2] = backpropagation(x,h,o,t,w1,w2)
% w1 is feature*num_hu; w2 is num_hu*num_cls
stepsize = 0.1;
feature = length(x);
num_cls = length(o);
num_hu = length(h);
d_o = o.*(1-o).*(t-o);
d_h = h.*(1-h).*(w2*d_o')';
for i=1:num_hu
    for j = 1:num_cls
        w2(i,j) = w2(i,j) + stepsize*d_o(j)*h(i);
    end
end
for i = 1:feature
    for j = 1:num_hu
        w1(i,j) = w1(i,j) + stepsize*d_h(j)*x(i);
    end
end
end

