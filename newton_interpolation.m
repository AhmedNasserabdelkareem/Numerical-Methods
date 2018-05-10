function [ result,excution_time,fn ] = newton_interpolation( points , correspondingPoints, queries)
tic;
pointsSize = length(points);
result = zeros(pointsSize, pointsSize+1);
for i = 1:pointsSize
    result(i,1) = points(i);
    result(i,2) = correspondingPoints(i);
end
for j = 3:pointsSize(1)+1
    for i = j-1:pointsSize(1)
        result(i,j) = (result(i,j-1)-result(i-1,j-1))/(result(i,1)-result(i-j+2,1));
    end
end
% columnIndex = 2;
% result
% for i = 1:pointsSize
%    coof(i) = result(i,columnIndex);
%    columnIndex = columnIndex + 1;
% end
% 
% for i = 1:pointsSize
%     
%     
%     
%     
% end




syms x;
fn = result(1,2);
for i = 2:pointsSize
    fnLoop = 1;
    k = 1;
   for j = i-1:-1:1
      fnLoop = fnLoop * (x - result(k,1));
      k = k + 1;
   end
   fnLoop = fnLoop * result(i,i+1);
   fn = fn + fnLoop;
end
fn = simplify(fn);
excution_time = toc;



end

