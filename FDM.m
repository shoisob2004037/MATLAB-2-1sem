% FDM Parameters
numChannels = 4;        % Number of channels
sampleRate = 1000;      % Sampling rate (Hz)
duration = 1;           % Duration of the signal (seconds)
frequencyGaps = 5;      % Frequency gap between channels (Hz)

% Generate individual sinusoidal signals for each channel
time = 0:1/sampleRate:duration-1/sampleRate;
signals = zeros(numChannels, length(time));
for channel = 1:numChannels
    frequency = channel * frequencyGaps;
    signals(channel, :) = sin(2*pi*frequency*time);
end

% Combine the signals into a composite signal
compositeSignal = sum(signals);

% Plot individual signals and the composite signal
figure;
subplot(numChannels+1, 1, 1);
plot(time, compositeSignal);
title('Composite Signal');
xlabel('Time (s)');
ylabel('Amplitude');

for channel = 1:numChannels
    subplot(numChannels+1, 1, channel+1);
    plot(time, signals(channel, :));
    title(['Channel ', num2str(channel)]);
    xlabel('Time (s)');
    ylabel('Amplitude');
end
