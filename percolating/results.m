function [perc,last]=results(label)
%this function evaluates the border of a matrix and analyze if there are
%common elements. If so, claim that percolation has occured
%Parameters = label: investigated matrix created by regroup;
%return the "perc" value (1 if there's percolation, 0 otherwise) and "last"
%string 

first_row=label(1,:);
last_row=label(end,:);
first_column=label(:,1);
last_column=label(:,end);
common_rows=first_row(ismember(first_row,last_row)); %find same elements in first and last row
common_columns=first_column(ismember(first_column,last_column)); %find same elements in first and last column
common_border=common_rows(ismember(common_rows,common_columns)); %find common elements in borders
sum_common_elements=sum(common_border);
if sum_common_elements==0  
    last=('The system has not reached percolation'); %0 are non occupied sites
    perc=0;
else
     last=('The system is percolated');
     perc=1;
end

end