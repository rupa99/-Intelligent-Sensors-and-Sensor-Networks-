%goal: to create a spike train signal which only has -1 and 1 magnitudes 
%the signal will hvae k nonzero values out of n values 

addpath('spot-1.2\spot-1.2')  
%savepath spot-1.2\spot-1.2

addpath('\new')  
%savepath l1e1_pd


m = 120; 
n = 512; %creating a random permutation of integrers 1 to n; the first k of these will be the indicies of the signal's nonzero values 
k = 20; % k nonzero values our of n values 

p = randperm(n);

x0 = zeros(n,1); % initialize as the column vectore of n zeros 
%set the designated nonzero values to be randomly 1 or -1 
x0(p(1:k)) = sign(randn(k, 1))

%plot the resulting signal - Part a - creating a spare vector of 512 random
%sensory values
figure(1); 
plot(1:n, x0); 
axis([0 512 -1.5 1.5])


%%%% - uncomment after this
m = 120;
%we sample the signal using matrix A

A = opGaussian(m, n)
%inputData = rand(120, 512)
%A = random('normal', 0, 1, size(inputData))
%A = Gaussian(120, 512)
%rows: 120; 
%complex: no; 
%cols: 512
%type is gaussin

%new vector b has m entries 
% we add some random noise 
b = A*x0 + 0.005 * randn(m,1); 

figure(); 
plot(1: m,b)

xp = l1eq_pd(x0,A,[],b,1e-2);

figure(2)
plot(1:n, x0, 1:n, xp)
axis([0 550 -1.5 1.5]);
legend('truth', 'recovery')

R = corrcoef( x0 , xp ) %finding the correlation between the two 