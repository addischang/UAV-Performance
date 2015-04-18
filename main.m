function [ vst vmax minpr minpv tas  ] = main( Input )

% MAIN.M
%   First  edtion : 05-Apr-2015 01:37:56
%   Lasted edtion : 18-Apr-2015 13:59:14
%   Lasted edtion : 17-Apr-2015 15:45:31
%   Lasted modify : Chang, Wei-Chieh
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



% Called function 'uavparameter'
uavparameter( Input );

vst = uavstall;
ld = uavloverd;
tr = uavthrustrequired;
[ vmax ta ] = uavthrustaviliable( tr );
[ minpr minpv ] = uavpowerrequired( tr );
% uavenvelope( vst, vmax );
% vst = uavstall;
% ld = uavloverd;
% tr = uavthrustrequired;
% [ vmax ta ] = uavthrustaviliable( tr );
% uavpowerrequired( tr );
% uavenvelope( vst, vmax );
% uavlevelturn( ld, ta );
% uavclimb;
tas = uavtakeoff;
end
