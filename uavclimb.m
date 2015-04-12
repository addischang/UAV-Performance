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

global SizH LenH CouF CouH
global rho_inf h_inf g_inf T_inf
global W S_fw S_bw b_fw b_bw AR_fw AR_bw e_fw e_bw
global T_Req
global P_Req eta_p P T_A


% max climb angle

T_max =2.7*9.81;
CL_CD_max = 20;
max_climb_thi = asin((T_max/W) - (1/CL_CD_max))
V_thi_max = ( 4 * ( W/ (S_fw+ S_bw) ) *(1 / ( pi * e_fw * AR_fw )) )/( rho_inf * eta_p * (P/W) )

% max rate of climb

% time to climb
%  climb_T_min = dh/()
% 



