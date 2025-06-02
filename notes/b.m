clc,clearvars
path  ="./notes/B.wav";

[signal , fs]=audioread(path);

fft = fft(signal);
frequency = (0:length(signal)-1) * (fs/length(signal));
plot(frequency,abs(fft)/length(signal))
xlabel("frequencies")
ylabel("amplitude")
title("B")
axis([800,5500,0,.018])
grid on