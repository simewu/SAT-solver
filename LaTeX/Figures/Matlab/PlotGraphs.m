%data = readmatrix('VaryClauses.csv');
%data = readmatrix('VaryLiterals.csv');
%data = readmatrix('VaryBoth.csv');
%data = readmatrix('NumOperations.csv');
data = readmatrix('NumOperations-SameCL.csv');


cl = data(:,1);
ops = data(:,4);
cftool(cl,ops);
return;

clauses = data(:,1);
literals = data(:,2);
time = data(:,3);
ops = data(:,4);

%nums = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192];

xv = linspace(min(clauses), max(clauses), 20);
yv = linspace(min(literals), max(literals), 20);
[X,Y] = meshgrid(xv, yv);
Z = griddata(clauses,literals,time,X,Y);



fig1=figure(1);
fig1.Renderer='Painters';

[M2, c2] = contour3(X, Y, Z, 50);
c2.LineWidth = 1;

hold on

[M, c] = contour3(X, Y, Z);
c.LineWidth = 3;


clabel(M, c)


view(2)


xlim([1 8192]);
ylim([1 8192]);

%stem3(clauses, literals, time);
shading interp

%p = plot(clauses, time, '-', 'MarkerSize', 5);

grid on;
%title('Number of Read/Write Operations');
title('Clause-Literal Performance Trade-offs');
xlabel('Number of Clauses');
ylabel('Number of Literals');

%xlim([1 65536]);
%ylim([0 400]);
%set(gca, 'XScale', 'log');

axis square;