min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
choice  = str2double(input('enter 1 for number of intervals and 2 for accuracy' ,"s"))
switch(choice)
    case 1 
        n = str2double(input('enter the number of intervals' ,"s"));
    case 2
        acc = str2double(input('enter the accuracy example 0.001' ,"s"))
        n = 2*(max - min)/acc      
end
k =  1

delta = (max - min)/n
x1 = min 
f1 = eval(x1)
x2 = x1 + delta 
f2 = eval(x2)
x3 = x2 + delta
f3 = eval(x3)

while(x3 <= max )
    disp(['iteration: ' , num2str(k)])
    if (f1>=f2) && (f2<= f3)
        disp(['the minimum point lies between' , num2str(x1) , ' and ' , num2str(x3)])
    break
    else
       x1 = x2;
       x2 = x3;
       x3 = x2 +delta;
       f1 = eval(x1);
       f2 = eval(x2);
       f3 = eval(x3);
    end
    k = k + 1;
end

if (x3 > max)
    disp('no min found in interval')
end
%%
function e = eval(x)
    e = sin(x) + 4*x^2;
end