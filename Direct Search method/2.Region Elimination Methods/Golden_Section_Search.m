a = str2double(input('enter lower bound' ,"s"));
b = str2double(input('enter upper bound' ,"s"));
choice = str2double(input('enter 1 for no of iterations and 2 for accuracy' ,"s"));
switch (choice )
    case 1 
        n = str2double(input('enter the number of iterations' ,"s"));
        acc = (0.618)^n * (b - a)
    case 2
        acc = str2double(input('enter the accuracy' ,"s"));
        n = ceil( log10(acc/(b-a)) / log10(0.618) )
end
k = 1;
min = 0;
max = 1;
l=1;

for i = 1:n
    disp(['interation no : ' num2str(i)])
    w1 = min + 0.618*l;
    w2 = max - 0.618*l;
    if (w1 > w2)
        temp = w1;
        w1 = w2
        w2 = temp
    end
    f1 = eval(w1*(b-a) + a)
    f2 = eval(w2*(b-a) + a)
    if (f1>f2)
        min = w1;
    elseif (f1<f2)
        max = w2;
    else
        min = w1;
        max = w2;
    end    
    disp(['the minimum value lies in range : ' , num2str(min) , ' and ' , num2str(max)])
    l = max - min;
    disp(['the length of interval is :' , num2str(l)])

end

disp(['the final interval is in between ' , num2str((b-a)* min + a) , ' and ' , num2str( (b-a)* max + a )])

%%
function e = eval(x)
    e = 2 + (x-1)^2 - cos(x);
end