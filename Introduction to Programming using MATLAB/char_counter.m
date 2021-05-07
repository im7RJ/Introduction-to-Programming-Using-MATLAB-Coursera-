function charnum = char_counter(fname, character)
    fid = fopen(fname,"rt");
    x = 0;
    
    if fid<0
        charnum = -1;
    end
    char = fgets(fid);
    
    while fgets(fid) > 0
    char = fgets(fid);
    array = double(char);
    key = double(character);
  
    z =  (key == array);
    y = size(z,2);
    
    for n=1:y
        if z(1,n) == 1
            x = x+1;
        end
    end    
        if x==0
            charnum = -1;
        else
            charnum = x;
        end
        
        
    end
  
end
