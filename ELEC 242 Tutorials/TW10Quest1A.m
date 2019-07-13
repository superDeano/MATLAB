clear

% The frequency range for 500 points
freq = linspace (-5, 5, 500);
ncoefs = [16];
dcoefs = [1 -j*5.2263 -13.6569  j*20.9050 16];

freqw(ncoefs, dcoefs, freq);