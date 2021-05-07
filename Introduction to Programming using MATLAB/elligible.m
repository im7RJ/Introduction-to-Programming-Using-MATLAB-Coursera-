function a = elligible(v,q)

    if v>88 && q>88 && ((v+q)/2)>92
       a = ~0;
    else 
       a = ~1;
end