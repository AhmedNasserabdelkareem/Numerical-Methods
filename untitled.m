function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 11-May-2018 13:25:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @untitled_OpeningFcn, ...
    'gui_OutputFcn',  @untitled_OutputFcn, ...
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
% End initialization code - DO NOT EDIT

function [answer] =  getVector(input, index)
for i =1:index
    answer(i) = input(i);
end

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;
guidata(hObject,handles);
index = 0;
handles.index = index;
guidata(hObject,handles);
flags = zeros(6,1);
handles.flags = flags;
set(handles.axes1,'XLimMode','manual','YLimMode','manual');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
index = get(hObject,'Value');
list = get(hObject,'String');
method = list{index};
set(handles.text11,'String',method);

%set(handles.edit5,'String',method);
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
%FAST SOLVE NASSER and Variables required is Eqs , eps , iter
global Eqs ;
global eps;
global iter ;
oneInput = get(handles.edit7,'String');
x = get(handles.edit4,'String');
xUpper = get(handles.edit5,'String');
xLower = get(handles.edit6,'String');
try
    Eqs = strsplit(x,',');
    
catch
    Eqs = x;
end
handles.index = 0
handles.flags =zeros(6,1);
guidata(hObject,handles);
iterations = get(handles.edit2,'String');
epsilon = get(handles.edit3,'String');
eps=epsilon;
iter =iterations;
if (epsilon=="")
    eps=num2str(0.0001);
end;
if (iterations=="")
    iter=num2str(50);
end;


method =get(handles.text11,'String');
switch method
    case "1- Bisection"
        [XL,XU,XR,ea,f,time,error] = bisection(Eqs , str2double(xLower), str2double(xUpper), str2double(eps), str2double(iter));
        ezplot(f);
        hold on;
        plot([XL(1) XL(1)], ylim);
        hold on;
        plot([XU(1) XU(1)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom out;
        legend("F(X)","XLower","XUpper");
        hold off;
        set(handles.timedisplay,'String',time);
        tempo = cat(2,XL.',XU.');
        temperror = cat(2,XR.',ea.');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'Xr', 'Xl', 'Xr', 'ea'});
        set(handles.errordisplay,'String',error);
        set(handles.uitable1,'Data',matrix);
    case "2- False-position"
        [XL,XU,XR,ea,f,time,error] = falsePosition(Eqs,str2double(xLower), str2double(xUpper), str2double(eps), str2double(iter));
        ezplot(f,-100,100);
        hold on;
        plot([XL(1) XL(1)], ylim);
        hold on;
        plot([XU(1) XU(1)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","XLower","XUpper");
        hold off;
        set(handles.timedisplay,'String',time);
        set(handles.errordisplay,'String',error);
        tempo = cat(2,XL.',XU.');
        temperror = cat(2,XR.',ea.');
        matrix = cat(2,tempo,temperror);
        axes(handles.axes1,'HI',tempo);

        set(handles.uitable1, 'columnname', {'Xr', 'Xl', 'Xr', 'ea'});
        set(handles.uitable1,'Data',matrix);
    case "3- Fixed point"
        [f, g, xNew, error,time] = FixedPoint (Eqs ,str2double(iter), str2double(eps), str2double(oneInput) );
        ezplot(f,-5000,5000);
        hold on;
        ezplot(g);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("g(X)","F(X)");
        hold off;
        tempo = cat(2,f.',g.');
        temperror = cat(2,xNew.',error.');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'f', 'g', 'Xnew', 'error'});
        set(handles.timedisplay,'String',time);
        set(handles.uitable1,'Data',matrix);
    case "4- Newton-Raphson"
        [ root,fn,fx,error,iteration_no,excution_time,iteration,Xi,XiPlusOne,AbsErr ] = newton_Raphson( str2double(oneInput),Eqs,str2double(iter),str2double(eps) );
        ezplot(fn);
        hold on;
        ezplot(fx);
        xL = xlim;
        yL = ylim;
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)");
        hold off;
        tempo = cat(2,Xi.',XiPlusOne.');
        temperror = cat(2,fx.',AbsErr.');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'Xi', 'Xi+1', 'Fx', 'error'});
        set(handles.uitable1,'Data',matrix);
        set(handles.timedisplay,'String',excution_time);
        set(handles.errordisplay,'String',error);
    case "5- Secant"
        hideTwo(handles);
        [ root,error,fn,fx,iteration_no,excution_time,iteration,Xi,XiPlusOne,XiMinusOne,AbsErr ] = secant( str2double(xLower),str2double(xUpper),Eqs,str2double(iter),str2double(eps) );
        set(handles.TimeDisplay,'String',excution_time);
        ezplot(fn);
        hold on;
        ezplot(fx);
        xL = xlim;
        yL = ylim;
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)");
        hold off;
        tempo = cat(2,Xi.',XiPlusOne.');
        temperror = cat(2,fx.',AbsErr.');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'Xi', 'Xi+1', 'Fx', 'error'});
        set(handles.uitable1,'Data',matrix);
        set(handles.timedisplay,'String',excution_time);
        set(handles.errordisplay,'String',error);
        
        
    case "6- Bierge Vieta"
        [ error,root,fn,fx,iteration_no,iterations,excution_time,X,A,B,C,AbsErr ] = birge_Vieta( str2double(oneInput),Eqs,str2double(iter),str2double(eps) );
        set(handles.TimeDisplay,'String',excution_time);
        ezplot(fn);
        hold on;
        ezplot(fx);
        xL = xlim;
        yL = ylim;
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)");
        hold off;
