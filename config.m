N=15;
M=15;
p=[0.01:0.01:0.55, 0.55:0.005:0.68, 0.68:0.01:1];  % Probability occupied sites  
len=length(p);
rng 'default';
s=rng;
save('config.mat');
