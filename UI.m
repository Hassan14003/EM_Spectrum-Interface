function varargout = UI(varargin)
% UI MATLAB code for UI.fig
%      UI, by itself, creates a new UI or raises the existing
%      singleton*.
%
%      H = UI returns the handle to a new UI or the handle to
%      the existing singleton*.
%
%      UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI.M with the given input arguments.
%
%      UI('Property','Value',...) creates a new UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UI

% Last Modified by GUIDE v2.5 18-Nov-2017 02:36:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_OutputFcn, ...
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


% --- Executes just before UI is made visible.
function UI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UI (see VARARGIN)

% Choose default command line output for UI

set(handles.FreqTxt,'Enable','on')% To enable the content of Frequency Radio
set(handles.FreqETxt,'Enable','on')
set(handles.WaveTxt,'Enable','off')
set(handles.WaveETxt,'Enable','off')
set(handles.FreqRad,'Value',1)
set(handles.WaveRad,'Value',0)
axes(handles.FSAxes)
plott()
axes(handles.PAxes)
handles.output = hObject;
plotP(0,1)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function WaveETxt_Callback(hObject, eventdata, handles)
% hObject    handle to WaveETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WaveETxt as text
%        str2double(get(hObject,'String')) returns contents of WaveETxt as a double


% --- Executes during object creation, after setting all properties.
function WaveETxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WaveETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in WaveRad.
function WaveRad_Callback(hObject, eventdata, handles)
% hObject    handle to WaveRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of WaveRad
set(handles.WaveTxt,'Enable','on')
set(handles.WaveETxt,'Enable','on')
set(handles.FreqETxt,'String','')
set(handles.FreqTxt,'Enable','off')
set(handles.FreqETxt,'Enable','off')
set(handles.WaveRad,'Value',1)
set(handles.FreqRad,'Value',0)


function FreqETxt_Callback(hObject, eventdata, handles)
% hObject    handle to FreqETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FreqETxt as text
%        str2double(get(hObject,'String')) returns contents of FreqETxt as a double


% --- Executes during object creation, after setting all properties.
function FreqETxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FreqETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FreqRad.
function FreqRad_Callback(hObject, eventdata, handles)
% hObject    handle to FreqRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of FreqRad
set(handles.FreqTxt,'Enable','on')% To enable the content of Frequency Radio
set(handles.FreqETxt,'Enable','on')
set(handles.WaveTxt,'Enable','off')
set(handles.WaveETxt,'Enable','off')
set(handles.WaveETxt,'String','')
set(handles.FreqRad,'Value',1)
set(handles.WaveRad,'Value',0)
% --- Executes on button press in generate.
function generate_Callback(hObject, eventdata, handles)
% hObject    handle to generate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.WaveAxes)
cla
c = 3*10^8;%Speed  of light
if get(handles.FreqRad,'Value')==1
    Freq = get(handles.FreqETxt,'String');
    if isempty(Freq) == 1
    fprintf('Please fill for frequency\n');
    return;
    end
    Freq = str2num(Freq);
    Wavelength = c/Freq ;
elseif get(handles.WaveRad,'Value')==1
    Wavelength = get(handles.WaveETxt,'String')
    if isempty(Wavelength) == 1
        fprintf('Please fill for Wavelength\n');
        return;
    end
     Wavelength = str2num(Wavelength);
    Freq = c/Wavelength;
end

if Freq>=3*10^19 && Freq<inf %Gamma rays frequency range is 25Hz-100Hz
    FL = num2sip(3*10^19);
    FH = num2sip(inf);
    WL = num2sip(c/(3*10^19));
    WH = num2sip(c/inf);
    WaveType = 'Gamma Rays';
    WaveP = Wavelength/(c/(3*10^19))-(c/inf);
    tred = 1;
    Application = strvcat('•Determinación de galaxias activas.','•Detección de radiaciones emitidas por átomos radioactivos.','•Revisión de fallos en piezas metálicas.','•	Tratamiento de ciertos tipos de cáncer.');
    color = 'c';
elseif Freq>=3*10^16 && Freq<3*10^19 %X-Rays frequency range
    FL = num2sip(3*10^16);
    FH = num2sip(3*10^19);
    tred = 2;
    WL = num2sip(c/(3*10^16));
    WH = num2sip(c/(3*10^19));
    WaveP = Wavelength/((c/(3*10^16))-(c/(3*10^19)));
    WaveType = 'X-Rays';
    Application = strvcat('• Detección de patologías.','• Detección de enfermedades abdominales.','• Detección de cálculos renales.','•	Tratamiento de cáncer.');
    color = 'b';
elseif Freq>=8*10^14 && Freq<3*10^16 %UV-Rays frequency range
    FL = num2sip(8*10^14);
    FH = num2sip(3*10^16);
    tred = 3;
    WL = num2sip(c/(8*10^14));
    WH = num2sip(c/(3*10^16));
    WaveP = Wavelength/((c/(8*10^14))-(c/(3*10^16)));
    WaveType = 'UV Rays';
    Application = strvcat('•	 Lectura código de barras.','• Detección laser.','•	Mediciones Químicas.','• Determinación de fallasen transformadores.');
    color = 'g';
