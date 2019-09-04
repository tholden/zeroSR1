function setup_zeroSR1
% SETUP_ZEROSR1 Adds the zeroSR1 toolbox to the path

baseDirectory = fileparts(mfilename('fullpath'));
addpath(baseDirectory);
addpath( [ baseDirectory '/algorithms' ] );
addpath( [ baseDirectory '/proxes' ] );
addpath( [ baseDirectory '/smoothFunctions' ] );
addpath( [ baseDirectory '/utilities' ] );

% and make a variable in the main workspace
% assignin('base','ZEROSR1ROOT', baseDirectory );

% Make it global so it will not be removed by "clear" statements
% (though "clear all" will still remove it)
evalin('base', sprintf('global ZEROSR1ROOT; ZEROSR1ROOT=''%s'';',baseDirectory) );
