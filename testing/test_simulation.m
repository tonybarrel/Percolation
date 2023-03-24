function test_simulation()
%This test function calls the percolation function with example inputs
%the first tests that the percolation table is made of 0 or 1
%the second one tests that the total amount of 1 are the number of
%the table elements

len = 10;
N = 50;
M = 50;
p = linspace(0.4, 0.7, len);
s = 1;
percolation=zeros(1,len);
    for z=1:len
           [mask]=initial_mask(N,M,p(z),s);
           [label]=regroup(mask);
           [perc]=results(label);
           percolation(1,z)=perc;
    end
% Test 1    
assert (all(percolation(:)==0|1), 'Test failed: percolation table not as expected')

% Test 2
expected_sum = numel(percolation(percolation==1));
actual_sum = sum(percolation(:));
assert(actual_sum == expected_sum, 'Test failed: vectorial sum of matrix elements is not equal to the number of 1s');

end 
