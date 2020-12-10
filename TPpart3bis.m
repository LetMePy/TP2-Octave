
% Aymen Fourati & Skander Soltane
% 19/11/2020

close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes

Fs       = 8000;
load('melody1.mat');      % Importation des donées

for i = 1:length(d_vect)
  d_vect(i) *= 0.5;
  if (note_vect(i) < 96)
    note_vect(i) += 12;
  else
    note_vect(i) -= 72;
  endif
endfor

% On appelle la fontion create_melody
x = create_melody(d_vect, Fs, note_vect);

sound(x, Fs);
audiowrite('melody1bis.flac', x, Fs);
