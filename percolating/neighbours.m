function [min_neighbour,label] = neighbours(label,i,j)
%this function analyze the 4 neighbours of a single element (i,j) 
%find the minimum value among them excluding the 0 
%and replace all the non-zero neighbour with it.

%Parameters = label: working matrix; i: row index; j: column index
        above = label(i-1, j);
        below = label(i+1, j);
        left = label(i, j-1);
        right = label(i, j+1);
        A=[above,below,left,right];
        min_neighbour = min(A(A>0));
        
        A(A~=0)=min_neighbour;
        label(i-1, j) = A(1,1);
        label(i+1, j) = A(1,2);
        label(i, j-1) = A(1,3);
        label(i, j+1) = A(1,4);
        
        

end        
      