%% Define one sample: inputs and outputs

close all, clear all, clc, format compact

inputs=[1:6]'; % input vector (6-D pattern)
outputs=[1,2]'; % corresponding target outpur vector

%% Define and custom network

%create network
 net=network(1,2,[1;0],[1;0],[0 0; 1 0], [0 1]);
 
% View network structure
view(net);


%% Define topology and transfer function

% number of hidden layer neurons
net.layers{1}.size=5;
% Hidden layer transfer function
net.layers{1}.transferFcn='logsig';
view(net);

%% configure network
net = configure(net, inputs, outputs);
view(net);

%% Train net and calculate neuron output
%initial network response without training
initial_output=net(inputs)

%network training

net.trainFcn='trainlm';
net.performFcn='mse';
net=train(net, inputs, outputs);

%network response after training
final_output=net(inputs)

