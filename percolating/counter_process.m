 function [label,mask]=counter_process(mask)
%this function evaluates the sites of the initial mask and build a second
%matrix (label) assigning a counter value for non zero sites
%Parameters = mask: configuration created by initial_mask;
%return the initial mask and the label one
 counter=1;
 label=zeros(size(mask));
 
 for i=1:size(mask,1)
    for j=1:size(mask,2)
         if  mask(i,j)~=0
             label(i,j)=counter;
             counter=counter+1; 
         end
    end
 end
 end

