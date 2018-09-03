function plott(tred,variarg)
hold on;
ti = 0;
f = 6;
L = [-1:0.1:1];
if nargin==0
    tred=-1;
end
while(ti<=6)
    
    t1 = ti:0.01:ti+1;
    w = 2*pi*f;
    y = sin(w*t1);
    if ti == tred
        plot(t1,y,'r')
        boundary = (ti+1)*ones(1,length(L));
        plot(boundary,L,':','Color','r')
    else
        plot(t1,y,'b')
        boundary = (ti+1)*ones(1,length(L));
        plot(boundary,L,':','Color','r')
    end
    
    set(gca,'XTick',1000); % Change x-axis ticks
    set(gca,'YTick',1000); % Change y-axis ticks
    ti = ti+1;
    if ti==3
        continue;
    end
    f = f-1;
end

hold off;
end