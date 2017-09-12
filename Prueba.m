clc
clear all
Fs = 44100;

recObj= audiorecorder;
disp('Grabando...');
recordblocking(recObj,3);
disp('Fin de la Grabacion.');

%play(recObj);

myRecording = getaudiodata(recObj);

plot(myRecording);
