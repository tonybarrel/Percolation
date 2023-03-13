N=15;
M=15;
p=[0.01:0.01:0.55, 0.55:0.005:0.68, 0.68:0.01:1];  % Probability occupied sites  
len=length(p);
rng (0,'twister'); %Set the random number generator to the default seed (0)
s=rng;
ip=[0.1 0.5 0.65 0.66 0.7 1]; % Probability for the imaging function
lenip=length(ip);
save('config.mat');
save('./plots/config.mat');
save('./testing/config.mat');