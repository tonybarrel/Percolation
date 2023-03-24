function test_smaller_neighbours()
% This test function considers 3 examples label matrices and by applying
% the smaller_neighbours function, check its validity
%first test is for smaller neighbours, the second for only bigger
%neighbours and the last one for mixed (with 0) neighbours

%Test 1 smaller neighbours
label = [1 2 0; 
         2 3 1;
         0 2 5];
expected_output = [1 1 0; 1 1 1; 0 1 5];
assert(isequal(smaller_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');

%Test 2 bigger neighbours
label = [1 6 0; 
         4 3 5;
         0 4 5];
expected_output = [1 6 0; 4 3 5; 0 4 5];
assert(isequal(smaller_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');

%Test 3 generic neighbours
label = [1 2 0; 
         2 3 0;
         0 4 5];
expected_output = [1 2 0; 2 2 0; 0 4 5];
assert(isequal(smaller_neighbours(label, 2, 2), expected_output), 'Test failed: label matrix not as expected');
end
