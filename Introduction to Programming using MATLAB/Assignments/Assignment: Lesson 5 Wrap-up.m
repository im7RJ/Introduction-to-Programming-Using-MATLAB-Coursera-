function a = valid_date(y,m,d)
       
    if isscalar(y) && y >= 0 && y == fix(y) && isscalar(m) && (0<m) && (m<=12)...
        && m == fix(m) && isscalar(d) && (0<d) && (d<=31) && d == fix(d)
       
        if (y/400) == fix(y/400) || ((y/4) == fix(y/4) && ~((y/100) == fix(y/100)))
           b2 = [31 29 31 30 31 30 31 31 30 31 30 31];
           c2 = b2(m);  
           a = (d <= c2);
        
        elseif (y/100) == fix(y/100)
           b1 = [31 28 31 30 31 30 31 31 30 31 30 31];
           c1 = b1(m);
           a = (d <= c1);
          
        
        elseif ~((y/100) == fix(y/100) && (y/400) == fix(y/400) && (y/4) == fix(y/4))
            b3 = [31 28 31 30 31 30 31 31 30 31 30 31];
            c3 = b3(m);
            a = (d <= c3);
        end    
          
           
    else 
           a = ~1;
       end      
            
     end
     
     
           
