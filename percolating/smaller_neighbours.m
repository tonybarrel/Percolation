function [label]=smaller_neighbours(label,i,j)
%This function consider the label matrix built from counter process
%function and analyze the non-zero neighbours of each elements. If they are
%smaller than the (i,j) site, connects them in a single cluster
%Parameters = label: working matrix; i: row index; j: column index

minimum=label(i,j);
for a=[1 -1]
    if label(i+a,j)~=0 && label(i+a,j) <= minimum
       minimum=label(i+a,j);
       copy=label(i,j);
       label(i,j)=minimum;
       [label]=substitute(label,copy,minimum); % double check possible neighbours connected but not yet visualized
    end
    if label(i,j+a)~=0 && label(i,j+a) <= minimum
       minimum=label(i,j+a);
       copy=label(i,j);
       label(i,j)=minimum;
       [label]=substitute(label,copy,minimum); % double check possible neighbours connected but not yet visualized
    end
end                 
end