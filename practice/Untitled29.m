G=[46 38 29 24  13]; S=[29 27  17 26 8]; B=[29 23 19 32 7];
h=bar(1:5,[G',S',B']);
title('Medal count for top 5 countries in 2012 olympics');
ylabel('number of medals');xlabel('country');
set(gca,'XTickLabel',{'usa' 'china' 'sd' 'sd' 'sd'})
set(h(1),'FaceColor',[1 1 0]);
set(h(2),'FaceColor',[hex2dec('FF')/255 hex2dec('00')/255 hex2dec('00')/255])
legend('Gold','Silver','Bronze')