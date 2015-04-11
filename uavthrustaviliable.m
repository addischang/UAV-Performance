function removal =  uavthrustaviliable
% uavthrustaviliable.m
%   First  edtion : 08-Apr-2015 20:38:27
%   Lasted edtion : 08-Apr-2015 21:47:54
%   Lasted modify : Chang, Wei-Chieh 
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

% Get the global parameters from parameters list.
% global SizH LenH CouF CouH
% global rho_inf h_inf g_inf T_inf
% global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_R
propeller_efficiency = 0.8;
V_inf = linspace( 5, 21, 25 );
P = 1290 ; % OS-MAX-65AX power
P_A = propeller_efficiency * P; %aircraft performance page228_5.48
T_A = P_A./V_inf;
[ a b ] = min(abs(T_A-D))
global T_A

plot( V_inf, D_0, '--m', V_inf, D_L, '--r', V_inf, D ,V_inf,T_A,'c');
grid on
legend('D0','DL','D','TA')
xlabel('Velocity V_inf m/s')
ylabel('Drag kg & Thrust available')

disp( [ ' Max thrust is ' num2str( a ) '(N) at ' num2str( V_inf( 1, b ) ) '(m/s). ' ]  )