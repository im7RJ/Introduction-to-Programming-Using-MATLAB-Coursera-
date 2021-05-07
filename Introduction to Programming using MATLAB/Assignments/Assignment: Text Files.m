function charnum = char_counter(fname,character)
    persistent x;
    x = 0;
    fid = fopen(fname,"rt");

       if fid<0
        charnum = -1;
       end
       
      if isfile(fname) == false
          charnum = -1;
          return;
      end
          
       if isnumeric(character)
            charnum = -1;
            return;
       end
           
       
       oneline = fgets(fid);
       while ischar(oneline)
           z = character == oneline;
           x = x + sum(z);
           oneline = fgets(fid);
       end
       charnum = x;
end
