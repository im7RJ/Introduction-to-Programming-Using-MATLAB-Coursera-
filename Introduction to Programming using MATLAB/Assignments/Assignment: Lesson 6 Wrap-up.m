function [summa,index] = max_sum(v,n)
    jj = size(v,2);
      
    if jj >= 2 && n <= jj
       for ii = 1:(jj-(n-1))
           n_cons_no = ii+n-1; 
           ii_sum  = sum(v(ii:n_cons_no));
           sum_vector(1,ii) = ii_sum;
       end
       MAX_SUM = max(sum_vector);
       size_sum_vector = size(sum_vector,2);
       initial_index = 1;
       for m = 1:size_sum_vector
           if sum_vector(1,m) == MAX_SUM
              break
           end 
           initial_index = initial_index+1;
       end
          
       summa = MAX_SUM;
       index = initial_index;
    
    elseif n > jj
            summa = 0;
            index = -1;
            
    end        
end
