function a = caesar_new_2(char_vec,shft_amt)
     shftd_char_vec = char_vec + shft_amt;
     col = size(shftd_char_vec,2);
     CHARS = char(32:126);
     z = inf;
     
     
     for ii = 1:col
           if shftd_char_vec(1,ii)<=126 && shftd_char_vec(1,ii)>=32
                w(1,ii) = char(shftd_char_vec(1,ii));
           end     
              
         while  shftd_char_vec(1,ii)<32
                 q = 95+shftd_char_vec(1,ii);
                 r = char(q);
            w(1,ii) = r;
       
         end
         
         while  shftd_char_vec(1,ii) > 126
                z = shftd_char_vec(1,ii)-95;
                shftd_char_vec(1,ii) = z;
                
              
         end       
                 
         if z < 128        
                 x = char(z);
            w(1,ii) = x;
                 shftd_char_vec = char_vec + shft_amt;
                 z = inf;
         elseif z >= 128 && z < 10e10 
             w(1,ii) = CHARS(1,(z-126));
             shftd_char_vec = char_vec+shft_amt;
         end        
     
     end
     a = w;
             
end
   
          
        
