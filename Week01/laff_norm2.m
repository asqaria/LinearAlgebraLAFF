function [alpha] = laff_norm2(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

if (~isvector(x))
    alpha = 'FAILED';
    return
end

alpha = 0;

if size(x,1) == 1
   for i=1:length(x)
       alpha = alpha + (x(1,i)^2);
   end
else
   for i=1:length(x)
       alpha = alpha + (x(i,1)^2);
   end
end
alpha = sqrt(alpha);
return
