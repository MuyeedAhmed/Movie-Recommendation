r = zeros(20,1);

for i = 1:19
    r(i+1, 1) = (IntraClusterDistance(i,3) - IntraClusterDistance(i+1,3))/IntraClusterDistance(i,3);
end
r = r * 100;

IntraClusterDistance = [IntraClusterDistance r];
