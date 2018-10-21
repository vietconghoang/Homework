%Spectrogram
[y,fs]=audioread('melody.wav');
y= y(:, 1:floor(end/2) ,:); %Do ghi file dang stereo nen mang y co 2 cot
win = 128;
hop = win/2;
nfft = win;
spectrogram(y,win,hop,nfft,fs,'yaxis');
