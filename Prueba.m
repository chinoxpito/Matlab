clc
clear all

%Fs = 44100;
%samples = [2*Fs];

%recObj= audiorecorder;

%disp('Grabando...');
%recordblocking(recObj,3);
%disp('Fin de la Grabacion.');
fs=44100; %f. muestreo
senal_salida=audiorecorder(fs,16,1);%Creacion del objeto de grabacion
msgbox('Empezando Grabacion',' Grabadora '); %Mensaje de informacion
recordblocking(senal_salida,5);%Grabacion del sonido
msgbox('Terminando Grabacion',' Grabadora ');%Mensaje de informacion
%Paso los valores del objeto a una seal
senal_grabada=getaudiodata(senal_salida, 'single');
%Grabamos y guardamos la seal
y=senal_grabada
filename = 'hola.wav';
audiowrite(filename,y,fs);

plot(y);
sound(y,fs); 

%play(recObj);

%myRecording = getaudiodata(recObj);

%plot(myRecording);
