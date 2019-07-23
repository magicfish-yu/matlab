function weiqi_wuziqi
%%%%按1键进入为期模式，按5键进入五子棋模式
    axis equal
    axis([-10,10,-10,10])
    set(gca,'xtick',[],'ytick',[],'xcolor','w','ycolor','w')
    set(gca,'color',[0.8392,0.7216,0.3804])
    hold on
    x1=[-9,-9,-8,-8,-7,-7,-6,-6,-5,-5,-4,-4,-3,-3,-2,-2,-1,-1,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9];
    y1=[-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9,9,-9,-9,9];
    x2=[-9,9,9,-9,-9];
    y2=[9,9,-9,-9,9];
    x3=[-9.2,9.2,9.2,-9.2,-9.2];
    y3=[9.2,9.2,-9.2,-9.2,9.2];
    x4=[-6,-6,-6,0,0,0,6,6,6];
    y4=[6,0,-6,6,0,-6,6,0,-6];
    plot(x1,y1,'k')
    plot(y1,x1,'k')
    plot(x2,y2,'k','LineWidth',2)
    plot(x3,y3,'k')
    scatter(gca,x4,y4,30,'k','filled')
    %解释color=[x,y,0/1（周围是否有空子，1代表有，0代表没有）,0/1(是否要提子，1代表提子，0代表不提子）]
    beifunblack=[20 20 1 0];
    beifunwhite=[-20 -20 1 0];
    begin=[40,40];
    win=0;
    qiju=1;
    control=1;
    black=[20,20,1,0];
    white=[-20,-20,1,0];
    postion=[0 0 1 0];
    bu=[10 10;10 9;10 8;10 7;10 6;10 5;10 4;10 3;10 2;10 1;10 0;10 -10;10 -9;10 -8;10 -7;
        10 -6;10 -5;10 -4;10 -3;10 -2;10 -1;-10 10;-10 9;-10 8;-10 7;-10 6;-10 5;-10 4;-10 3;-10 2;-10 1;-10 0;
        -10 -10;-10 -9;-10 -8;-10 -7;-10 -6;-10 -5;-10 -4;-10 -3;-10 -2;-10 -1;
        -9 10;-8 10;-7 10;-6 10;-5 10;-4 10;-3 10;-2 10;-1 10;0 10;
        9 10;8 10;7 10;6 10;5 10;4 10;3 10;2 10;1 10;
       -9 -10;-8 -10;-7 -10;-6 -10;-5 -10;-4 -10;-3 -10;-2 -10;-1 -10;0 -10;
        9 -10;8 -10;7 -10;6 -10;5 -10;4 -10;3 -10;2 -10;1 -10];
    plotblack=scatter(gca,black(:,1),black(:,2),150,'k','filled');
    plotwhite=scatter(gca,white(:,1),white(:,2),150,'w','filled');
    plotpostion=scatter(gca,postion(1,1),postion(1,2),150,'rx');
    plotwin=plot(gca,50,50,'r','LineWidth',2);
    set(gcf, 'KeyPressFcn', @key)                                                     
    fps = 5;   
    game = timer('ExecutionMode', 'FixedRate', 'Period',1/fps, 'TimerFcn', @weiqigame);
    start(game) 
set(gcf,'tag','ca','CloseRequestFcn',@clo);
    function clo(~,~)
        stop(game)
        delete(findobj('tag','ca'))
        clf
        close
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function weiqigame(~,~)
        if qiju==1
            t1=[black(end,1:2)+[1 0];black(end,1:2)+[-1 0];black(end,1:2)+[0 1];black(end,1:2)+[0 -1]];
            t2=[white(end,1:2)+[1 0];white(end,1:2)+[-1 0];white(end,1:2)+[0 1];white(end,1:2)+[0 -1]];
            total=[black(:,1:2);white(:,1:2);bu];
            lalala1=sum(ismember(t1,total,'rows'));
            lalala2=sum(ismember(t2,total,'rows'));
            lalala3=ismember(t1,black(:,1:2),'rows');
            lalala4=ismember(t1,white(:,1:2),'rows');
            lalala5=ismember(t2,black(:,1:2),'rows');
            lalala6=ismember(t2,white(:,1:2),'rows');
            if isempty(lalala3)
            else
                A1=lalala3*[1 0];
                A2=lalala3*[-1 0];
                A3=lalala3*[0 -1];
                A4=lalala3*[0 1];
                extand3=[t1+A1;t1+A2;t1+A3;t1+A4];
                xun3=ismember(extand3,total,'rows');
                pan11=sum(xun3([1 5 9 13],1));pan12=sum(xun3([2 6 10 14],1));
                pan13=sum(xun3([3 7 11 15],1));pan14=sum(xun3([4 8 12 16],1));
                if ~isempty(ismember((black(end,1:2)+[1 0]),black(:,1:2),'rows'))
                     if pan11==4
                        black(ismember(black(:,1:2),(black(end,1:2)+[1 0]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(black(end,1:2)+[1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[-1 0]),black(:,1:2),'rows'))
                     if pan12==4
                        black(ismember(black(:,1:2),(black(end,1:2)+[-1 0]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(black(end,1:2)+[-1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[0 1]),black(:,1:2),'rows'))
                     if pan13==4
                        black(ismember(black(:,1:2),(black(end,1:2)+[0 1]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(black(end,1:2)+[0 1]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[0 -1]),black(:,1:2),'rows'))
                     if pan14==4
                        black(ismember(black(:,1:2),(black(end,1:2)+[0 -1]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(black(end,1:2)+[0 -1]),'rows')==1,3)=1; 
                     end
                end
            end
            if isempty(lalala4)
            else
                B1=lalala4*[1 0];
                B2=lalala4*[-1 0];
                B3=lalala4*[0 -1];
                B4=lalala4*[0 1];
                extand4=[t1+B1;t1+B2;t1+B3;t1+B4];
                xun4=ismember(extand4,total,'rows');
                pan21=sum(xun4([1 5 9 13],1));pan22=sum(xun4([2 6 10 14],1));
                pan23=sum(xun4([3 7 11 15],1));pan24=sum(xun4([4 8 12 16],1));
                if ~isempty(ismember((black(end,1:2)+[1 0]),white(:,1:2),'rows'))
                     if pan21==4
                        white(ismember(white(:,1:2),(black(end,1:2)+[1 0]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(black(end,1:2)+[1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[-1 0]),white(:,1:2),'rows'))
                     if pan22==4
                        white(ismember(white(:,1:2),(black(end,1:2)+[-1 0]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(black(end,1:2)+[-1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[0 1]),white(:,1:2),'rows'))
                     if pan23==4
                        white(ismember(white(:,1:2),(black(end,1:2)+[0 1]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(black(end,1:2)+[0 1]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((black(end,1:2)+[0 -1]),white(:,1:2),'rows'))
                     if pan24==4
                        white(ismember(white(:,1:2),(black(end,1:2)+[0 -1]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(black(end,1:2)+[0 -1]),'rows')==1,3)=1; 
                     end
                end
            end
            if isempty(lalala5)
            else
                C1=lalala5*[1 0];
                C2=lalala5*[-1 0];
                C3=lalala5*[0 -1];
                C4=lalala5*[0 1];
                extand5=[t2+C1;t2+C2;t2+C3;t2+C4];
                xun5=ismember(extand5,total,'rows');
                pan31=sum(xun5([1 5 9 13],1));pan32=sum(xun5([2 6 10 14],1));
                pan33=sum(xun5([3 7 11 15],1));pan34=sum(xun5([4 8 12 16],1));
                if ~isempty(ismember((white(end,1:2)+[1 0]),black(:,1:2),'rows'))
                     if pan31==4
                        black(ismember(black(:,1:2),(white(end,1:2)+[1 0]),'rows')==1,3)=0;
                     else
                         black(ismember(black(:,1:2),(white(end,1:2)+[1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[-1 0]),black(:,1:2),'rows'))
                     if pan32==4
                        black(ismember(black(:,1:2),(white(end,1:2)+[-1 0]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(white(end,1:2)+[-1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[0 1]),black(:,1:2),'rows'))
                     if pan33==4
                        black(ismember(black(:,1:2),(white(end,1:2)+[0 1]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(white(end,1:2)+[0 1]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[0 -1]),black(:,1:2),'rows'))
                     if pan34==4
                        black(ismember(black(:,1:2),(white(end,1:2)+[0 -1]),'rows')==1,3)=0;
                     else
                        black(ismember(black(:,1:2),(white(end,1:2)+[0 -1]),'rows')==1,3)=1; 
                     end
                end
            end
            if isempty(lalala6)
            else
                D1=lalala6*[1 0];
                D2=lalala6*[-1 0];
                D3=lalala6*[0 -1];
                D4=lalala6*[0 1];
                extand6=[t2+D1;t2+D2;t2+D3;t2+D4];
                xun6=ismember(extand6,total,'rows');
                pan41=sum(xun6([1 5 9 13],1));pan42=sum(xun6([2 6 10 14],1));
                pan43=sum(xun6([3 7 11 15],1));pan44=sum(xun6([4 8 12 16],1));
                if ~isempty(ismember((white(end,1:2)+[1 0]),white(:,1:2),'rows'))
                     if pan41==4
                        white(ismember(white(:,1:2),(white(end,1:2)+[1 0]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(white(end,1:2)+[1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[-1 0]),white(:,1:2),'rows'))
                     if pan42==4
                        white(ismember(white(:,1:2),(white(end,1:2)+[-1 0]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(white(end,1:2)+[-1 0]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[0 1]),white(:,1:2),'rows'))
                     if pan43==4
                        white(ismember(white(:,1:2),(white(end,1:2)+[0 1]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(white(end,1:2)+[0 1]),'rows')==1,3)=1; 
                     end
                end
                if ~isempty(ismember((white(end,1:2)+[0 -1]),white(:,1:2),'rows'))
                     if pan44==4
                        white(ismember(white(:,1:2),(white(end,1:2)+[0 -1]),'rows')==1,3)=0;
                     else
                        white(ismember(white(:,1:2),(white(end,1:2)+[0 -1]),'rows')==1,3)=1; 
                     end
                end
            end
            if lalala1==4
                black(end,3)=0;
            else
                black(end,3)=1;
            end
            if lalala2==4
                white(end,3)=0;
            else
                white(end,3)=1;
            end
            if control==1
                circle=black;
                while ~isempty(circle)
                    begin1=circle(1,1:2);
                    while ~isempty(intersect([begin1+ones(length(sum(begin1,2)),1)*[1 0];begin1+ones(length(sum(begin1,2)),1)*[-1 0];begin1+ones(length(sum(begin1,2)),1)*[0 1];begin1+ones(length(sum(begin1,2)),1)*[0 -1];begin1],circle(:,1:2),'rows'))
                        m=length(sum(begin1,2));
                        n=ones(m,1);
                        progress=[begin1+n*[1 0];begin1+n*[-1 0];begin1+n*[0 1];begin1+n*[0 -1];begin1];
                        [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                        begin1=unique([common;begin1],'rows');
                        circle(b,:)=[];
                    end
                    [~,~,b]=intersect(begin1,black(:,1:2),'rows');
                    if sum(black(b,3))==0
                        black(b,4)=1;
                    end
                end
                k1=length(sum(black(black(:,4)==1,1:2),2));
                q1=unique([black(black(:,4)==1,1:2)+ones(k1,1)*[1 0];black(black(:,4)==1,1:2)+ones(k1,1)*[-1 0];black(black(:,4)==1,1:2)+ones(k1,1)*[0 1];black(black(:,4)==1,1:2)+ones(k1,1)*[0 -1]],'rows');
                [~,l11,~]=intersect(black(:,1:2),q1,'rows');
                [~,l12,~]=intersect(white(:,1:2),q1,'rows');
                black(l11,3)=1;
                white(l12,3)=1;
                black(black(:,4)==1,:)=[];
                circle=white;
                while ~isempty(circle)
                    begin2=circle(1,1:2);
                    while ~isempty(intersect([begin2+ones(length(sum(begin2,2)),1)*[1 0];begin2+ones(length(sum(begin2,2)),1)*[-1 0];begin2+ones(length(sum(begin2,2)),1)*[0 1];begin2+ones(length(sum(begin2,2)),1)*[0 -1];begin2],circle(:,1:2),'rows'))
                        m=length(sum(begin2,2));
                        n=ones(m,1);
                        progress=[begin2+n*[1 0];begin2+n*[-1 0];begin2+n*[0 1];begin2+n*[0 -1];begin2];
                        [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                        begin2=unique([common;begin2],'rows');
                        circle(b,:)=[];
                    end
                    [~,~,b]=intersect(begin2,white(:,1:2),'rows');
                    if sum(white(b,3))==0
                        white(b,4)=1;
                    end
                end
                k2=length(sum(white(white(:,4)==1,1:2),2));
                q2=unique([white(white(:,4)==1,1:2)+ones(k2,1)*[1 0];white(white(:,4)==1,1:2)+ones(k2,1)*[-1 0];white(white(:,4)==1,1:2)+ones(k2,1)*[0 1];white(white(:,4)==1,1:2)+ones(k2,1)*[0 -1]],'rows');
                [~,l13,~]=intersect(black(:,1:2),q2,'rows');
                [~,l14,~]=intersect(white(:,1:2),q2,'rows');
                black(l13,3)=1;
                white(l14,3)=1;
                white(white(:,4)==1,:)=[];
            end
            if control==0
                circle=white;
                while ~isempty(circle)
                    begin2=circle(1,1:2);
                    while ~isempty(intersect([begin2+ones(length(sum(begin2,2)),1)*[1 0];begin2+ones(length(sum(begin2,2)),1)*[-1 0];begin2+ones(length(sum(begin2,2)),1)*[0 1];begin2+ones(length(sum(begin2,2)),1)*[0 -1];begin2],circle(:,1:2),'rows'))
                        m=length(sum(begin2,2));
                        n=ones(m,1);
                        progress=[begin2+n*[1 0];begin2+n*[-1 0];begin2+n*[0 1];begin2+n*[0 -1];begin2];
                        [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                        begin2=unique([common;begin2],'rows');
                        circle(b,:)=[];
                    end
                    [~,~,b]=intersect(begin2,white(:,1:2),'rows');
                    if sum(white(b,3))==0
                        white(b,4)=1;
                    end
                end
                k3=length(sum(white(white(:,4)==1,1:2),2));
                q3=unique([white(white(:,4)==1,1:2)+ones(k3,1)*[1 0];white(white(:,4)==1,1:2)+ones(k3,1)*[-1 0];white(white(:,4)==1,1:2)+ones(k3,1)*[0 1];white(white(:,4)==1,1:2)+ones(k3,1)*[0 -1]],'rows');
                [~,l11,~]=intersect(black(:,1:2),q3,'rows');
                [~,l12,~]=intersect(white(:,1:2),q3,'rows');
                black(l11,3)=1;
                white(l12,3)=1;
                white(white(:,4)==1,:)=[];
                circle=black;
                while ~isempty(circle)
                    begin1=circle(1,1:2);
                    while ~isempty(intersect([begin1+ones(length(sum(begin1,2)),1)*[1 0];begin1+ones(length(sum(begin1,2)),1)*[-1 0];begin1+ones(length(sum(begin1,2)),1)*[0 1];begin1+ones(length(sum(begin1,2)),1)*[0 -1];begin1],circle(:,1:2),'rows'))
                        m=length(sum(begin1,2));
                        n=ones(m,1);
                        progress=[begin1+n*[1 0];begin1+n*[-1 0];begin1+n*[0 1];begin1+n*[0 -1];begin1];
                        [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                        begin1=unique([common;begin1],'rows');
                        circle(b,:)=[];
                    end
                    [~,~,b]=intersect(begin1,black(:,1:2),'rows');
                    if sum(black(b,3))==0
                        black(b,4)=1;
                    end
                end
                k2=length(sum(black(black(:,4)==1,1:2),2));
                q2=unique([black(black(:,4)==1,1:2)+ones(k2,1)*[1 0];black(black(:,4)==1,1:2)+ones(k2,1)*[-1 0];black(black(:,4)==1,1:2)+ones(k2,1)*[0 1];black(black(:,4)==1,1:2)+ones(k2,1)*[0 -1]],'rows');
                [~,l13,~]=intersect(black(:,1:2),q2,'rows');
                [~,l14,~]=intersect(white(:,1:2),q2,'rows');
                black(l13,3)=1;
                white(l14,3)=1;
                black(black(:,4)==1,:)=[];
            end
        end
%%%%%%%%%%%以下是五子棋的暴力搜索以及判定程序%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        if qiju==5
            circle=black(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 0];begin+ones(length(sum(begin,2)),1)*[-1 0];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 0];begin+n*[-1 0];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=1;
            end
            circle=black(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[0 1];begin+ones(length(sum(begin,2)),1)*[0 -1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[0 1];begin+n*[0 -1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=1;
            end
            circle=black(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 1];begin+ones(length(sum(begin,2)),1)*[-1 -1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 1];begin+n*[-1 -1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=1;
            end
            circle=black(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 -1];begin+ones(length(sum(begin,2)),1)*[-1 1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 -1];begin+n*[-1 1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=1;
            end
            circle=white(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 0];begin+ones(length(sum(begin,2)),1)*[-1 0];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 0];begin+n*[-1 0];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=2;
            end
            circle=white(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[0 1];begin+ones(length(sum(begin,2)),1)*[0 -1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[0 1];begin+n*[0 -1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=2;
            end
            circle=white(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 1];begin+ones(length(sum(begin,2)),1)*[-1 -1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 1];begin+n*[-1 -1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=2;
            end
            circle=white(:,1:2);
            begin=circle(end,:);
            while ~isempty(intersect([begin+ones(length(sum(begin,2)),1)*[1 -1];begin+ones(length(sum(begin,2)),1)*[-1 1];begin],circle(:,1:2),'rows'))
                    m=length(sum(begin,2));
                    n=ones(m,1);
                    progress=[begin+n*[1 -1];begin+n*[-1 1];begin];
                    [common,~,b]=intersect(progress,circle(:,1:2),'rows');
                    begin=unique([common;begin],'rows');
                    circle(b,:)=[];
            end
            if length(sum(begin,2))>4
                plotwin=plot(gca,begin(:,1),begin(:,2),'r','LineWidth',2);
                win=2;
            end
        end
%%%%%%%%%%%%%%%实时图像更新%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            
            postion(postion>9)=-9;
            postion(postion<-9)=9;
            set(plotblack,'XData',black(:,1),'YData',black(:,2))
            set(plotwhite,'XData',white(:,1),'YData',white(:,2))
            set(plotpostion,'XData',postion(1,1),'YData',postion(1,2))
%%%%%%%%%%%以下是五子棋输赢判定%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if win==1
                stop(game);
                buttonName1=questdlg('black win. What do you mean to do?','black win','close','restart','close');
                if isempty(buttonName1)
                    buttonName1='end';
                end
                if strcmp(buttonName1,'restart')
                        clf;
                        weiqi_wuziqi();
                else if strcmp(buttonName1,'close')
                            close;
                    end
                end
            end
            if win==2
                stop(game);
                buttonName1=questdlg('white win. What do you mean to do?','white win','close','restart','close');
                if isempty(buttonName1)
                    buttonName1='end';
                end
                if strcmp(buttonName1,'restart')
                       clf;
                        weiqi_wuziqi();
                else if strcmp(buttonName1,'close')
                            close;
                    end
                end
            end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function key(~,event)
        switch event.Key
            case '1'
                qiju=1;
            case '5'
                qiju=5;
            case 'uparrow'
                postion=postion+[0,1,0,0];
            case 'downarrow'
                postion=postion+[0,-1,0,0];
            case 'leftarrow'
                postion=postion+[-1,0,0,0];
            case 'rightarrow'
                postion=postion+[1,0,0,0];   
            case 'c'
                postion=[0,0,1,0];
            case 'space'
                if sum(ismember(black(:,1:2),postion(1,1:2),'rows'))==0
                    if sum(ismember(white(:,1:2),postion(1,1:2),'rows'))==0
                        if control==1
                            beifunwhite=white;
                            beifunblack=black;
                            black=[black;postion];
                            control=-1;
                        end
                        if control==0
                            beifunblack=black;
                            beifunwhite=white;
                            white=[white;postion];
                        end
                        control=control+1;
                    end
                end
            case 'backspace'
                if qiju==5
                    if length(sum(white,2))+length(sum(black,2))>2
                        if control==0
                            black(end,:)=[];
                            control=0;
                        end
                        if control==1
                            white(end,:)=[];
                            control=-1;
                        end
                        control=control+1;
                    end
                end
                if qiju==1
                    if length(sum(white,2))+length(sum(black,2))>2
                        if control==0
                            black=beifunblack;
                            white=beifunwhite;  
                            control=0;
                        end
                        if control==1
                            black=beifunblack;
                            white=beifunwhite;  
                            control=-1;
                        end
                        control=control+1;
                    end      
                end
        end
        end
end
