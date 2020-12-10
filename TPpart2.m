
% Aymen Fourati & Skander Soltane
% 19/11/2020

close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes
                      
d = 1;
Fs = 8000;

f = create_note(d, Fs, -1);
audiowrite('-1.flac', f, Fs);
