function test_substitute()
% Test case 1: Substitute multiple labels in a 3x3 matrix
label = [1 2 3; 4 2 6; 2 2 9];
copy = 2;
minimum = 0;
expected = [1 0 3; 4 0 6; 0 0 9];
assert(isequal(substitute(label, copy, minimum), expected));
% Test case 2: substitute function (in the regroup one) every cluster has its minimum
   %possible value (minimum one)
load('config.mat','N','M','p','len');
for z=1:len
   [mask]=initial_mask(N,M,p(z));
   [label]=counter_process(mask);
   copy=label;
   [label]=regroup(mask);
    for j=1:size(label,2)
        for i=1:size(label,1)
            assert (label(i,j)<=copy(i,j))
        end
    end
end
end