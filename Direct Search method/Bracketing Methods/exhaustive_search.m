

min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
acc = str2double(input('enter the accuracy example 0.001' ,"s"))
n = (max - min)/acc
delta = (max - min)/n
x1 = min 
x2 = x1 + delta 
x3 = x2 + delta

f1 = eval(x1)
f2 = eval(x2)
f3 = eval(x3)

while(x3 <= max )
   if (f1>=f2) && (f2<= f3)
    disp('the minimum point lies between')
    x1
    x3
    break
   else
       x1 = x2
       x2 = x3
       x3 = x2 +delta
       f1 = eval(x1)
       f2 = eval(x2)
       f3 = eval(x3)
   end
end

if (x3 > max)
    disp('no min found in interval')
end


%%
function e = eval(x)
    e = x^2 + 54/x ;
end