movies = readtable('H:\MATLAB\Project\Dataset\Movie Lens\movies.csv');
ratings = readtable('H:\MATLAB\Project\Dataset\Movie Lens\ratings.csv');

ratings(:,'timestamp') = [];
[row column] = size(movies);

splittedTable = table();

for i = 1 : row    
    table_to_cell = table2cell(movies(i,1));
    movie_id = cell2mat(table_to_cell);
    
    table_to_cell = table2cell(movies(i,2));
    movie_title = char(table_to_cell);
    
    table_to_cell = table2cell(movies(i,3));
    cell_to_string = char(table_to_cell);
    splitted_genre = strsplit(cell_to_string , '|');
      
    [garbage , no_of_string] = size(splitted_genre);
    
    for j = 1 : no_of_string
        cellPatients = {'movieId', 'genre' ; movie_id , splitted_genre(j)};
        T2 = cell2table(cellPatients(2:end,:));
        T2.Properties.VariableNames = cellPatients(1,:);

        splittedTable = [splittedTable;T2];        
    end
    
end

writetable(splittedTable , 'F:\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Movie Genre Splitted Data.csv');
splittedTable = readtable('F:\NSU\172 Summer\CSE445\Project\Matlab Works\Data\Movie Genre Splitted Data.csv');
userVSratings = outerjoin(splittedTable, ratings);

writetable(userVSratings , 'F:\NSU\172 Summer\CSE445\Project\Matlab Works\Data\User Rating - Movie Genre Splitted Data.csv');