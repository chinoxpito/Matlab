clear all
clc

disp('Iniciar...');
option=0;

while option == 0

Fs = 44100;
%Fs = input('Ingrese Fs:');
t= input('Ingrese Tiempo de muestreo:');
recObj = audiorecorder(Fs, 16, 1);%Creacion del objeto de grabacion
% Record your voice for 3 seconds.
disp('Start speaking.');%Mensaje de informacion
recordblocking(recObj, t);%Grabacion del sonido
disp('End of Recording.');%Mensaje de informacion


%Paso los valores del objeto a una seal
y=getaudiodata(recObj, 'single');

%Grabamos y guardamos la seal
filename = 'Prueba.wav';
audiowrite(filename,y,Fs);

% Plot the waveform.
plot(y);
% Play back the recording.
sound(y,Fs);
option= input('Muestrear nuevamente aprete 0:');
end
disp('Programa finalizado');
