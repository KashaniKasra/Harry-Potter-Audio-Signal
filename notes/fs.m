clc,clearvars
path  ="./notes/F#.wav";

[signal , fsample]=audioread(path);

fft = fft(signal);
frequency = (0:length(signal)-1) * (fsample/length(signal));
plot(frequency,abs(fft)/length(signal))
xlabel("frequencies")
ylabel("amplitude")
title("F#")
axis([0,5000,0,.012])
grid on