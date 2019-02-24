% rg1 = readtable('F:\NSU\172 Summer\CSE445\Project\Matlab Works\Data\AvgRating.csv');
% ro1 = readtable('F:\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Ratio.csv');
% 
% ro2 = readtable('H:\MATLAB\Project\Matlab Works\Data\Ratio 1-8908.csv');
% rg2 = readtable('H:\MATLAB\Project\Matlab Works\Data\AvgRating 1-8908.csv');
% 
% 
% rg1 = [rg2;averageRating];
% ro1 = [ro2;ratioTable];
% 
% 
rg1{:,:}(isnan(rg1{:,:})) = 0;
ro1{:,:}(isnan(ro1{:,:})) = 0;

writetable(rg1 , 'H:\MATLAB\Project\Matlab Works\Data\AvgRating 1-12000.csv');
writetable(ro1 , 'H:\MATLAB\Project\Matlab Works\Data\Ratio 1-12000 .csv');


