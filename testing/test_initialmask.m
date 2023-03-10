function test_initialmask()
load('config.mat','N','M','p','len','s');
for i=1:len
[mask]=initial_mask(N,M,p(i),s);
%testing that the returned matrix has the (N,M) dimension plus the zero
%borders
assert(size(mask, 1) == N+2 && size(mask, 2) == M+2);
%testing probability is really in the [0:1] interval
assert ((0<=p(i))&&(p(i)<=1));
end
end