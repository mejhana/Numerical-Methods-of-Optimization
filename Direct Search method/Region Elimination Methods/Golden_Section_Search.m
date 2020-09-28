a = str2double(input('enter lower bound' ,"s"));
b = str2double(input('enter upper bound' ,"s"));
k = 1;
n = str2double(input('enter the number of iterations' ,"s"));
min = 0;
max = 1;
l=1;
acc = (0.618)^n * (max-min)

while(l > acc )
    w1 = min + 0.618*l
    w2 = max - 0.618*l
    if (w1 > w2)
        temp = w1
        w1 = w2
        w2 = temp
    end
    f1 = eval(w1*(b-a) + a)
    f2 = eval(w2*(b-a) + a)
    if (f1>f2)
        min = w1
    elseif (f1<f2)
        max = w2
    else
        min = w1
        max = w2
    end
           
    l = max - min
    
    if ( l > acc )
        k= k+1
    end 
end

disp("the minimum value lies in range - ")
min
max
disp("the length of interval is ")
l

disp("the final interval is ")
(b-a)* min + a
(b-a)* max + a
%%
function e = eval(x)
    e = x^2 + 54/x ;
end