%%
%     Curso do canal ExataMenteS
%     Aula 17 - Autovetores e Forma Quadr�tica
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atr�ves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Crie a matrix 2x2
A = [5 3; 7 1];


% Divisao em cada dimensao
p = -10:1:10;

% Definir a funcao como uma matriz nula
QuadNorm = zeros( length(p) );

% Loop entre os nossos pontos 'p'
for i = 1:length(p)
    
    for j = 1:length(p)
        
        % Definir o vetor 'a' para cada interacao
         a = [ p(i) p(j) ]';
        
        % Computar a forma quadratica para a matriz A
        % E dividir pelo produto escalar de A
        QuadNorm(i,j) = (a' * A * a) / ( a' * a );
        
    end
end

% Calcule os Autovetores


% Crie a superficie da funcao Quadratica Normalizada
figure(2), clf;
surf(p, p, QuadNorm'), shading interp;
title('Forma Quadradica Normalizada');
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;

% Plot dos Autovetores na Superficie
hold on
plot3(,'r','linewidth',3) % Utilize o seu conhecimento de plot3 :)
plot3(, 'm','linewidth',3)

