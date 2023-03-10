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
            if label(i+1,j)~=0 && label(i+1,j)<minimum
              minimum=label(i+1,j);
              copy=label(i,j);
              label(i,j)=minimum;
              [label]=substitute(label,copy,minimum);%use a substitute function in order to double check possible neighbours connected but not yet visualized
            else
               if label(i+1,j)~=0 && label(i+1,j)>minimum
                   copy=label(i+1,j);
               label(i+1,j)=minimum;
               [label]=substitute(label,copy,minimum);
               end
            end
            if label(i,j+1)~=0 && label(i,j+1)<minimum
              minimum=label(i,j+1);
              copy=label(i,j);
              label(i,j)=minimum;
              [label]=substitute(label,copy,minimum);
            else
               if label(i,j+1)~=0 && label(i,j+1)>minimum
                   copy=label(i,j+1);
               label(i,j+1)=minimum;
               [label]=substitute(label,copy,minimum);
               end
            end
            if label(i,j-1)~=0 && label(i,j-1)<minimum
              minimum=label(i,j-1);
              copy=label(i,j);
              label(i,j)=minimum;
              [label]=substitute(label,copy,minimum);
            else
                if label(i,j-1)~=0 && label(i,j-1)>minimum
                    copy=label(i,j-1);
               label(i,j-1)=minimum;
               [label]=substitute(label,copy,minimum);
                end
            end
            if label(i-1,j)~=0 && label(i-1,j)<minimum
              minimum=label(i-1,j);
              copy=label(i,j);
              label(i,j)=minimum;
              [label]=substitute(label,copy,minimum);
            else
               if label(i-1,j)~=0 && label(i-1,j)>minimum
               copy=label(i-1,j);
               label(i-1,j)=minimum;
               [label]=substitute(label,copy,minimum);
               end
            end
        end
    end
end 

%remove external zeros

mask = mask(2:size(mask,1)-1,2:size(mask,2)-1);
label = label(2:size(label,1)-1,2:size(label,2)-1); 

end






