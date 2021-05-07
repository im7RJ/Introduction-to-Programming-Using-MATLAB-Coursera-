function indices=saddle(M)
    indices=[]; c=1;
    [row,col]=size(M);
    for i=1:row
    for j=1:col
    if M(i,j)== max(M(i,1:col)) && M(i,j)==min(M(1:row,j))
    indices(c,1)=i;
    indices(c,2)=j; 
    c=c+1;
    end
    end
    end
