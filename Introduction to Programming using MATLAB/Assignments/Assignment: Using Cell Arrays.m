function a = sparse2matrix(cellvec)
    z = length(cellvec);
    a = zeros(cellvec{1});
    a(1:end) = cellvec{2};
         
         for n = 3:z
             b = cellvec{n};
             a(b(1),b(2)) =  b(3);
         end
