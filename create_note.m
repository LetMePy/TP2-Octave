
% Aymen Fourati & Skander Soltane
% 19/11/2020

clear all;                % Supprime toutes les variables de l'espace de travail
close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes

function [xn] = create_note(d, Fs, note)

  % Tout comme dans la première partie N correspond au nombre d'échantillonage
  N = ceil(Fs * d);
  % Ceci est le vecteur t de taille N contenant les différentes valeurs de tn
  tn = linspace(0, d, N);

  % Si l'utilisateur passe -1 comme note la fréquence propre est nulle
  if (note == -1)
    f0 = 0;
  % Sinon on applique la formule énoncée
  else
    f0 = 440 * 2^((note-69) / 12);
  endif

  % xn est la sortie de la fonction
  xn = sin(2*pi * f0 * tn);

endfunction
