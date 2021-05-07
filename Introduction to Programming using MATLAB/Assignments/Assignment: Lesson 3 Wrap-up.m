function f = taxi_fare(d,t)
    Y = ceil(d);
    a = (Y/Y)*5;
    b = (Y-1)*2;
    Z = ceil(t);
    c = Z*0.25;
    f = a+b+c;