<<<<<<< HEAD
=======
        hideTwo(handles);
         tempo = cat(2,roots.',fn.');
        set(handles.uitable1, 'columnname', {'roots', 'Fn'});
        set(handles.uitable1,'Data',tempo);
            
>>>>>>> 962e22d3f1859a081db6cac7f6fbbf0c36a7e843
        
    case "7- General Algorithm"
        [roots,fn,time] = general( Eqs );
        ezplot(fn);
        xL = xlim;
        yL = ylim;
        set(handles.timedisplay,'String',time);
        set(handles.uitable1, 'columnname', {'roots',' '});
        set(handles.uitable1,'Data',roots);
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)");
        set(handles.timedisplay,'String',time);
        hold off;
        
end



% hObject    get(handles.edit4,'String');handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function hideOne(handles)
set(handles.edit7,'enable','off');
function hideTwo(handles)
set(handles.edit5,'enable','off');
set(handles.edit6,'enable','off');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% SLOW STEPS NASSER and Variables required is Eqs , eps , iter and use
% counter to handle step by step button
global Eqs ;
global eps;
global iter ;
global counter ;
oneInput = get(handles.edit7,'String');
x = get(handles.edit4,'String');
xUpper = get(handles.edit5,'String');
xLower = get(handles.edit6,'String');
try
    Eqs = strsplit(x,',');
    
catch
    Eqs = x;
end
iterations = get(handles.edit2,'String');
epsilon = get(handles.edit3,'String');
epsilon = get(handles.edit3,'String');
eps=epsilon;
iter =iterations;
if (epsilon=="")
    eps=num2str(0.0001);
end;
if (iterations=="")
    iter=num2str(50);
end;

