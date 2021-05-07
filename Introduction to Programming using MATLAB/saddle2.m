function indices = saddle2(M)
    indices = [];
    row = max(M');
    col = min(M);
    int = intersect(row,col);

    size_int = size(int,2);
    for tr=1:size(int,2)
        for n=1:size(M,1)
            for m=1:size(M,2)
                if int(tr)== M(n,m)
                    indices(tr,1)=n;
                    indices(tr,2)=m;
                end
                
            end
            
        end
         
    end
     indices = indices;
  
end