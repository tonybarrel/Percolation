function test_dimensions_regroup()
%This test function check if the mask and label matrices have the same
%dimensions

mask = [0 1 0 1;
        1 1 0 0;
        1 0 0 0;
        0 1 1 1];
[label,mask]=regroup(mask);
assert (size(mask,1)==size(label,1), 'Test failed: dimensions are not the same'); 
assert (size(mask,2)==size(label,2), 'Test failed: dimensions are not the same'); 
end


