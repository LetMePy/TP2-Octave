
% Aymen Fourati & Skander Soltane
% 19/11/2020

close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes

Fs       = 8000;

% load('melody1.mat');      % Importation des données
d_vect = [0.4, 0.5, 0.75, 0.6, 0.4, 0.8];
note_vect = [60, 62, 64, 66, 68, 70];

% On appelle la fontion create_melody
x = create_melody(d_vect, Fs, note_vect);

sound(x, Fs);
audiowrite('melody1.flac', x, Fs);
