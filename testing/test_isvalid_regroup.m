function test_isvalid_regroup(mask)
[label,mask]=regroup(mask);
 for i=1:size(mask,1)-1
    for j=1:size(mask,2)-1
        %test that 0 and 1 in mask are linked also in label
        if mask(i,j) == mask(i+1,j) 
            assert (label(i,j) == label(i+1,j));
        end
        if mask(i,j) == mask(i,j+1) 
            assert (label(i,j) == label(i,j+1));
        end
    end
end
end