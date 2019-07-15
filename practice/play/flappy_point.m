function varargout = flappy_point(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @flappy_point_OpeningFcn, ...
                   'gui_OutputFcn',  @flappy_point_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function flappy_point_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
global y3 Fs3 record g vwall cond y1 y2 Fs1 Fs2 flysound picMbg picMbd
record=0;
flysound=0;
g=9.8;
vwall=8;
cond=0;
[y1,Fs1] = wavread('die.wav');
[y2,Fs2] = wavread('jump.wav');
[y3,Fs3] = wavread('fly.wav');
axes(handles.axes1);
cla reset;
picbg=imread('BG.bmp');
imshow(picbg,'xdata',[1,80],'ydata',[1,110]);
set(handles.axes1,'unit','normalized','visible','on');
axis([0 80 0 110]);
axis off;
set(handles.kaishi,'enable','on');
set(handles.qingchu,'enable','on');
picMbg=picbg;
size1=size(picbg(:,1,1));
for i=1:size1(1)
    picMbg(i,:,:)=picbg(size1(1)+1-i,:,:);
end
picbd=imread('bird.png');
picMbd=picbd;
size1=size(picbd(:,1,1));
for i=1:size1(1)
    picMbd(i,:,:)=picbd(size1(1)+1-i,:,:);
end
guidata(hObject, handles);


function varargout = flappy_point_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function kaishi_Callback(hObject, eventdata, handles)
global v record g vwall cond y1 y2 Fs1 Fs2 flysound picMbg picMbd
dt=str2num(get(handles.shijian,'string'));
cond=1;
flysound=1;
v=0.0;
h=70;
xx1=110;
xx2=155;
s=0;
dx=0;
hh1=round(20+40*rand);
hh2=round(20+40*rand);
axes(handles.axes1);
cla reset;
hold on;
a1=imshow(picMbg,'xdata',[1,80],'ydata',[1,110]);
a2=imshow(picMbg,'xdata',[80,159],'ydata',[1,110]);
bd=imshow(picMbd,'xdata',[27,33],'ydata',[68.5,73.5]);
hold off;
axis xy;
axis([0 80 0 110]);
set(handles.kaishi,'enable','off');
set(handles.qingchu,'enable','off');
L1=line([xx1,xx1],[hh1+40,110],'color','g','linewidth',42,'erasemode','normal');
L2=line([xx1,xx1],[0,hh1-10],'color','g','linewidth',42,'erasemode','normal');
L5=line([xx1,xx1],[hh1+30,hh1+40],'color',[0 1 0.5],'linewidth',48,'erasemode','normal');
L6=line([xx1,xx1],[hh1-10,hh1],'color',[0 1 0.5],'linewidth',48,'erasemode','normal');
L3=line([xx2,xx2],[hh2+40,110],'color','g','linewidth',42,'erasemode','normal');
L4=line([xx2,xx2],[0,hh2-10],'color','g','linewidth',42,'erasemode','normal');
L7=line([xx2,xx2],[hh2+30,hh2+40],'color',[0 1 0.5],'linewidth',48,'erasemode','normal');
L8=line([xx2,xx2],[hh2-10,hh2],'color',[0 1 0.5],'linewidth',48,'erasemode','normal');
while(cond==1)
    dx=dx+1;
    count=fix(dx/3.5);
    if(count>80)
        count=0;
        dx=0;
    end
    picx1=1-count;
    picx2=80-count;
    set(a1,'xdata',[picx1,picx1+79]);
    set(a2,'xdata',[picx2,picx2+79]);
    h=h+v*dt-0.5*g*dt^2;
    v=v-g*dt;
    xx1=xx1-vwall*dt;
    xx2=xx2-vwall*dt;
    prescore=fix((s-40)/45.0);
    if(prescore<0)
        prescore=0;
    end
    s=s+vwall*dt;
    score=fix((s-40)/45.0);
    if(score<0)
        score=0;
    end
    if(score>prescore)
        sound(y2,Fs2);
    end
    set(bd,'ydata',[h-2,h+2]);
    set(L1,'xdata',[xx1,xx1]);
    set(L2,'xdata',[xx1,xx1]);
    set(L5,'xdata',[xx1,xx1]);
    set(L6,'xdata',[xx1,xx1]);
    set(L3,'xdata',[xx2,xx2]);
    set(L4,'xdata',[xx2,xx2]);
    set(L7,'xdata',[xx2,xx2]);
    set(L8,'xdata',[xx2,xx2]);
    if(xx1<(-5))
        hh1=round(20+40*rand);
        xx1=85;
        set(L1,'xdata',[xx1,xx1],'ydata',[hh1+40,110]);
        set(L2,'xdata',[xx1,xx1],'ydata',[0,hh1-10]);
        set(L5,'xdata',[xx1,xx1],'ydata',[hh1+30,hh1+40]);
        set(L6,'xdata',[xx1,xx1],'ydata',[hh1-10,hh1]);
    end
    if(xx2<(-5))
        hh2=round(20+40*rand);
        xx2=85;
        set(L3,'xdata',[xx2,xx2],'ydata',[hh2+40,110]);
        set(L4,'xdata',[xx2,xx2],'ydata',[0,hh2-10]);
        set(L7,'xdata',[xx2,xx2],'ydata',[hh2+30,hh2+40]);
        set(L8,'xdata',[xx2,xx2],'ydata',[hh2-10,hh2]);
    end
    if((h>110)||(h<0))
        cond=0;
        set(handles.kaishi,'enable','on');
        set(handles.qingchu,'enable','on');
        if(record<=score)
            record=score;
            set(handles.gaofen,'string',num2str(record));
        end
        sound(y1,Fs1);
        flysound=0;
        text(12,70,'Game Over','fontsize',40,'color','k');
        while(h>0)
            h=h-0.9;
            pause(0.005);
            set(bd,'ydata',[h-2,h+2]);
        end
    else
        if((xx1<=38)&&(xx1>=22))
            if((h>(hh1+28))||(h<(hh1+2)))
                cond=0;
                set(handles.kaishi,'enable','on');
                set(handles.qingchu,'enable','on');
                if(record<=score)
                    record=score;
                    set(handles.gaofen,'string',num2str(record));
                end
                sound(y1,Fs1);
                flysound=0;
                text(12,70,'Game Over','fontsize',40,'color','k');
                while(h>0)
                    h=h-0.9;
                    pause(0.005);
                    set(bd,'ydata',[h-2,h+2]);
                end
            end
        end
        if((xx2<=38)&&(xx2>=22))
            if((h>(hh2+28))||(h<(hh2+2)))
                cond=0;
                set(handles.kaishi,'enable','on');
                set(handles.qingchu,'enable','on');
                if(record<=score)
                    record=score;
                    set(handles.gaofen,'string',num2str(record));
                end
                sound(y1,Fs1);
                flysound=0;
                text(12,70,'Game Over','fontsize',40,'color','k');
                while(h>0)
                    h=h-0.9;
                    pause(0.005);
                    set(bd,'ydata',[h-2,h+2]);
                end
            end
        end
    end
    set(handles.fenshu,'string',num2str(score));
    drawnow;
end



function fenshu_Callback(hObject, eventdata, handles)


function fenshu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function gaofen_Callback(hObject, eventdata, handles)


function gaofen_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function qingchu_Callback(hObject, eventdata, handles)
global record
record=0;
set(handles.gaofen,'string',num2str(record));


function shijian_Callback(hObject, eventdata, handles)


function shijian_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function figure1_KeyPressFcn(hObject, eventdata, handles)
global v y3 Fs3 flysound cond
press=get(hObject,'currentkey');
if strcmp(press,'downarrow')
    if (cond==0)
        kaishi_Callback(hObject, eventdata, handles);
        return;
    end
end
if strcmp(press,'c')
    qingchu_Callback(hObject, eventdata, handles);
    return;
end
switch press
    case {'space','uparrow','w'}
        v=19;
        if(flysound==1)
            sound(y3,Fs3);
        end
end


function qingchu_CreateFcn(hObject, eventdata, handles)
