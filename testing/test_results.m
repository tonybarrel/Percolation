function test_results()
%This test function consider two examples of label and by applying the
%results function test where it has or not percolation
%in the second test it gives percolation even if there's no path, but in 
%our algorithm if they have same value there is always a path

% Test case 1: No percolation
    label = [1, 2, 3; 4, 5, 6; 7, 8, 9];
    [perc, last] = results(label);
    assert(perc == 0, 'Error: The perc value is incorrect');
    assert(strcmp(last, 'The system has not reached percolation'), 'Error: The last string is incorrect');
% Test case 2: Percolation scenario where opposite corners are occupied
    label = [1, 2, 3; 4, 5, 6; 3, 8, 9]; 
    [perc, last] = results(label);
    assert(perc == 1, 'Error: The perc value is incorrect'); 
    assert(strcmp(last, 'The system is percolated'), 'Error: The last string is incorrect');
end