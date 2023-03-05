function [label]=substitute(label,copy,minimum)
%this function modifies a label, rerunning the "for" commands in order to
%link clusters that have been initially seen as separated
%Parameters = label: initial matrix; copy: previous element value;
%minimum: new element value
%return the label modified, in our case with the minimum value 
for j=1:size(label,2)
    for i=1:size(label,1)
        if label(i,j)==copy 
           label(i,j)=minimum;
        end
    end
end
end






