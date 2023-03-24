function test_bigger_neighbours()
% This test function considers 3 examples label matrices and by applying
% the bigger_neighbours function, check its validity
%first test is for bigger neighbours, the second for only smaller
%neighbours and the last one for mixed (with 0) neighbours

%Test 1 bigger neighbours
label = [1 4 0; 
         3 2 5;
         0 5 1];
expected_output = [1 2 0; 2 2 2; 0 2 1];
assert(isequal(bigger_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');

%Test 2 smaller neighbours
label = [1 2 0; 
         2 3 1;
         0 2 5];
expected_output = [1 2 0; 2 3 1; 0 2 5];
assert(isequal(bigger_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');

%Test 3 generic neighbours
label = [1 2 0; 
         2 3 0;
         0 4 5];
expected_output = [1 2 0; 2 3 0; 0 3 5];
assert(isequal(bigger_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');
end