function [plots,prob_crit]=prob_graph()
%this function evaluates the value of percolation for a given
%probability and then perform a graph
%Parameters= percolation: table created by replay(N,M)
%return the graph "Probability of percolation"
load('config.mat','percolation');
data=percolation;
p=[0.01:0.01:0.55, 0.55:0.005:0.68, 0.68:0.01:1];
figure;
plots=plot(p,data,'*r');
title('Probability of percolation')
xlabel('p')
ylabel('Mean Percolation')
ylim([-0.05 1.05])
y1=find(data==0);
y2=find(data==1);
prob_crit=(p(y1(1,end))+p(y2(1,1)))/2

saveas(gcf,'././images/prob_percol.png');
end
