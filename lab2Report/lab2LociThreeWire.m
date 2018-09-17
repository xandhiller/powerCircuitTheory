% Use negative phase sequence

% Find the angle of Vao, Vbo and Vco.

% Create circles of radius Vao, Vbo and Vco?

% Follow instructions on page 15.

% Clean up
clear all;
close all;
clc;

% Constants 
figure(1);
origin = 0;
Npoints = 1000;
VaoMag = 212.0;
VboMag = 191.7;
VcoMag = 75.3;
theta = linspace(0, 2*pi, Npoints);
xx = zeros(Npoints);
yy = zeros(Npoints);

% Note, negative phase sequence!

% Phase A /_ 0
pAangle = 0;
pAmagnitude = 150;
[x,y] = pol2cart(pAangle, pAmagnitude)
plot([origin, x], [origin, y], 'b')
hold on;
xx = x + VaoMag.*cos(theta);
yy = y + VaoMag.*sin(theta);
plot(xx, yy, '--b');


% Phase B /_ 120
pBangle = 120*pi/180;
pBmagnitude = 150;
[x,y] = pol2cart(pBangle, pBmagnitude)
plot([origin, x], [origin, y], 'r')
xx = x + VboMag.*cos(theta);
yy = y + VboMag.*sin(theta);
plot(xx, yy, '--r');

% Phase C /_ 240
pCangle = 240*pi/180;
pCmagnitude = 150;
[x,y] = pol2cart(pCangle, pCmagnitude)
plot([origin, x], [origin, y], 'g')
xx = x + VcoMag.*cos(theta);
yy = y + VcoMag.*sin(theta);
h = plot(xx, yy, '--g');

% Locus for Vao
%VaoMag = 212.0;
%pAangle, 
%pAmagnitude;
%vaoAngleCentre = pAangle*ones(Npoints)
%vaoMagCentre = pAmagnitude*ones(Npoints)
%polar([vaoAngleCentre, 


% Locus for Vco


% Finished
legend("Phase A", "Phase B", "Phase C", "Vao Locus", "Vbo Locus", "Vco Locus")
title("Three Wire Unbalanced Locus");
grid on;
axis equal;
hold off;
