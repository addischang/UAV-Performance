function removal = uavparameter( InputHeight )
% UAVPARAMETER.M
%   First  edtion : 05-Apr-2015 01:37:56
%   Lasted edtion : 05-Apr-2015 01:51:00
%
% DESCRIPTION
%   This is a file which store global variables. Those subfunction will 
%   catch the global variables to compute parameters which we want.   
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

AtmosphereData = stdatm( InputHeight );
AirDensity = AtmosphereData( 1, 6 );
removal = AirDensity
