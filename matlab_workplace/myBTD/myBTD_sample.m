R = 2;
multirank = [40, 40, 1];
max_iter = 2;

g = load("recording.mat");
addpath('tensorlab/');

T = rand(50, 51, 12);

[output] = myBTD(R, multirank, max_iter, T);