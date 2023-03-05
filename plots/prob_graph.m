function [plots,prob_crit]=prob_graph(percolation)
%this function evaluates the mean value of percolation for a given
%probability and then perform a graph
%Parameters= percolation: table created by replay(N,M,N_stories)
%return the graph "Probability of percolation"

data=percolation;
p=[0.01:0.01:0.55, 0.55:0.005:0.68, 0.68:0.01:1];
plots=plot(p,data,'*r');
title('Probability of percolation')
xlabel('p')
ylabel('Mean Percolation')
ylim([-0.05 1.05])
y1=find(data==0);
y2=find(data==1);
prob_crit=(p(y1(1,end))+p(y2(1,1)))/2



end
