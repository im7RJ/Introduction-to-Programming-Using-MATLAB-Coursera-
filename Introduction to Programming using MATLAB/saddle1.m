function indices = saddle1(M)
    indices = [];
    m=0;
    
      matrixsize = size(M);
              maxval_row = max(M,[],2);
              minval_col = min(maxval_row);
              saddle_loc = maxval_row == minval_col;
              [row, col] = find(M == maxval_row);
              for n=1:size(row,2)
                  m=m+1;
              holder(n,1) = row(n);
              holder(n,2) = col(m);
              end
              indices = holder;   

   
end

