function [table, summa] = snarky_multable(n,m)
    persistent inerror_count;
         if isempty(inerror_count), inerror_count = 0;end
       
         if nargin < 1
             inerror_count = inerror_count + 1;
             if inerror_count < 3, error('Atleast One Input is Necessary');
             elseif inerror_count >= 3
             inerror_count = 0;
             error('What Exactly is Your Problem?')
             end
         end
         
         if nargin < 2
             m = n;
         elseif ~isscalar(m) || m < 1 || m ~= fix(m)
             inerror_count = inerror_count + 1;
             if inerror_count < 3, error('m should be a postive integer');end
         end
         
         if  ~isscalar(n) || n < 1 || n ~= fix(n)
             inerror_count = inerror_count + 1;
             if inerror_count < 3, error('n should be a postive integer');end
         end
         
         if inerror_count >= 3
             inerror_count = 0;
             error('What Exactly is Your Problem?')
         end
         
         table = (1:n)'*(1:m);
         
         if nargout == 2
             summa = sum(table(:));
         end    
             
end