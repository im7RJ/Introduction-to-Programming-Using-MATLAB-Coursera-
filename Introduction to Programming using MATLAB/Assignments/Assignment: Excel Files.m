function dist = get_distance(city1,city2)
    city1 = string(city1); city2 = string(city2);
    [dist names total] = xlsread("Distances.xlsx");
    dist = string(dist); names = string(names); total = string(total);
    [ii, jj] = size(total);
        for n = 2:ii
            if city1 == names{n,1}
                x = n;
                break;
            end
            if n==ii && city1~=names{ii,1}
                dist = -1;
                return;
            end    
        end
        
        for n = 2:jj
            if city2 == names{1,n}
                y = n;
                break;
            end
             if n==jj && city2~=names{1,jj}
                dist = -1;
                return;
            end    
        end
        dist = total(x,y);
        dist = double(dist);
           
    
    
end
