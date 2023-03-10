function imaging()
load('config.mat','N','M','s');
p=[0.1 0.5 0.6 0.66 0.7 1];
len=length(p);
j = cool;
j(1,:) = [ 0 0 0 ];
colormap(j);
for z=1:len
[mask]=initial_mask(N,M,p(z),s);
[label]=regroup(mask);
subplot(2,3,z)
imagesc(label)
title(['p = ' num2str(p(z))])
end
end