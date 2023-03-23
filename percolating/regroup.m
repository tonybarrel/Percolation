function [label,mask]=regroup(mask)
%this function evaluates the sites of the initial mask and build a second
%matrix (label) that consider the 4 nearest neighbours of the initial site,
%assigning a counter value for non zero sites and connect them in a cluster
%Parameters = mask: configuration created by initial_mask;
%return the label matrix (and therefore the percolation pattern) and the initial
%mask

 counter=1;
 label=zeros(size(mask));
 for i=2:size(mask,1)-1
    for j=2:size(mask,2)-1
         if  mask(i,j)~=0
             label(i,j)=counter;
             counter=counter+1; 
         end
    end
 end
for i=2:size(label,1)-1
    for j=2:size(label,2)-1
        if  label(i,j)~=0
            minimum=label(i,j); %verifying in the 4 nearest neighbours the minimum value of the label
            [min_neighbour,label]=neighbours(label,i,j);
            if min_neighbour <= minimum
              minimum=min_neighbour;
              copy=label(i,j);
              label(i,j)=minimum;
              [label]=substitute(label,copy,minimum);%use a substitute function in order to double check possible neighbours connected but not yet visualized
            else
               copy=min_neighbour;
               
               [label]=substitute(label,copy,minimum);
            end
        end
    end
end
%remove external zeros
mask = mask(2:size(mask,1)-1,2:size(mask,2)-1);
label = label(2:size(label,1)-1,2:size(label,2)-1); 
end




