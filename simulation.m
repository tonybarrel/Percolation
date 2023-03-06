%main code: iterates the "regroup" function for all probabilities,
%focusing in the [0.55-0.65] interval. 
%Parameters= N,M: size of the matrix; 
%return a table "percolation" that states if the system has reached
%percolation (filling it with 1) or not (with 0)

load('config.mat','N','M','p','len');
addpath(genpath('percolating'));
addpath(genpath('plots'));
addpath(genpath('testing'));

percolation=zeros(1,len);
    for z=1:len
           [mask]=initial_mask(N,M,p(z));
           [label]=regroup(mask);
           [perc]=results(label);
           percolation(1,z)=perc;
    end

save('config.mat','percolation','-append');
prob_graph(percolation);

        
    
    