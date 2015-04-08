function removal = uavloverd
% UAVLOVERD
%   First  edition : 09-Apr-2015 00:49:08
%   Lasted edition : 09-Apr-2015 00:49:08
%   Lasted modify : Chang, Wei-Chieh 
%
% DESCRIPTION
%   This is the file calculating lift over drag for fixed-wing aircraft.
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

% Main algorithm.
CD0 = 0.0456;
K = 1 / ( pi * e_fw * AR_fw );
V_inf = linspace( 3, 8, 50 );
Q_inf = 0.5 * rho_inf * V_inf.^2;
Term1 = ( 0.5 * rho_inf * V_inf.^4 .* CD0 ) ./ ( 2 * W( 1, 1 ) / ( S_fw + S_bw ) );
Term2 = ( 2 * K * W( 1, 1 ) ) ./ ( 0.5 * rho_inf * V_inf.^4 .* ( S_fw + S_bw ) );
LovD  = 1 ./ ( Term1 + Term2 );
LovDm = sqrt( 1 / ( 4 * CD0 * K ) );

% Plot the figure.
figure( CouF )
CouF = CouF + 1;
h = plot( V_inf, LovD( CouH, : ) );
set( h, 'linewidth', 1.7 );
title( ' Lift over Drag ' )
xlabel( 'Velocity (m/s)' );
ylabel( 'L/D' );
grid on

removal = 0;