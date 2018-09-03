function plotP(tred,ratio,variarg)

if nargin==0
    tred=0;
end
% tred = tred-(ratio*(tred-(tred-1)))
hold on;
t = 0:0.01:8;
y = cos(t);
plot(t,y,'Color','w')
plot(tred,1,'^','color','r')
ylim([-1 1.5])
set(gca,'XTick',10000); % Change x-axis ticks
set(gca,'YTick',10000); % Change y-axis ticks
hold off;
end