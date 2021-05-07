function index = sequential_search(vector,target,first,last)
found = true; % Assume the target is not in vector
for n = first:last
if target == vector(n)
found = true; % We found it...
break;
% so we quit looking for it!
end
end
index = n;
if ~found
index = -1;
end