elseif Freq>=4*10^14 && Freq<8*10^14 %Visible frequency range
    FL = num2sip(4*10^14);
    FH = num2sip(8*10^14);
    tred = 4;
    WL = num2sip(c/(4*10^14));
    WH = num2sip(c/(8*10^14));
    WaveP = Wavelength/((c/(4*10^14))-(c/(8*10^14)));
    WaveType = 'Visible Light';
    Application = strvcat('• Mejor resolución en televisores.','•	Reconocimiento facial.','•	Detección de huellas dactilares.','• Creación de componentes fotosensibles.');
    color = 'c';
elseif Freq>=3*10^11 && Freq<4*10^14 %Infrared frequency range
    FL = num2sip(3*10^11);
    FH = num2sip(4*10^14);
    tred = 5;
    WL = num2sip(c/(3*10^11));
    WH = num2sip(c/(4*10^14));
    WaveP = Wavelength/((c/(3*10^11))-(c/(4*10^14)));
    WaveType = 'Infrared Waves';
    Application = strvcat('• Equipos de visión nocturna.','• Mandos a distancia (controles remotos).','• Tratamiento de lesiones deportivas.','• Comunicación por Fibra Óptica.');
    color = 'y';
   
elseif Freq>=3*10^9 && Freq<3*10^11 %Microwave frequency range
    FL = num2sip(3*10^9);
    FH = num2sip(3*10^11);
    tred = 6;
    WL = num2sip(c/(3*10^9));
    WH = num2sip(c/(3*10^11));
    WaveP = Wavelength/((c/(3*10^9))-(c/(3*10^11)));
    WaveType = 'Microwave';
    Application = strvcat('•	Control del tráfico aéreo.','•	Telefonía móvil.','•  Comunicación satelital.','• Investigación espacial.');
    color = 'r'; 
elseif Freq>=1*10^0 && Freq<3*10^9 %Radio Waves frequency range
    FL = num2sip(1*10^0);
    FH = num2sip(3*10^9);
    tred = 7;
    WL = num2sip(c/(1*10^0));
    WH = num2sip(c/(3*10^9));
    WaveP = Wavelength/((c/(1*10^0))-(c/(3*10^9)));
    WaveType = 'Radio Waves';
    Application = strvcat('•	Televisión.','•	Emisiones de Radio AM.','• Emisiones de Radio FM.','• Redes inalámbricas de computadoras.');
    color = 'm';
end
WaveP;
axes(handles.FSAxes)
plott(tred-1)
axes(handles.PAxes)
cla
plotP(tred,WaveP)
WaveRange = strcat(num2str(WH),'-');
WaveRange = strcat(WaveRange,num2str(WL));
FreqRange = strcat(num2str(FL),'-');
FreqRange = strcat(FreqRange,num2str(FH));
set(handles.EType, 'String',WaveType)
set(handles.FRETxt,'String',FreqRange)
set(handles.WRETxt,'String',WaveRange)
set(handles.AListTxt,'String',Application)
Wm = 1;
T = 1/Freq;
dt = T/50;% That is the step size
w = 2*pi/T;
t = [0:dt:2*T];% Plotted the wave for 2 cycles
y = Wm*cos(w*t);
% This is the line to tell the program about which axis we have
axes(handles.WaveAxes)
curve = animatedline('Color',color);
curve1 = animatedline('Color',color,'MarkerEdgeColor',color,'Marker','o');
set(gca,'XLim',[0 2*T],'YLim',[-Wm Wm])
xlabel('t({\its})')
ylabel('Wave({\itm})')%Its amplitude is right now -1-1m
hold on;
for i = 1:length(y)
 addpoints(curve,t(i),y(i));
 addpoints(curve1,t(i),y(i));
 %head = scatter(t(i),y(i),'filled','MarkerFaceColor','r','MarkerEdgeColor',color);
 drawnow;
 %delete(head);
end
hold off;

function AETxt_Callback(hObject, eventdata, handles)
% hObject    handle to AETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AETxt as text
%        str2double(get(hObject,'String')) returns contents of AETxt as a double


% --- Executes during object creation, after setting all properties.
function AETxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function EType_Callback(hObject, eventdata, handles)
% hObject    handle to EType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EType as text
%        str2double(get(hObject,'String')) returns contents of EType as a double


% --- Executes during object creation, after setting all properties.
function EType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FRETxt_Callback(hObject, eventdata, handles)
% hObject    handle to FRETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FRETxt as text
%        str2double(get(hObject,'String')) returns contents of FRETxt as a double


% --- Executes during object creation, after setting all properties.
function FRETxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FRETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function WRETxt_Callback(hObject, eventdata, handles)
% hObject    handle to WRETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WRETxt as text
%        str2double(get(hObject,'String')) returns contents of WRETxt as a double


% --- Executes during object creation, after setting all properties.
function WRETxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WRETxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in AListTxt.
function AListTxt_Callback(hObject, eventdata, handles)
% hObject    handle to AListTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns AListTxt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from AListTxt


% --- Executes during object creation, after setting all properties.
function AListTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AListTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
