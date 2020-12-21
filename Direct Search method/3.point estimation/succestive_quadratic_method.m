x1 = str2double(input('enter initial point' ,"s"));
delta = str2double(input('enter delta' ,"s"));
x2 = x1 + delta;
f1 = eval(x1);
f2 = eval(x2);
if f1 >=f2
   x3 = x1+2*delta;
else
    x3 = x1 - delta;
end
f3 = eval(x3);
values = [x1 f1; x2 f2; x3 f3]
choice = str2double(input('enter 1 for no of iterations and 2 for termination parameter ',"s"))
switch (choice )
    case 1
        n = str2double(input('enter number of iterations',"s"))
        for i = 1:n 
            disp(['interation no : ' num2str(i)])
            a1 =  (values(2,2) -values(1,2))/(values(2,1) - values(1,1))
            a2 = ((values(3,2) - values(1,2))/(values(3,1)-values(1,1)) - a1)/(values(3,1)-values(2,1))
            x_mean = (values(1,1)+values(2,1))/2 - a1/(2*a2)
            f_mean = eval(x_mean)
            values = [values ; [x_mean , f_mean]];
            values = sortrows(values,2,"ascend");
            values = values(1:3, :);
            values = sortrows(values , 1 , "ascend")   
        end
        [fx_min ,x_min] = min(values(:,2));
        p = ['The minimum is at ' , num2str(values(x_min,1)) , ' and function value is ' , num2str(fx_min)];
        disp(p)
    case 2 
        n = str2double(input('enter termination parameter',"s"))
        flag = 1;
        i = 1;
        while (flag)
            disp(['interation no : ' num2str(i)])
            a1 =  (values(2,2) -values(1,2))/(values(2,1) - values(1,1))
            a2 = ((values(3,2) - values(1,2))/(values(3,1)-values(1,1)) - a1)/(values(3,1)-values(2,1))
            x_mean = (values(1,1)+values(2,1))/2 - a1/(2*a2)
            f_mean = eval(x_mean)
            values = sortrows(values,2,"ascend");
            fx_min = values(1,2);
            x_min = values(1,1);
            
            x = [values ; [x_mean , f_mean]];
            x = sortrows(x,2,"ascend");
            values = x(1:3, :);
            values = sortrows(values , 1 , "ascend")
            
            if (abs(fx_min - f_mean)<n) && (abs(x_min-x_mean)<n)
                flag = 0;
                [fx_min ,x_min] = min(values(:,2))
                p = ['The minimum is at ' , num2str(values(x_min,1)) , ' and function value is ' , num2str(fx_min)];
                disp(p)     
            end
            i = i+1;
        end
end

%%
function e = eval(x)
    e = x^3*sin(2*x) + x;
end