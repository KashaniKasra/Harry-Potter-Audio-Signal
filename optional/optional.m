clc , clear
[Y , fs] = audioread("noteHarryPoter.wav");
size = length(Y)
fram_samples = floor(0.1*fs);
frequency = (0:fram_samples-1) * (fs/fram_samples);
i = 1;
C4 = 261.626;
f_prev = 1000000;
duration = 0;
notes =[];
names = ["C","C#" , "D","D#","E","F","F#","G","G#","A","A#","B"];

while i<size-fram_samples

    Frame = abs(fft(Y(i:i + fram_samples)));
    [A , indexhelper] = max(Frame(1:floor(fram_samples)));
    
    f_note = frequency(indexhelper);
    

    if(f_prev-8 < f_note  && f_prev+8 > f_note)
        if(f_note ==0)
             i = i+fram_samples;
             f_prev = 1000000;
             duration = 0;
            continue
        end
        noteOffset = round(log(f_note/C4)/(log(2)/12));
        duration = duration+0.1;
    
    else
        f_prev = f_note;
        t = round(duration , 1);
        if t>=0.1
            
            octav = floor(noteOffset/12)+4;
            noteName = mod(noteOffset,12)+1;
            notes = [notes , names(noteName)+" "+string(octav)+" "+string(t)];


        end
        duration = [0.1];
    end
    i = i+fram_samples;
    if(i>size)
        break
    end
    while(Y(i)==0)
            i=1+i;
    if(i>size)
        break
    end
    end
    if(i>size)
        break
    end


end
notes

