ratio = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 1 Data Manipulation\Ratio 1-12000');
ratings = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 1 Data Manipulation\AvgRating 1-12000.xls');

[row, column] = size(ratings);


Model = readfis('E:\Google Drive NSU\PC\Research\MovieTV\Code\Step 2 Preference\FuzzyRules.fis');

dataTable = ratings;


for i = 1 : 18
    sRatings = ratings(:, (i+1));
    sRatio = ratio(:, (i+1));
    x = evalfis([sRatings sRatio] , Model);
    
    dataTable(:,i+1) = x;
end





xlswrite('C:\Users\akib1\Documents\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Fuzzy.xls', dataTable);
