
% Aymen Fourati & Skander Soltane
% 19/11/2020

close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes

% La fonction create_melody qui permet de créer une mélodie qui n'est qu'une
% succession de notes
function [x] = create_melody(dvect, Fs, notevect)
  
  % on itialise la sortie finale
  x = []; 
  
  for i = 1:length(dvect)
    % À chaque itération on rajoute une note pour former la mélodie finale
    x = [x, create_note(dvect(i), Fs, notevect(i))];
  endfor

endfunction
