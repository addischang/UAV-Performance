% function removal = uavclimb
% % UAVPARAMETER
% %   First  edition : 05-Apr-2015 01:37:56
% %   Lasted edition : 12-Apr-2015 00:57:51
% %   Lasted modify  : Chang, Wei-Chieh
% %
% % DESCRIPTION
% %   This is the file calculating the rate of climb and time of climb.
% %
% % COPYRIGHT
% %   Copyright 2015 UAV Laboratory, Dept. of Aerospace Engineering, Tamkang
% %   University.
% %
% % AUTHOR INFORMATIONS
% %   Chang, Wei-Chieh 
% %    addischang1991@gmail.com
% %   Huang,Kuan-Lin 
% %     breakfastho@yahoo.com.tw
% %   Liu, Yu-Lin 
% %     lightning.539418@gmail.com
clc
global SizH LenH CouF CouH
global rho_inf h_inf g_inf T_inf
global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_Req
global P_Req eta_p P T_A
global CD_0 CL_max
V_inf = linspace( 5, 25, 25 );
k =1 / ( pi * e_fw * AR_fw );
RC = (T_A/W).-(0.5*rho_inf*(V_inf.^2)*(W/(S_fw+ S_bw))* CD_0)-(W*2*k/(S_fw+ S_bw).*rho_inf*V_inf.^2)

% max climb angle

T_max =2.7*9.81;
CL_CD_max = 10;
max_climb_thi = asin((T_max/W) - (1/CL_CD_max));

%V_thi_max
V_thi_max = ( 4* ( W/ (S_fw +S_bw) *k)) /( rho_inf * eta_p * (P/W) )

V_thi_max1 = square((2*W*cos(max_climb_thi)*(k^0.5))/rho_inf*(S_fw +S_bw)*( CD_0^0.5))
% max rate of climb

% time to climb
%  climb_T_min = dh/()
% 



