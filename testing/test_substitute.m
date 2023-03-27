function test_substitute()
%This test function considers two label examples and by applying the substitute 
%function tests its validity 
%In the second example it tests that every cluster has its minimum
%possible value respect to the initial label matrix

% Test case 1: Substitute multiple labels in a 3x3 matrix
label = [1 2 3; 
         4 5 6;
         2 2 9];
copy = 2;
minimum = 1;
expected = [1 1 3;
            4 5 6;
            1 1 9];
[actual] = substitute(label, copy, minimum);
assert(isequal(actual, expected), 'Test failed: substitute matrix not as expected');

% Test case 2: propriety of substitute function   
label = [0 1 0 2;
         1 1 0 2;
         0 1 1 1;
         0 0 1 0];
copy = 2;
minimum = 1;
[actual] = substitute(label, copy, minimum);
assert(all(actual(:) <= label(:)), 'Test failed: substitute matrix not as expected');
end



   
   
