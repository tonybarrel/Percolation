function [min_neighbour] = neighbours(label,i,j)
%this function analyze the 4 neighbours of a single element (i,j) 
%and return the minimum value 
%Parameters = label: working matrix; i: row index; j: column index
        above = label(i-1, j);
        below = label(i+1, j);
        left = label(i, j-1);
        right = label(i, j+1);
        A=[above,below,left,right];
        min_neighbour = min(A(A>0));
end        
      