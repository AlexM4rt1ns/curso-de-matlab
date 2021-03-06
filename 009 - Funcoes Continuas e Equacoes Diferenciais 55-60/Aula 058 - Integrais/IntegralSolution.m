%%
%     Curso do canal ExataMenteS
%     Aula 58 - Integrais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Test in a simple example: x
syms x
f = x;
intf = int(f);

% Plot
figure(1), clf, hold on
fplot(f, [-5 5])
fplot(intf,[-5 5])
legend({['f(x)=' char(f)],[ '\int f=' char(intf)]})

% VPA Intro
% Help VPA, and see what this function does

%% Partial integration

syms x y
fxy = sin(x) * cos(y)^3;

% Compute integral with respect to x
int(fxy,x)

% Compute integral with respect to y
int(fxy,y)

% Value of the partial integral with respect to x 
% At x=pi and y=-pi/3?
Value = subs( int(fxy,x), [x y], [pi -pi/3] );
Value2 = vpa(Value,5);

%% Difficult function
f =  sec(x) * log(tanh(x)*sin(x)) / exp(x);

% Plot
figure(2), clf, hold on
title(['f(x)=' char(f)])
fplot(f,[-20 10],'linew',3)

% Compute its integral
intf = int(f);

% Compute the integral numerically
Vector = linspace(-20,10,100);  % Values
Func  = zeros( size(Vector) );  % Initialize

% Implement the mathematical function as an anonymous function
AnFunc = @(x) sec(x) .* log(tanh(x).*sin(x)) ./ exp(x);

% Loop over time points and 
% compute the integral up to that time point
for i = 1:length(Vector)
    
    Func(i) = integral(AnFunc, Vector(1), Vector(i));
    
end

% Plot
plot(Vector,real(Func),'linew',3)
