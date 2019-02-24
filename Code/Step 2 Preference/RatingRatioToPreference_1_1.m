ro1 = readtable('H:\MATLAB\Project\Matlab Works\Data\Manipulated Data\Ratio 1-12000 .csv');
rg1 = readtable('H:\MATLAB\Project\Matlab Works\Data\Manipulated Data\AvgRating 1-12000.csv');

[row, column] = size(rg1);
preference = [row column];


ratingWeight = 1;
ratioWeight = 1;

 for i= 1 : row
    for j = 1 : column
        
        table_to_cell = table2cell(rg1(i,j));
        rating = cell2mat(table_to_cell);
        table_to_cell = table2cell(ro1(i,j));
        ratio = cell2mat(table_to_cell);
        if j==1
            preference(i,j) = rating;
        else
            preference(i,j) = ((rating*ratingWeight + (ratio*5*ratioWeight))/(ratingWeight + ratioWeight));
        end
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


writetable(var , 'H:\MATLAB\Project\Matlab Works\Data\Preference 1-1\Preference 1-1.csv');
