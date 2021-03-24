function numSamples = getNumberOfSamples(x)
    nyquistRate = 2;
    amount = x * nyquistRate;
    numSamples = floor(amount);
