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
% frequencyStep = stepSize;

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
    range = 0:2*n -1;
    xOfN = sin(2*pi/N * range);
    
    resultFT = fourierTransform(xOfN, range);
    subplot(2, 1, 1)
    stem(range, xOfN);
    title('Sampled signal');
    subplot(2, 1, 2)
    plot(w, abs(resultFT));
    title('Fourier Transform');
    
end

resp = input("Enter 'c' to continue to Question 1 B)\n", 's');
if resp == 'c'
    Question 1 B)
    clc;
    clear;
    close all;
    
    resp = input("Enter the sampling rate\n");
    samplingRate = floor(resp);
    % Determine N based upon sampling rate
    N = getNumberOfSamples(samplingRate);

    for loop = 1 : 5 
        % Getting the window size from user
        windowSize = input("Please input the window size\n");
        if windowSize == 0 
            break
        end
      

        w = -(windowSize) * pi : 1 : pi*(windowSize) ;

        range = 0:2*N - 1;
        xOfN = sin(2*pi/N * range);

        resultFT = fourierTransform(xOfN, range);
        subplot(2, 1, 1)
        stem(range, xOfN);
        title('Sampled signal');
        subplot(2, 1, 2)
        plot(w, abs(resultFT));
        title('Fourier Transform');

    end
end
