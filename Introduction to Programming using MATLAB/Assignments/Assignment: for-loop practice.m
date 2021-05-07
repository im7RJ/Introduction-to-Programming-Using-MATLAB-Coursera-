function summa = halfsum(a)
    persistent A
    A = 0;
    [row col] = size(a);
    for z = 1:row
      S = sum(a(z,z:end));
      A = A + S;
    end 
    summa = A;
end    
