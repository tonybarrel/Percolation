function test_results()
% Test case 1: No percolation
    label = [1, 2, 3; 4, 5, 6; 7, 8, 9];
    [perc, last] = results(label);
    assert(perc == 0, 'Error: The perc value is incorrect');
    assert(strcmp(last, 'The system has not reached percolation'), 'Error: The last string is incorrect');
% Test case 2: Percolation
    label = [1, 2, 3; 4, 5, 6; 3, 8, 9]; %scenario where opposite corners are occupied
    [perc, last] = results(label);
    assert(perc == 1, 'Error: The perc value is incorrect'); %test gives percolation even if there's no path, in our algorithm if they have same value there is always a path
    assert(strcmp(last, 'The system is percolated'), 'Error: The last string is incorrect');


end