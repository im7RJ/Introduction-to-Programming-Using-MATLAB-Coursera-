function x = under_age(a,l)
       
        if nargin < 2
            l = 21;
        end
        
       x = a<l;
            
            
