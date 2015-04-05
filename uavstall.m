function removal = uavstall( InputHeight )
% UAVSTALL.M
%   First  edtion : 05-Apr-2015 22:55:27
%   Lasted edtion : 05-Apr-2015 22:55:27
%   Lasted modify : Chang, Wei-Chieh
%
% DESCRIPTION
%   This is a file to compute stall velocity for fixed-wing UAV.
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

global AirDensity Velocity Serf Weight CL

Qinf = 0.5 * AirDensity * Velocity^2;
removal = sqrt( Weight / ( Qinf .* Serf .* CL ) );  