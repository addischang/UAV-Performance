% uavpowerrequired.m
%   First  edition : 11-Apr-2015 14:22:05
%   Lasted edition : 11-Apr-2015 14:22:05
%   Lasted modify : Chang, Wei-Chieh 
%
% DESCRIPTION
%   This is the file calculating the power required.
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

% Get the global parameters from parameters list.
global SizH LenH CouF CouH
global rho_inf h_inf g_inf T_inf
global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_Req

% Declare range. 
V_inf = linspace( 5, 25, 25 );

% Declare the power required.
for i = 1: 1: SizH(1)
    P_req( i, : ) = T_Req( i, : ) .* V_inf;
end

% Plot the figure.
figure( CouF )
CouF = CouF + 1;
h = plot( V_inf, P_req( CouH, : ) )
set( h, 'linewidth', 1.9 );
grid on
legend('D0','DL','D')
xlabel('Velocity (m/s)')
ylabel('Drag (N)')


