function [x_out] = laff_scal(alpha,x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if(~isscalar(alpha) || ~isvector(x))
    x_out = 'FAILED';
    return
end

[m,n] = size(x);

if(m==1)
   for i=1:n
       x(1,i)=x(1,i)*alpha;
   end
else
   for i=1:m
       x(i,1)=x(i,1)*alpha;
   end
end

x_out = x;
return
end

