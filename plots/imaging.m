function imaging()
%this function plot 6 images of different lattice for a given set of
%probabilities loaded from the config. It then saves the plots in the images
%folder

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
saveas(gcf,'././images/imaging.png');
end