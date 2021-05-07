function [a, b] = minimax(M)
    v1 = max(M,[],2);
    v2 = min(M,[],2);
    s1 = max(M,[],'all');
    s2 = min(M,[],'all');
    a = (v1 - v2)'; b = (s1 - s2);
end
   
