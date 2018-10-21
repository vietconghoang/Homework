%Khoi tao 2 mang x1 va x2 luu gia tri 2 file audio vao
x1=audioread('orig_input.wav');
[x2,fs]=audioread('MelodySource.wav');
%Dong bo chieu dai 2 mang de phuc vu viec gop am thanh
x2=x2(1:length(x1),:);
x=(x1+x2);  %gop am thanh
%soundsc(x,fs); %nghe ket qua
audiowrite('melody.wav',x,fs);  %ghi ket qua

%FFT-Fast Fourier Transform
X=fft(x);
subplot(1,2,1);
plot(abs(X));title('Figure 1');
N=fs;
transform = fft(x,N)/N;
magTransform = abs(transform);
faxis = linspace(-fs/2,fs/2,N);
subplot(1,2,2);
plot(faxis,fftshift(magTransform));title('Figure 2');
xlabel('Frequency (Hz)');