method =get(handles.text11,'String');
switch method
    case "1- Bisection"
        if((handles.flags(1)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(1) = 1;
            guidata(hObject,handles);
        end
        [XL,XU,XR,ea,f,time, error] = bisection(Eqs , str2double(xLower), str2double(xUpper), str2double(eps), str2double(iter));
        if(handles.index < length(XL))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        ezplot(f);
        hold on;
        plot([XL(handles.index) XL(handles.index)], ylim);
        hold on;
        plot([XU(handles.index) XU(handles.index)], ylim);
        hold on;
        plot([XR(handles.index) XR(handles.index)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","XLower","XUpper","XMiddle");
        hold off;
        tempo = cat(2,getVector(XL,handles.index).',getVector(XU,handles.index).');
        temperror = cat(2,getVector(XR,handles.index).',getVector(ea,handles.index).');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'Xr', 'Xl', 'Xr', 'ea'});
        set(handles.uitable1,'Data',matrix);   
        set(handles.errordisplay,'String',error);
    case "2- False-position"
        if((handles.flags(2)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(2) = 1;
            guidata(hObject,handles);
        end
        [XL,XU,XR,ea,f,time,error] = falsePosition(Eqs,str2double(xLower), str2double(xUpper), str2double(eps), str2double(iter));
        if(handles.index < length(XL))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        ezplot(f);
        hold on;
        plot([XL(handles.index) XL(handles.index)], ylim);
        hold on;
        plot([XU(handles.index) XU(handles.index)], ylim);
        hold on;
        plot([XR(handles.index) XR(handles.index)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","XLower","XUpper","XMiddle");
        hold off;
        tempo = cat(2,getVector(XL,handles.index).',getVector(XU,handles.index).');
        temperror = cat(2,getVector(XR,handles.index).',getVector(ea,handles.index).');
        matrix = cat(2,tempo,temperror);
        set(handles.uitable1, 'columnname', {'Xr', 'Xl', 'Xr', 'ea'});
        set(handles.uitable1,'Data',matrix);      
        set(handles.errordisplay,'String',error);

    case "3- Fixed point"
        if((handles.flags(3)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(3) = 1;
            guidata(hObject,handles);
        end
        [f, g, xNew, error,time] = FixedPoint (Eqs ,str2double(iter), str2double(eps), str2double(oneInput) );
        if(handles.index < length(xNew))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        ezplot(f);
        hold on;
        ezplot(g);
        hold on;
        plot([xNew(handles.index) xNew(handles.index)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("g(X)","F(X)","xi");
        hold off;
        temperror = double(cat(2,getVector(xNew,handles.index).',getVector(error,handles.index).'));
        set(handles.uitable1, 'columnname', {'Xnew', 'error'});
        set(handles.uitable1,'Data',temperror);
    case "4- Newton-Raphson"
        if((handles.flags(4)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(4) = 1;
            guidata(hObject,handles);
        end
        [ root,fn,fx,error,iteration_no,excution_time,iteration,Xi,XiPlusOne,AbsErr ] = newton_Raphson( str2double(oneInput),Eqs,str2double(iter),str2double(eps) );
        if(handles.index < length(XiPlusOne))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        ezplot(fn,-100,100);
        hold on;
        ezplot(fx);
        hold on;
        plot([Xi(handles.index) Xi(handles.index)], ylim);
        hold on;
        plot([XiPlusOne(handles.index) XiPlusOne(handles.index)], ylim);
        xL = xlim;
        yL = ylim;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)","xi","XiPlusOne");
        hold off;
        tempo = cat(2,getVector(Xi,handles.index).',getVector(XiPlusOne,handles.index).');
        matrix = cat(2,tempo,getVector(AbsErr,handles.index).' )
        set(handles.uitable1, 'columnname', {'Xi', 'Xi+1','error'});
        set(handles.uitable1,'Data',matrix);
    case "5- Secant"
        if((handles.flags(5)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(5) = 1;
            guidata(hObject,handles);
        end
        [ root,error,fn,fx,iteration_no,excution_time,iteration,Xi,XiPlusOne,XiMinusOne,AbsErr ] = secant( str2double(xLower),str2double(xUpper),Eqs,str2double(iter),str2double(eps) );
        if(handles.index < length(Xi))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        ezplot(fn);
        hold on;
        ezplot(fx);
        hold on;
        plot([Xi(handles.index) Xi(handles.index)], ylim);
        hold on;
        plot([XiPlusOne(handles.index) XiPlusOne(handles.index)], ylim);
        hold on;
        plot([XiMinusOne(handles.index) XiMinusOne(handles.index)], ylim);
        xL = xlim;
        yL = ylim;
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)","xi","XiPlusOne","XiMinusOne");
        hold off;
        tempo = cat(2,getVector(Xi,handles.index).',getVector(XiPlusOne,handles.index).');
        tempo2 = cat(2,getVector(XiMinusOne,handles.index).',getVector(AbsErr,handles.index).');
        matrix = cat(2,tempo,tempo2);
        set(handles.uitable1, 'columnname', {'Xi', 'Xi+1','Xi - 1','Abs Error'});
        set(handles.uitable1,'Data',matrix);
    case "6- Bierge Vieta"
         if((handles.flags(6)) == 0)
            handles.index = 0
            handles.flags =zeros(6,1);
            handles.flags(6) = 1;
            guidata(hObject,handles);
        end

        [ error,root,fn,fx,iteration_no,iterations,excution_time,X,A,B,C,AbsErr ] = birge_Vieta( str2double(oneInput),Eqs,str2double(iter),str2double(eps) );
        if(handles.index < length(X))
            handles.index = handles.index + 1
            guidata(hObject,handles);
        else
            return;
        end
        set(handles.TimeDisplay,'String',excution_time);
        ezplot(fn);
        hold on;
        ezplot(fx);
        xL = xlim;
        yL = ylim;
        hold on;
        line(xL, [0 0],'color','k','linewidth',1);
        line([0 0], yL,'color','k','linewidth',1);
        zoom on;
        legend("F(X)","F'(X)");
        hold off;
        
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function timedisplay_Callback(hObject, eventdata, handles)
% hObject    handle to timedisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of timedisplay as text
%        str2double(get(hObject,'String')) returns contents of timedisplay as a double


% --- Executes during object creation, after setting all properties.
function timedisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timedisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errordisplay_Callback(hObject, eventdata, handles)
% hObject    handle to errordisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errordisplay as text
%        str2double(get(hObject,'String')) returns contents of errordisplay as a double


% --- Executes during object creation, after setting all properties.
function errordisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errordisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RootDisplay_Callback(hObject, eventdata, handles)
% hObject    handle to RootDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RootDisplay as text
%        str2double(get(hObject,'String')) returns contents of RootDisplay as a double


% --- Executes during object creation, after setting all properties.
function RootDisplay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RootDisplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
