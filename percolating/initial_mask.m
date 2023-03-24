function [mask]=initial_mask(N,M,p,s)
% this function generates a zeros (N,M) matrix filling it with 1 with a
% probability p
%Parameters= N,M: dimensions of the matrix; p: probability of percolation;
%            s: type of generation seed
%return the mask with extra borders

if 1<=p || p<=0
    error 'valueError: Probability must be in the [0:1] interval'
end   
if N<1|| M<1
    error 'valueError: Both dimensions of the lattice must be > 1'
end    
rng(s); 
mask=rand(N,M)<p;
% adding extra borders for boundaries problems
mask = [zeros(1,size(mask,2)); mask; zeros(1,size(mask,2))]; 
mask = [zeros(size(mask,1),1), mask, zeros(size(mask,1),1)];
end
        