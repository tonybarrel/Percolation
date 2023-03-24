function test_isvalid_regroup()
% This test function considers two expected label examples and by applying the
% regroup function test its validity

% Test 1: generic non percolating case
mask = [0 0 0 0 0;
        0 1 0 1 0;
        0 0 1 0 0;
        0 1 0 1 0;
        0 0 0 0 0]; 
expected_label = [1, 0, 2; 0, 3, 0; 4, 0, 5]; % Expected output
expected_mask = [1, 0, 1; 0, 1, 0; 1, 0, 1]; % Expected output 
[actual_label, actual_mask] = regroup(mask);
assert(isequal(actual_label, expected_label), 'Test failed: label matrix not as expected');
assert(isequal(actual_mask, expected_mask), 'Test failed: mask matrix not as expected');

%Test 2: generic percolating case
mask = [0 0 0 0 0;
        0 0 1 1 0;
        0 1 0 1 0;
        0 1 1 1 0;
        0 0 0 0 0];
expected_label = [0, 1, 1; 1, 0, 1; 1, 1, 1];
expected_mask = [0, 1, 1; 1, 0, 1; 1, 1, 1];
[actual_label, actual_mask] = regroup(mask);
assert(isequal(actual_label, expected_label), 'Test failed: label matrix not as expected');
assert(isequal(actual_mask, expected_mask), 'Test failed: mask matrix not as expected');
