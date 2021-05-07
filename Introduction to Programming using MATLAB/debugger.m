function x = rand_int(n,m)
    x = randi(10,n,m);
    fprintf('The Last Element on the Last Row is %d\n',x(n,m));
end