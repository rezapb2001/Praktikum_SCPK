function varargout = luasVolumebalok(varargin)
% LUASVOLUMEBALOK MATLAB code for luasVolumebalok.fig
%      LUASVOLUMEBALOK, by itself, creates a new LUASVOLUMEBALOK or raises the existing
%      singleton*.
%
%      H = LUASVOLUMEBALOK returns the handle to a new LUASVOLUMEBALOK or the handle to
%      the existing singleton*.
%
%      LUASVOLUMEBALOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUASVOLUMEBALOK.M with the given input arguments.
%
%      LUASVOLUMEBALOK('Property','Value',...) creates a new LUASVOLUMEBALOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before luasVolumebalok_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to luasVolumebalok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help luasVolumebalok

% Last Modified by GUIDE v2.5 07-Apr-2021 09:01:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @luasVolumebalok_OpeningFcn, ...
                   'gui_OutputFcn',  @luasVolumebalok_OutputFcn, ...
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


% --- Executes just before luasVolumebalok is made visible.
function luasVolumebalok_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to luasVolumebalok (see VARARGIN)

% Choose default command line output for luasVolumebalok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes luasVolumebalok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = luasVolumebalok_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputP_Callback(hObject, eventdata, handles)
% hObject    handle to inputP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputP as text
%        str2double(get(hObject,'String')) returns contents of inputP as a double


% --- Executes during object creation, after setting all properties.
function inputP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputL_Callback(hObject, eventdata, handles)
% hObject    handle to inputL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputL as text
%        str2double(get(hObject,'String')) returns contents of inputL as a double


% --- Executes during object creation, after setting all properties.
function inputL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputT_Callback(hObject, eventdata, handles)
% hObject    handle to inputT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputT as text
%        str2double(get(hObject,'String')) returns contents of inputT as a double


% --- Executes during object creation, after setting all properties.
function inputT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputP = get(handles.inputP, 'string');
inputL = get(handles.inputL, 'string');
inputT = get(handles.inputT, 'string');

inputP = str2num(inputP);
inputL = str2num(inputL);
inputT = str2num(inputT);

luas = 2*((inputP * inputL) + (inputP * inputT) + (inputL * inputT));
volume = inputP * inputL * inputT;

set(handles.luas, 'string', (luas));
set(handles.volume, 'string', (volume));


% --- Executes on button press in tahunKabisat.
function tahunKabisat_Callback(hObject, eventdata, handles)
% hObject    handle to tahunKabisat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(tahunKabisat);
