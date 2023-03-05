function test_dimensions_regroup(mask)

[label,mask]=regroup(mask);
assert (size(mask,1)==size(label,1)); % test same matrices dimensions
assert (size(mask,2)==size(label,2));
end


