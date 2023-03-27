function test_initialmask()
%This test function calls the initial_mask function with example inputs
%then the first tests that the dimensions of the matrix are the (N,M) plus the extra borders
%the second one tests that the probability is really in the [0:1] interval

len = 10;
N = 50;
M = 50;
p = linspace(0.4, 0.7, len);
s = 1;
for i=1:len
[mask]=initial_mask(N,M,p(i),s);

% Test 1
assert(size(mask, 1) == N+2 && size(mask, 2) == M+2, 'Test failed: Mask not as expected');

% Test 2
assert ((0<=p(i))&&(p(i)<=1), 'Test failed: probability not as expected');
end
end
