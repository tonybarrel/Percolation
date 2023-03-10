function [mask]=initial_mask(N,M,p,s)
% this function generates a zeros (N,M) matrix filling it with 1 with a
% probability p
%Parameters= N,M: dimensions of the matrix; p: probability of percolation;
%            s: type of generation seed
%return the mask with extra borders
if 0<=p && p<=1
    if N>1 && M>1
        rng(s); %
        mask=rand(N,M)<p;
              % adding extra borders for boundaries problems
        mask = [zeros(1,size(mask,2)); mask; zeros(1,size(mask,2))]; 
        mask = [zeros(size(mask,1),1), mask, zeros(size(mask,1),1)];
    else 
        disp(['valueError: Both dimensions of the lattice must be > 1, but are ' num2str(N) ' and ' num2str(M)])
    end
else
    disp('valueError: Probability must be in the [0:1] interval')
end
end
        