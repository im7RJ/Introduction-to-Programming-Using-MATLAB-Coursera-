function cypher = caesar(char_vec, shft_amt)
     double_char_vec = char_vec + shft_amt;
     for ii = 1:length(double_char_vec)
         if double_char_vec(ii) <= 126 && double_char_vec(ii) >= 32
             O_char_vector(ii) = double_char_vec(ii);
         
         elseif double_char_vec(ii) < 32
                while double_char_vec(ii) < 32
                     double_char_vec(ii) = double_char_vec(ii) + 95;
                end
                O_char_vector(ii) = double_char_vec(ii);  
          
         elseif double_char_vec(ii) > 126
                while double_char_vec(ii) > 126
                     double_char_vec(ii) = double_char_vec(ii) - 95;
                end
                O_char_vector(ii) = double_char_vec(ii);
                
         end
             
     end
     cypher = char(O_char_vector);
end
