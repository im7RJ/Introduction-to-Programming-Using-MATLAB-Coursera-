function [a, s] = myRand(low, high)
    a = low+rand(2,3)*(high-low);
    s = sumAllElements(a);
   
    function disco = sumAllElements(N)
         v = N(:);
         disco = sum(v);
    
    