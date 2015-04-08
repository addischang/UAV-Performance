% uavthrustaviliable.m
%   First  edtion : 08-Apr-2015 20:38:27
%   Lasted edtion : 08-Apr-2015 20:38:27
%   Lasted modify :  Huang,Kuan-Lin
%
% DESCRIPTION
%   This is a file to compute max thrust available for fixed-wing UAV.
%
% COPPYRIGHT
%   Copy right 2015 UAV Laboratory, Dept. of Aerospace Engineering, Tamkang
%   University.
%
% AUTHOORS INFORMACTION
%   Chang, Wei-Chieh 
%    addischang1991@gmail.com
%   Huang,Kuan-Lin 
%     breakfastho@yahoo.com.tw
%   Liu, Yu-Lin 
%     lightning.539418@gmail.comclear;clc;clf;

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


propeller_efficiency = 0.8;
%V_inf = linspace( 0, 25, 25 );
P = 1290 ;
P_A = propeller_efficiency*P;
T_A = P_A./V_inf;
[ a b ] = min(abs(T_A-D))

plot( V_inf, D_0, '--m', V_inf, D_L, '--r', V_inf, D ,V_inf,T_A,'c');
grid on
legend('D0','DL','D','TA')
xlabel('Velocity V_inf m/s')
ylabel('Drag kg & Thrust available')

disp( [ ' Max thrust is ' num2str( a ) '(N) at ' num2str( V_inf( 1, b ) ) '(m/s). ' ]  )