Preference_1_1 = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 2 Preference\Preference_1_1.xls');
Rating = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 2 Preference\Rating.xls');
Fuzzy = xlsread('E:\Google Drive NSU\PC\Research\MovieTV\Data\Step 2 Preference\Fuzzy.xls');
% % Fuzzy(:,2:19) = Fuzzy(:,2:19) * 5;
%% 
[coeff,score,latent] = pca(Fuzzy(:, 2:19));

Ureduce = coeff(:,1:6)';
Z = Ureduce*Fuzzy(:,2:19)';
ZFuzzy = Z';

%%
InterClusterDistance = zeros(20,2);
IntraClusterDistance = zeros(20,2);
nClusters = 20;
totSum=zeros(nClusters);

for i=1:nClusters
    [~,~,sumd,d]=kmeans(ZFuzzy,i);
    totSum(i)=(sum(sumd)/12000);
    InterClusterDistance(i,1) = 0;
    for j = 1 : 12000
        InterClusterDistance(i,1) = InterClusterDistance(i,1) + (sum(d(j,:)) - min(d(j,:)));
    end
end

IntraClusterDistance(:, 1) = totSum(:,1);

totSum=zeros(nClusters);

for i=1:nClusters
    [~,~,sumd,d]=kmeans(Fuzzy(:,2:19),i);
    totSum(i)=(sum(sumd)/12000);
    InterClusterDistance(i,2) = 0;
    for j = 1 : 12000
        InterClusterDistance(i,2) = InterClusterDistance(i,2) + (sum(d(j,:)) - min(d(j,:)));
    end
end

IntraClusterDistance(:, 2) = totSum(:,1);
