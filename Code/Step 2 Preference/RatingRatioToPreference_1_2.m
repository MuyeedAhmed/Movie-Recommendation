rg1 = xlsread('C:\Users\akib1\Documents\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Rating.xls');
ro1 = xlsread('C:\Users\akib1\Documents\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Ratio.xls');

[row, column] = size(rg1);
preference = zeros(row, column);


ratingWeight = 1;
ratioWeight = 2;

preference(:,1) = rg1(:,1);
for i= 1 : row
    for j = 2 : column
        preference(i,j) = ((rg1(i,j)*ratingWeight + (ro1(i,j)*5*ratioWeight)) / (ratingWeight + ratioWeight) ); 
    end
end


var = array2table(preference);
var.Properties.VariableNames{1} = 'userid';
var.Properties.VariableNames{2} = 'Action';
var.Properties.VariableNames{3} = 'Adventure';
var.Properties.VariableNames{4} = 'Animation';
var.Properties.VariableNames{5} = 'Children';
var.Properties.VariableNames{6} = 'Comedy';
var.Properties.VariableNames{7} = 'Crime';
var.Properties.VariableNames{8} = 'Documentary';
var.Properties.VariableNames{9} = 'Drama';
var.Properties.VariableNames{10} = 'Fantasy';
var.Properties.VariableNames{11} = 'Film_Noir';
var.Properties.VariableNames{12} = 'Horror';
var.Properties.VariableNames{13} = 'Musical';
var.Properties.VariableNames{14} = 'Mystery';
var.Properties.VariableNames{15} = 'Romance';
var.Properties.VariableNames{16} = 'Sci_Fi';
var.Properties.VariableNames{17} = 'Thriller';
var.Properties.VariableNames{18} = 'War';
var.Properties.VariableNames{19} = 'Western';


writetable(var , 'C:\Users\akib1\Documents\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Preference_1_2.csv');
