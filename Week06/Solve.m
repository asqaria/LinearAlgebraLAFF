function [ A_out, b_out ] = Solve( A, b )

    L = LU_unb_var5(A);
    U = LU_unb_var5(A);
    z = Ltrsv_unb_var1(L,b);
    x = Utrsv_unb_var1(U,z);

    %------------------------------------------------------------%

  A_out = L+U;

  b_out = x;

return
