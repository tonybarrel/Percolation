 function [label,mask]=counter_process(mask)
%this function evaluates the sites of the initial mask and build a second
%matrix (label) assigning a counter value for non zero sites
%Parameters = mask: configuration created by initial_mask;
%return the initial mask and the label one
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
mask = mask(2:size(mask,1)-1,2:size(mask,2)-1); 
label = label(2:size(label,1)-1,2:size(label,2)-1); 
 end

