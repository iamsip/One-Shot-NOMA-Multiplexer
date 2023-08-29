function [NOMAData] = NOMASuperpositionN(layerSymbols,  powerRatio)
% NOMASuperpositionN Performs NOMA superposition for an arbitrary number of layers.
%
% Inputs:
% - layerSymbols: A matrix where each row corresponds to symbols of a specific layer.
% - powerRatio: A vector containing power ratios for each layer.
%
% Output:
% - NOMAData: A vector of the superposed symbols.
%
% Example:
% layerSymbols = [1, 2, 3; 4, 5, 6; 7, 8, 9];
% powerRatio = [0.1, 0.2, 0.3];
% result = NOMASuperpositionN(layerSymbols, powerRatio);
% disp(result);

% Initialize the alpha value and NOMAData using the first layer's symbols and power ratio.
alpha = powerRatio(1);
NOMAData = layerSymbols(1,:) * alpha;

% Loop through the subsequent layers to perform superposition.
for i = 2:length(powerRatio)
    alpha = alpha * powerRatio(i);
    NOMAData = NOMAData + layerSymbols(i,:) * alpha;
end

end
