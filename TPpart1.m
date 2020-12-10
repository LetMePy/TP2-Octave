
% Aymen Fourati & Skander Soltane
% 19/11/2020

clear all;                % Supprime toutes les variables de l'espace de travail
close all;                % Ferme toutes les figures courantes
clc;                      % Nettoie l'historique des commandes

% On fixe les valeurs suivantes
Fs = 8000;
d = 2;
f0 = 440;

% N est calucée par N * FS. Au cas où la valeur de d n'est pas entière, nous
% procédons à la même opération mais en englobant le résulat dans une des 3
% fonctions suivantes : round, ceil et floor. 
N = ceil(d * Fs);

% Ceci est le vecteur t de taille N contenant les différentes valeurs de tn
tn = linspace(0, d, N);

% Le signal x contenant les différentes valeurs de xn
xn = sin(2*pi * f0 * tn);

% On commente ces deux lignes pour ne pas entendre et enregistrer la note à
% chaque exécution du script
sound(xn, Fs);
% audiowrite("la.flac", xn, Fs);

figure                    % Ouvre une nouvelle figure
plot(tn, xn);             % Affiche le vecteur xn en fonction de tn
title('F0 = 440 Hz');     % Titre de la figure
xlabel('Temps (s)');      % Nom de l'axe des abcsisses
ylabel('Amplitude');      % Nom de l'axe des ordonnées
xlim([0, 4/f0]);          % Limite la figure aux abscicces entre 0 et 4T0 = 4/f0
ylim([-1, 1]);            % Limite la figure aux ordonnées entre -1 et 1
