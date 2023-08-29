# Layer Division Multiplexing (LDM) Superposition

This repository provides a MATLAB function for LDM superposition for an arbitrary number of layers.

## Description

LDM is a technique used to multiplex different data layers on top of each other with different power levels. The provided function allows users to superpose multiple layers based on given power ratios.

## Usage

```matlab
[ldmData] = LDMSuperpositionN(layerSymbols, powerRatio)
layerSymbols: A matrix where each row corresponds to symbols of a specific layer.
powerRatio: A vector containing power ratios for each layer.

The function returns a vector of superposed symbols.
Example
layerSymbols = [1, 2, 3; 4, 5, 6; 7, 8, 9];
powerRatio = [0.1, 0.2, 0.3];
result = LDMSuperpositionN(layerSymbols, powerRatio);
disp(result);
