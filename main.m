% MAIN.M
%   First  edtion : 05-Apr-2015 01:37:56
%   Lasted edtion : 05-Apr-2015 01:37:56
%
% DESCRIPTION
%   This file is the main file for "UAV-Performance". This is a software
%   which provide performance parameters analysis for fixed-wing unmanned
%   aerial vehicle. But every thing are still in develop.
%
% COPPYRIGHT
%   Copy right 2015 UAV Laboratory, Dept. of Aerospace Engineering, Tamkang
%   University.
%
% AUTHOOR INFORMACTIONS
%   Chang, Wei-Chieh
%    addischang1991@gmail.com
%   Huang,Kuan-Lin
%     breakfastho@yahoo.com.tw
%   Liu, Yu-Lin
%     lightning.539418@gmail.com

% Clear the command window and data.
clear;clc;

global P_Req


% Input the desired height which you want.
Height = linspace( 0, 4000, 5 );

% Called function 'uavparameter'
h = uavparameter( Height );

% 
vst = uavstall;
uavloverd;
tr = uavthrustrequired;
vmax = uavthrustaviliable( tr );
% k = uavpowerrequired;
uavenvelope( vst, vmax );


