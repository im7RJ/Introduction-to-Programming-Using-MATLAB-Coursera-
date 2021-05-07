function [a,b,c,d] = corners(z)
    a = z(1,1);
    b = z(1,end);
    c = z(end,1);
    d = z(end,end);
end   
