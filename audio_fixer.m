clear all
clc

[audio, fs] = audioread('audio.wav');

start_time = 3;
end_time = 15;

start_samples = round(start_time*fs);
end_samples = round(end_time*fs);

audio_fixed = audio(start_samples:end_samples, :);

sound(audio_fixed, fs);

audiowrite('audio_fixed.wav', audio_fixed, fs);