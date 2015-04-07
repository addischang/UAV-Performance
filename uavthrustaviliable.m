% uavthrustaviliable
%propeller_efficiency = ?
V_inf = linspace( 0, 25, 25 );
P_A = T_A*V_inf
T = D;
J = V_inf./(N*D);
T_A = propeller_efficiency*P/V_inf
plot( V_inf,T_A,);
%find min(abs(T_A-T))