function test_counter_process()


for z=1:len
[mask]=initial_mask(N,M,p(z),s);
[mask,label]=counter_process(mask);
assert (size(mask,1)==size(label,1));%test same matrices dimensions
assert (size(mask,2)==size(label,2));
for i=1:size(mask,1)
    for j=1:size(mask,2)
        if mask(i,j)==0
           assert (label(i,j)==0); %test that the label matrix has the same 0 of the initial mask 
        end
    end
end
end
end