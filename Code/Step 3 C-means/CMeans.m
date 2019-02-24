% data = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 2 Preference\Fuzzy.xls');

[centers,U,objFunc] = fcm(data(:, 2:19), 20);

