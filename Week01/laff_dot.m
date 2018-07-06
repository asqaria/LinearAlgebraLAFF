function [ alpha ] = laff_dot( x, y )

% y = copy( x, y ) copies vector x into vector y
%   Vectors x and y can be a mixture of column and/or row vector.  In other
%   words, x and y can be n x 1 or 1 x n arrays.  However, one size must 
%   equal 1 and the other size equal n.  
% 
%   The reason y is an input parameter is that the input y indicates 
%   whether the output, y_out, is a column or row vector, and then also
%   indicates whether x must be transposed (e.g., if x is a row vector and
%   y is a column vector).

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

if ( m_x ~= 1 & n_x ~= 1 ) | ( m_y ~= 1 & n_y ~= 1 )
    alpha = 'FAILED';
    return
end
if ( m_x * n_x ~= m_y * n_y )
    alpha = 'FAILED';
    return
end
alpha = 0;
if(m_x==1) % x row
   if(m_y==1) % y row
       for i=1:n_x
        alpha = alpha + (y(1,i) * x(1,i));
       end
   else % y column
       for i=1:n_x
        alpha = alpha + (y(i,1) * x(1,i));
       end
   end
else % x column
   if(m_y==1) % y row
       for i=1:m_x
        alpha = alpha + (y(1,i) * x(i,1));
       end
   else % y column
       for i=1:m_x
        alpha = alpha + (y(i,1) * x(i,1));
       end
   end
end

return
end
