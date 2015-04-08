% uavthrustaviliable
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


propeller_efficiency = 0.8;
%V_inf = linspace( 0, 25, 25 );
P = 100
P_A = propeller_efficiency*P;
T_A = P_A./V_inf;
T_max = min(abs(T_A-D))

plot( V_inf, D_0, '--m', V_inf, D_L, '--r', V_inf, D ,V_inf,T_A,'c');
grid on
legend('D0','DL','D','TA')
xlabel('Velocity V_inf m/s')
ylabel('Drag kg & Thrust available')
%find min(abs(T_A-T))