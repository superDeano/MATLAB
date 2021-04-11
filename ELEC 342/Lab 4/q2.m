% Dean

% Question 2
clc;
clear;
close all;

% Getting the number of periods
numberOfPeriods = input("Please input the number of periods\n");

% Getting the step size
stepSize = input("Please input the step size\n");

range = (-numberOfPeriods : numberOfPeriods);
frequencyStep = 2 * pi / length(range);

global w;
w = -numberOfPeriods*pi:frequencyStep:numberOfPeriods*pi;

for loop = 1 : 5 
    % Getting the sampling rate
    samplingRate = input("Please input the sampling rate\n");
    if samplingRate == 0 
        break
    end
   
    % Determine N based upon sampling rate
    N = getNumberOfSamples(samplingRate);
    n = numberOfPeriods * N;
    range = 0:n - 1;
    xOfN = 0.5*sin(2*pi/N*range) + 0.33* sin(4*pi/N*range);
    
    resultFT = fourierTransform(xOfN, range);
    subplot(1, 3, 1);
    stem(range, xOfN);
    title('Sampled Signal');
    subplot(1, 3, 2);
    plot(w, abs(resultFT));
    title('Regular Plot');
    subplot(1,3,3);
    polarplot(w, abs(resultFT));
    title('Polar Plot')
    
end
