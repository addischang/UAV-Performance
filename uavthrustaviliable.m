function removal =  uavthrustaviliable
% uavthrustaviliable.m
%   First  edtion : 08-Apr-2015 20:38:27
%   Lasted edtion : 08-Apr-2015 21:47:54
%   Lasted modify : Huang,Kuan-Lin
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
%     lightning.539418@gmail.com

% Get the global parameters from parameters list.
global SizH LenH CouF CouH
global rho_inf h_inf g_inf T_inf
global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_Req  V_inf

propeller_efficiency = 0.8;
V_inf = linspace( 5, 25, 25 );
P = 1290 ; % OS-MAX-65AX power
P_A = propeller_efficiency * P .* rho_inf ./ rho_inf(1,1); %aircraft performance page228_5.48


for i = 1: SizH(1,2)
    T_A( i, : ) = P_A( i, : ) ./ V_inf ;
    [ a(i) b(i) ] = min( abs( T_A( i, : ) - T_Req( i, : ) ) );
    V_max( i ) = V_inf( 1, b( i ) );
end

 

% Plot the figure.
figure( CouF )
CouF = CouF + 1;
plot( V_inf, T_Req(CouH, : ), V_inf, T_A(CouH, : ),'--m' );
grid on
legend('T_Req','T_A')
xlabel('Velocity V_inf m/s')
ylabel('Drag kg & Thrust available')

% % Plot the figure.
% figure( CouF )
% CouF = CouF + 1;
% plot(V_inf, T_A)


% Return the variable as global
global T_A V_max

disp( [ ' Max thrust is ' num2str( a ) '(N) at ' num2str( V_inf( 1, b ) ) '(m/s). ' ])
