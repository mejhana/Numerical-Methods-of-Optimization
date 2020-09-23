
a = str2double(input('enter lower bound' ,"s"));
b = str2double(input('enter upper bound' ,"s"));
k = 1;
acc = str2double(input('enter the accuracy/ epsilon' ,"s"));
min = 0;
max = 1;
l=1;

while(l >= acc )
    w1 = min + 0.618*l;
    w2 = max -  0.618*l;
    f1 = eval(w1 , a , b);
    f2 = eval(w2 , a , b);
    if (f1>f2)
        min = w1;
    elseif (f1<f2)
        max = w2;
    else
        min = w1;
        max = w2;
    end
        
    l = max - min;
    if ( l > acc )
        k= k+1;
    end 
end
if (l < acc)
    disp("the minimum value lies in range - ")
    min;
    max;
    disp("the length of interval is ")
    l;
end 

%%
function e = eval(x , min, max)
    e = (x-min)/(max-min)^2 + 54/(x-min)/(max-min) ;
end
