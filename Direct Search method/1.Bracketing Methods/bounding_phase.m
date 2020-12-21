delta = str2double(input('enter increment value' ,"s"))
flag  = 1;
while(flag)
    flag = 0;
    x2 = str2double(input('enter initial guess' ,"s"))
    k = 0;
    f1 = eval(x2 - delta)
    f2 = eval(x2)
    f3 = eval(x2 + delta)
    if (f1>=f2) && (f2>= f3)
       delta = (2^k)*delta;
    elseif (f1<=f2) && (f2<= f3)
       delta = -((2^k)*delta);
    elseif (f1>=f2) && (f2<= f3)
       disp(['the interval is between - ' ,num2str( x2 - delta) , ' and ' num2str(x2 + delta)]);
    else 
        flag = 1
        disp('choose another initial guess ');
    end
end
x2 = x2
x2 = [x2 ; (x2 + delta)]
f_ = eval(x2(2))
f = eval(x2(1))
while(f_ < f)
    k = k+1 
    x2 = [x2 ; x2(k+1) + (2^k)*delta]
    f = f_;
    f_ = eval(x2(k+2));
end 
if x2(k) > x2(k+2)
    disp(['the interval is between : ' ,num2str( x2(k+2)) , ' and ' num2str(x2(k))]);
else
    disp(['the interval is between : ' ,num2str( x2(k)) , ' and ' num2str(x2(k+2))]);
end
%%
function e = eval(x)
    e = sin(x) + 4*x^2 ;
end