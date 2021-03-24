% Dean
clc ;
clear;
close all;

% Question 1 A)

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
    range = 0:n;
    xOfN = sin(2*pi/N * range);
    
    resultFT = fourierTransform(xOfN, range);
    figure()
    stem(range, xOfN);
    hold;
    plot(w, abs(resultFT));
    
end

% Question 1 B)
clc;
clear;
close all;

resp = input("Enter 'q' to quit\n", 's');
if resp == 'q'
    exit()
end

resp = input("Enter the sampling rate\n");
samplingRate = floor(resp);
N = getNumberOfSamples(samplingRate);

for loop = 1 : 5 
    % Getting the sampling rate
    windowSize = input("Please input the window size\n");
    if windowSize == 0 
        break
    end

    % Determine N based upon sampling rate
    N = getNumberOfSamples(samplingRate);
    n = windowSize * N;
    w = -(window_size) * pi : 0.05 : pi*(window_size) ;

    range = 0:n - 1;
    xOfN = sin(2*pi/N * range);
    
    resultFT = fourierTransform(xOfN, range);
    figure()
    stem(range, xOfN);
    hold;
    plot(w, abs(resultFT));
    
end
