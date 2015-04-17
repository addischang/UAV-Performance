function removal = uavrange
% uavpowerrequired.m
%   First  edition : 17-Apr-2015 21:45:31
%   Lasted edition : 17-Apr-2015 21:45:31
%   Lasted modify : Chang, Wei-Chieh
%
% DESCRIPTION
%   This is the file calculating the maximun range.
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

% This is a statement to judge the number of input data. If there without
% any input augment, then the initial and final value of climb velocity will
% be defult. Else if there have one input data, then we just define the final
% value of climb velocity.
% if nargin == 0
%     Vinf_i = 5;
%     Vinf_f = 25;
% elseif nargin == 1
%     Vinf_f = 25
% end

% Declare range.
V_inf = linspace( 5, 25, 25 );

% Get the global parameters from parameters list.
global SizH LenH CouF CouH
global rho_inf h_inf g_inf T_inf
global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_Req P_req

% Declare the power required.
for i = 1: 1: SizH( 2 )
    
    % The specifice distance value(SDV) is the value of distande for per each
    % power. Thus, we can seek out the minimum SDV for maximum range.
    SDV( i, : ) = V_inf ./ P_req( i, : );
    
end

% Plot the figure.
figure( CouF )
CouF = CouF + 1;
h = plot( V_inf, SDV( CouH, : ) );
set( h, 'linewidth', 1.9 );
grid on
title( 'Power Required' );
xlabel( 'Velocity (m/s)' );
ylabel( 'SDV (s*W/m)');



% Just return.
removal = 0;

end