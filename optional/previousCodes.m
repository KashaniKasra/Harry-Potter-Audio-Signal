clc , clearvars 

 load("notes.mat")
noteHarryPotter = notes;

silence = 0.025; %25 ms
fs = 44100;
one_silence = zeros(1,floor(silence*fs));

C = 16.352;
CSharp = 17.324;
D = 18.324;
DSharp = 19.445;
E = 20.602;
F = 21.827;
FSharp = 23.125;
G = 24.500;
GSharp = 25.957;
A = 27.500;
ASharp = 29.135;
B = 30.868;
finalSound = [];
for i = 1:61
    note = split(noteHarryPotter(i));
    noteType = note(1);
    octav = str2num(note(2));
    duration = str2double(note(3));
    switch noteType
    case "C"
        time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*C*(2^octav)*time);
    case "C#"
        time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*CSharp*(2^octav)*time);
    case "D"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*D*(2^octav)*time);
    case "D#"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*DSharp*(2^octav)*time);
    case "E"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*E*(2^octav)*time);
    case "F"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*F*(2^octav)*time);
    case "F#"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*FSharp*(2^octav)*time);
    case "G"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*G*(2^octav)*time);
    case "G#"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*GSharp*(2^octav)*time);
    case "A"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*A*(2^octav)*time);
    case "A#"
time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*ASharp*(2^octav)*time);
    case "B"
        time = linspace(0,duration,duration*fs);
        soundofNote = sin(2*pi*B*(2^octav)*time);
    end
    
    finalSound = [finalSound soundofNote one_silence];

end
audiowrite("re_noteHarryPoter.wav",finalSound,fs)


