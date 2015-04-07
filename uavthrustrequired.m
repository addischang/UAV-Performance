% uavthrustrequired.m
%   First  edition : 07-Apr-2015 10:37:56
%   Lasted edition : 07-Apr-2015 10:37:56
%
% DESCRIPTION
%   This is the file calculating the thrust required.
%
% COPYRIGHT
%   Copyright 2015 UAV Laboratory, Dept. of Aerospace Engineering, Tamkang
%   University.
%
% AUTHOR INFORMATIONS
%   Chang, Wei-Chieh 
%    addischang1991@gmail.com
%   Huang,Kuan-Lin 
%     breakfastho@yahoo.com.tw
%   Liu, Yu-Lin 
%     lightning.539418@gmail.com

% Clear the command window and data.
clear;clc;clf;

rho_inf = 1.2133;
V_inf = linspace( 0, 25, 25 );
S = 0.8929;
b = 2.5;
CD_0 = 0.152;
e = 0.84;
W = 18.75;
AR = b^2 / S;
K_3 = 1 / ( pi * e * AR );
K_1 = (1/3) * K_3;
K = K_1 + K_3;
CL = W ./ ((1/2) * rho_inf .* V_inf.^2 * S);
CD = CD_0 + K * CL.^2;
D_0 = (1/2) * rho_inf .* V_inf.^2 * S .* CD_0;
D_L = (1/2) * rho_inf .* V_inf.^2 * S * K .* CL.^2;
D = D_0 + D_L;
D_min = min(D)
plot( V_inf, D_0, '--m', V_inf, D_L, '--r', V_inf, D );
grid on
legend('D0','DL','D')
xlabel('Velocity V_inf m/s')
ylabel('Drag kg')