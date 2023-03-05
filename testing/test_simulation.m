function test_simulation()
load('config.mat','percolation');
for i=1:size(percolation,1)
    for j=1:size(percolation,2)
        assert (percolation(i,j)==0|percolation(i,j)==1)
    end 
end
end