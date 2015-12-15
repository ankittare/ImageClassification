function [w1,w2] = backpropagation(x,h,o,t,w1,w2,stepsize)
% w1 is feature*num_hu; w2 is num_hu*num_cls
feature = length(x);
num_cls = length(o);
num_hu = length(h);
d_o = o.*(1-o).*(t-o);
d_h = h.*(1-h).*(w2*d_o')';
w2 = w2 + stepsize*h'*d_o;
w1 = w1 + stepsize*x'*d_h;
end

