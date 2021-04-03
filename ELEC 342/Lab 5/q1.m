% Dean
% Question 1
clc
clear
close all


fs = 10000;
row = 3;
column = 4;
global index;
index = 1;

t= (0: 1/fs : 0.1);

xOfT = sin(100*t) + sin(2000*t) + sin(6000*t); 

% order = 8;
order = 4;

%% Butterworth
H_Butterwoth = designfilt('bandpassiir', 'FilterOrder', ...
order, 'HalfPowerFrequency1', ...
250, 'HalfPowerFrequency2', 400, 'SampleRate', fs);

y_Butterworth = filtfilt(H_Butterwoth, xOfT);

subplot(row,column, inc());
plot(t, xOfT);
title('Original');

subplot(row,column, inc());
plot(t, fftshift(abs(fft(xOfT))));
title('Original in Frequency');


subplot(row,column, inc());
plot(t, y_Butterworth);
title('Butterworth Filtered');

subplot(row,column, inc());
plot(fftshift(abs(y_Butterworth)));
title('Output of signal');


%% Chebyshev I
H_Chebyshev = designfilt('bandpassiir', 'FilterOrder', order, ...
    'PassbandFrequency1', 250, 'PassbandFrequency2', 400, ...
    'PassbandRipple', 3, 'SampleRate', fs);

y_Chebyshev= filtfilt(H_Chebyshev, xOfT);

subplot(row,column, inc());
plot(t, xOfT);
title('Original');

subplot(row,column, inc());
plot(t, fftshift(abs(fft(xOfT))));
title('Original in Frequency');

subplot(row,column, inc());
plot(t, y_Chebyshev);
title('Chebyshev I Filtered');

subplot(row,column, inc());
plot(fftshift(abs(y_Chebyshev)));
title('Output of signal');


%% Elliptic
H_Elliptic = designfilt('bandpassiir', 'FilterOrder', order, ...
    'PassbandFrequency1', 300, 'PassbandFrequency2', 350, ...
    'PassbandRipple', 5, 'StopbandAttenuation1',250, ...
    'StopbandAttenuation2', 400, 'SampleRate', fs);


y_Elliptic= filtfilt(H_Elliptic, xOfT);

subplot(row,column, inc());
plot(t, xOfT);
title('Original');

subplot(row,column, inc());
plot(t, fftshift(abs(fft(xOfT))));
title('Original in Frequency');

subplot(row,column, inc());
plot(t, y_Elliptic);
title('Elliptic Filtered');

subplot(row,column, inc());
plot(fftshift(abs(y_Elliptic)));
title('Output of signal');











