function [label]=bigger_neighbours(label,i,j)
%This function consider the label matrix built from counter process
%function and analyze the non-zero neighbours of each elements. If they are
%biggerr than the (i,j) site, connects them in a single cluster.
%Parameters = label: working matrix; i: row index; j: column index

minimum=label(i,j);
for a=[1 -1]
    if label(i+a,j)~=0 && label(i+a,j) > minimum
       copy = label(i+a,j);
       label(i+a,j) = minimum;
       [label]=substitute(label,copy,minimum); % double check possible neighbours connected but not yet visualized
    end
    if label(i,j+a)~=0 && label(i,j+a) > minimum
       copy = label(i,j+a);
       label(i,j+a) = minimum;
       [label]=substitute(label,copy,minimum); % double check possible neighbours connected but not yet visualized
    end
end                 
end
 