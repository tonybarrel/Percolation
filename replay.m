
%main code: iterates the "regroup" function for all probabilities,
%focusing in the [0.5-0.6] interval. then iterates the process for
%different "stories".
%Parameters= N,M: size of the matrix; N_stories: number of repeated
%percolations for each probability.
%return a table "percolation" that states if the system has reached
%percolation (filling it with 1) or not (with 0)
%Raise error if number of stories is less than 1 
load('config.mat','N','M','N_stories','p','len');
if N_stories<1
    disp(['valueError: Number of analyzed systems must be at least 1, but are ' num2str(N_stories)])
else
     
    percolation=zeros(N_stories,len);
    for storyi=1:N_stories
        for z=1:len
            [mask]=initial_mask(N,M,p(z));
            [label]=regroup(mask);
            [perc]=results(label);
            percolation(storyi,z)=perc;
        end
    end
end
save('config.mat','percolation','-append');
prob_graph(percolation);

        
    
    