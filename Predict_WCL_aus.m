function [Y,Xf,Af] = Predict_WCL_aus(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 09-Jul-2017 00:51:28.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx4 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [515;0;0.026000001;0];
x1_step1.gain = [0.0152671755725191;2;0.627549408096057;0.04];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.3934810214824727;-3.9644060477341649;-0.65960164810790423;1.4600276428854837;-0.21456544552669463;2.5785283392228213;-0.28331175113767937;-0.73783305955703371;0.074144319523547053;3.5322105160797741];
IW1_1 = [-0.18686914158721427 -1.1395678472710848 -2.8539114330306687 -4.4145085361302963;2.5823131137407458 0.45686014235516748 -0.53128295307207341 -1.4506269759958619;2.646792348607574 2.1526720293594499 1.6144057426553051 -0.37627172350255184;0.50758937867730503 0.7477689244001402 1.0389061155137671 0.35766317856898849;1.8361222652179032 -1.4460555726333102 -0.73577661814898976 3.6197191662502246;0.75696822367467509 -2.4358938579778608 3.7379355249861792 0.19495405946025152;-1.7796525119705153 -0.71411196773763397 2.5382527413305667 -0.013663726360294375;-0.95790381836784344 -1.9689135213911888 4.2284590322621902 -0.097127863305746923;0.29922137657290576 0.17521965049518673 -0.16553955751441737 0.086006950118638639;-0.5664210584169922 -4.2569817168278004 -1.5581439872004159 -0.34972854685475807];

% Layer 2
b2 = 0.48963279202957061;
LW2_1 = [0.010100918768150296 0.028441828931995136 0.036960388513388974 0.58990365576843229 -0.0067197225638025975 0.91601684969721109 0.36615186276998662 -0.69805861510941702 1.9749593322435555 -1.1813653120141798];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0152671755725191;
y1_step1.xoffset = 515;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},1); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    X{1,ts} = X{1,ts}';
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
    Y{1,ts} = Y{1,ts}';
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
