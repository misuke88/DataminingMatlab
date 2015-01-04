function x = partic_sol(A, b)

    [m, n]=size(A);
    [R, pivcol]=rref([A b]);
    r= length(pivcol);
    
    if max(pivcol)== (n+1)
        x=[];
    else
        x=zeros(n,1);
        d=R(:, n+1);
        x(pivcol)=d(1:r);
    end
end

        
