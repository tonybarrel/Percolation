function [label,mask]=regroup(mask)
%This function evaluates the sites of the initial mask and label built from
%counter process function and applyes the smaller_neighbours and the
%bigger_neighbours functions.
%Parameters = mask: configuration created by initial_mask;
%return the label matrix (therefore the percolation pattern) and the initial
%mask

[label,mask]=counter_process(mask);
for i=2:size(label,1)-1
    for j=2:size(label,2)-1
        if  label(i,j)~=0
            [label] = smaller_neighbours(label,i,j);
            [label] = bigger_neighbours(label,i,j); 
        end
    end
end
%remove external zeros
mask = mask(2:size(mask,1)-1,2:size(mask,2)-1);
label = label(2:size(label,1)-1,2:size(label,2)-1); 
end




