clc , clearvars 

notes
harmony = load("harmony.mat").unnamed;


silence = 0.025; %25 ms
fs = 44100;
one_silence = zeros(1,floor(silence*fs));


finalSound = [];
for i = 1:61
    note = split(noteHarryPotter(i));
    noteType = note(1);
    octav = str2num(note(2));
    duration = str2double(note(3));
    switch noteType
    case "C"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(1,2)*sin(2*pi*harmony(1,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(1,4)*sin(2*pi*harmony(1,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(1,6)*sin(2*pi*harmony(1,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(1,8)*sin(2*pi*harmony(1,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(1,10)*sin(2*pi*harmony(1,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(1,12)*sin(2*pi*harmony(1,11)*(2^(octav-5))*time);
    case "C#"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(2,2)*sin(2*pi*harmony(2,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(2,4)*sin(2*pi*harmony(2,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(2,6)*sin(2*pi*harmony(2,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(2,8)*sin(2*pi*harmony(2,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(2,10)*sin(2*pi*harmony(2,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(2,12)*sin(2*pi*harmony(2,11)*(2^(octav-5))*time);
    case "D"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(3,2)*sin(2*pi*harmony(3,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(3,4)*sin(2*pi*harmony(3,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(3,6)*sin(2*pi*harmony(3,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(3,8)*sin(2*pi*harmony(3,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(3,10)*sin(2*pi*harmony(3,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(3,12)*sin(2*pi*harmony(3,11)*(2^(octav-5))*time);
    case "D#"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(4,2)*sin(2*pi*harmony(4,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(4,4)*sin(2*pi*harmony(4,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(4,6)*sin(2*pi*harmony(4,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(4,8)*sin(2*pi*harmony(4,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(4,10)*sin(2*pi*harmony(4,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(4,12)*sin(2*pi*harmony(4,11)*(2^(octav-5))*time);
    case "E"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(5,2)*sin(2*pi*harmony(5,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(5,4)*sin(2*pi*harmony(5,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(5,6)*sin(2*pi*harmony(5,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(5,8)*sin(2*pi*harmony(5,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(5,10)*sin(2*pi*harmony(5,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(5,12)*sin(2*pi*harmony(5,11)*(2^(octav-5))*time);
    case "F"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(6,2)*sin(2*pi*harmony(6,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(6,4)*sin(2*pi*harmony(6,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(6,6)*sin(2*pi*harmony(6,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(6,8)*sin(2*pi*harmony(6,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(6,10)*sin(2*pi*harmony(6,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(6,12)*sin(2*pi*harmony(6,11)*(2^(octav-5))*time);
    case "F#"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(7,2)*sin(2*pi*harmony(7,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(7,4)*sin(2*pi*harmony(7,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(7,6)*sin(2*pi*harmony(7,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(7,8)*sin(2*pi*harmony(7,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(7,10)*sin(2*pi*harmony(7,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(7,12)*sin(2*pi*harmony(7,11)*(2^(octav-5))*time);
    case "G"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(8,2)*sin(2*pi*harmony(8,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(8,4)*sin(2*pi*harmony(8,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(8,6)*sin(2*pi*harmony(8,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(8,8)*sin(2*pi*harmony(8,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(8,10)*sin(2*pi*harmony(8,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(8,12)*sin(2*pi*harmony(8,11)*(2^(octav-5))*time);
    case "G#"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(9,2)*sin(2*pi*harmony(9,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(9,4)*sin(2*pi*harmony(9,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(9,6)*sin(2*pi*harmony(9,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(9,8)*sin(2*pi*harmony(9,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(9,10)*sin(2*pi*harmony(9,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(9,12)*sin(2*pi*harmony(9,11)*(2^(octav-5))*time);
    case "A"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(10,2)*sin(2*pi*harmony(10,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(10,4)*sin(2*pi*harmony(10,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(10,6)*sin(2*pi*harmony(10,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(10,8)*sin(2*pi*harmony(10,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(10,10)*sin(2*pi*harmony(10,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(10,12)*sin(2*pi*harmony(10,11)*(2^(octav-5))*time);
    case "A#"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(11,2)*sin(2*pi*harmony(11,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(11,4)*sin(2*pi*harmony(11,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(11,6)*sin(2*pi*harmony(11,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(11,8)*sin(2*pi*harmony(11,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(11,10)*sin(2*pi*harmony(11,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(11,12)*sin(2*pi*harmony(11,11)*(2^(octav-5))*time);
    case "B"
        time = linspace(0,duration,duration*fs);
        soundofNote = harmony(12,2)*sin(2*pi*harmony(12,1)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(12,4)*sin(2*pi*harmony(12,3)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(12,6)*sin(2*pi*harmony(12,5)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(12,8)*sin(2*pi*harmony(12,7)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(12,10)*sin(2*pi*harmony(12,9)*(2^(octav-5))*time);
        soundofNote = soundofNote + harmony(12,12)*sin(2*pi*harmony(12,11)*(2^(octav-5))*time);
    end
    damp = 7.5;
    soundofNote = .5*soundofNote.*exp(-damp*time);
    finalSound = [finalSound soundofNote one_silence];

end

audiowrite("noteOptimized.wav",finalSound,fs)


