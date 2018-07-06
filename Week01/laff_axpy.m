function [ y_out ] = laff_axpy(alpha, x, y)

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

if ( m_x ~= 1 & n_x ~= 1 ) | ( m_y ~= 1 & n_y ~= 1 )
    y_out = 'FAILED';
    return
end
if ( m_x * n_x ~= m_y * n_y )
    y_out = 'FAILED';
    return
end
if (~isscalar(alpha))
    y_out = 'FAILED';
    return
end

if(m_x==1) % x row
   if(m_y==1) % y row
       for i=1:n_x
        y(1,i) = alpha*x(1,i);
       end
   else % y column
       for i=1:n_x
        y(i,1) = alpha*x(1,i);
       end
   end
else % x column
   if(m_y==1) % y row
       for i=1:m_x
        y(1,i) = alpha*x(i,1);
       end
   else % y column
       for i=1:m_x
        y(i,1) = alpha*x(i,1);
       end
   end
end

y_out = y;
return
end
