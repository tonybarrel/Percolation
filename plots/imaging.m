function imaging()
load('config.mat','N','M','s','ip','lenip');
j = cool;
j(1,:) = [ 0 0 0 ];
colormap(j);
for z=1:lenip
[mask]=initial_mask(N,M,ip(z),s);
[label]=regroup(mask);
subplot(2,3,z)
imagesc(label)
title(['p = ' num2str(ip(z))])
end
end