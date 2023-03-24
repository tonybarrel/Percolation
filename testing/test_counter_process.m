function test_counter_process()
%This test function consider two example matrices and by applying the 
%counter process function check its validity 
%the first test is a same-dimensions test
%the second one check that the vectorial sum of the mask is equal to the
%last non-zero counter element of the label matrix

mask = [0 1 1 0 1;
        1 0 0 1 1;
        0 0 1 1 0;
        1 0 1 1 1;
        1 1 0 0 1];
[label,mask]=counter_process(mask);
 
%Test 1
assert (size(mask,1)==size(label,1), 'Test failed: label matrix not as expected');
assert (size(mask,2)==size(label,2), 'Test failed: label matrix not as expected');

%Test 2
expected_sum = sum(mask(:));
nonzero_label_elements = (label(label~=0));
assert (expected_sum == nonzero_label_elements(end,end),'Test failed: label matrix not as expected'); 
end