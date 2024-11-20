divisionfactor = 1;
numProtValues = 2; %assumes values are consecutive

fprintf('\n\nCompas with balanced weights\n\n')
T = readtable('compas_test_data_weight1.csv');
Ytest = T.two_year_recid*2-1;
Ypred = T.predictedLabel*2-1;
[vals, ~, protectedValuesTest] = unique(T.race);
vals

simpleClassifierAnalysis
filename = sprintf('compasResults_weight1.mat');
save(filename, 'exp', 'info')

fprintf('$%.2f\\%%$ & $%.2f\\%%$ & $%.2f\\%%$ \\\\ \n', 100*[info.wg, info.pi_g, info.pg]')
exp1 = exp;

fprintf('\n\nCompas with weight 1:1.1 weights\n\n')
T = readtable('compas_test_data_weight1.1.csv');
Ytest = T.two_year_recid*2-1;
Ypred = T.predictedLabel*2-1;
[vals, ~, protectedValuesTest] = unique(T.race);

simpleClassifierAnalysis
filename = sprintf('compasResults_weight11.mat');
save(filename, 'exp', 'info')

fprintf('$%.2f\\%%$ & $%.2f\\%%$ & $%.2f\\%%$ \\\\ \n', 100*[info.wg, info.pi_g, info.pg]')

exp11 = exp;