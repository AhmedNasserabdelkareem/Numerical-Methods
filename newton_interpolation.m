function [ result,excution_time,fn ] = newton_interpolation( points , correspondingPoints, queries)
tic;
pointsSize = size(points);
result = zeros(pointsSize(1), pointsSize(1)+1);
for i = 1:pointsSize(1)
    result(i,1) = points(i);
    result(i,2) = correspondingPoints(i);
end
for j = 3:pointsSize(1)+1
    for i = j-1:pointsSize(1)
        result(i,j) = (result(i,j-1)-result(i-1,j-1))/(result(i,1)-result(i-j+2,1));
    end
end
syms x;
fn = result(1,2);
for i = 2:5
    fnLoop = 1;
   for j = i:1
      fnLoop = fnLoop * (x - result(5-j,1)); 
   end
   fnLoop = fnLoop * result(i,i+1);
end
fn = fn + fnLoop;
excution_time = toc;




end
