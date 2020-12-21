x1 = str2double(input('enter starting point' ,"s"));
x2 = str2double(input('enter ending point' ,"s"));
f_1 = diff(x1, delta(x1));
f_2 = diff(x2 ,delta(x2));
while(f_1 >0 || f_2<0 )
    disp('choose a different starting and ending point')
    disp(['because f_1 = ', num2str(f_1), '>0 and f_2 = ' , num2str(f_2) , ' <0' ])
    x1 = str2double(input('enter starting point' ,"s"));
    x2 = str2double(input('enter ending point' ,"s"));
end
choice = str2double(input('enter 1 for no of iterations and 2 for accuracy' ,"s"));
switch (choice)
    case 1
        n = str2double(input('enter number of iterations ' ,"s"));
        for i = 1:n 
            disp(['interation no : ' num2str(i)])
            z= (x1+x2)/2
            f_z = diff(z , delta(z))
            if f_z < 0
                x1 = z;
            elseif f_z >0
                x2 = z;
            end
            disp(['the minimum in iteration ', num2str(i) ,' is in between ', num2str(x1) , ' and ' , num2str(x2)])
            z= (x1+x2)/2
        end
        disp(['the minimum is at x = ' , num2str(z)])
    case 2
        e = str2double(input('enter accuracy' ,"s"));
        flag = 1;
        i = 1;
        while(flag)
            disp(['interation no : ' num2str(i)])
            z= (x1+x2)/2
            f_z = diff(z , delta(z));
            if abs(f_z) < e
                flag = 0;
            elseif f_z < 0
                x1 = z;
            elseif f_z >0
                x2 = z;
            end 
            disp(['the minimum in iteration ', num2str(i) ,' is in between ', num2str(x1) , ' and ' , num2str(x2)])
            i = i + 1;
        end
        disp(['the minimum is at x = ' , num2str(z)])
end



%%
function e = eval(x)
    e = x^3*sin(2*x) + x ;
end

function f_ = diff(x,e)
    f_ = (eval(x+e)-eval(x-e))/(2*e);
end

function d = delta(z)
    if abs(z)>0.01
        d = 0.01*abs(z);
    else
        d = 0.0001; 
    end
end