x0 = str2double(input('enter initial guess' ,"s"));

choice  = str2double(input('enter 1 for no of iterations and 2 for accuracy' ,"s"));
switch (choice)
    case 1 
        n = str2double(input('enter number of iterations' ,"s"));
        k = 0;
        for i = 1:n
            f__0 = diff2(x0, delta(x0));
            f_0 = diff(x0 ,delta(x0));
            x1 = x0 - f_0/f__0 ;
            f_1 = diff(x1,delta(x1));
            k = k+1;
            disp(['x' , num2str(k-1) , ' = ' , num2str(x0)])
            disp(['f''(x' , num2str(k-1) ,')', ' = ' , num2str(f_0)])
            disp(['f"(x' , num2str(k-1) ,')', ' = ' , num2str(f__0)])
            disp(['x' , num2str(k) , ' = ' , num2str(x1)])
            x0 = x1 ;
            disp(['f''(x' , num2str(k) ,')', ' = ' , num2str(f_1)])
        end
        disp(['minimum of f(x) is at x', num2str(k) , ' = ' , num2str(x1)])
    case 2
        e = str2double(input('enter epsilon' ,"s"));
        k = 0;
        flag = 1 ;
        while(flag)
            f__0 = diff2(x0, delta(x0));
            f_0 = diff(x0 ,delta(x0));
            x1 = x0 - f_0/f__0 ;
            f_1 = diff(x1,delta(x1));
            k = k+1;
            disp(['x' , num2str(k-1) , ' = ' , num2str(x0)])
            disp(['f''(x' , num2str(k-1) ,')', ' = ' , num2str(f_0)])
            disp(['f"(x' , num2str(k-1) ,')', ' = ' , num2str(f__0)])
            disp(['x' , num2str(k) , ' = ' , num2str(x1)])
            x0 = x1 ;
            disp(['f''(x' , num2str(k) ,')', ' = ' , num2str(f_1)])
            
            if abs(f_1)<e
                flag = 0;
                disp(['minimum of f(x) is at x', num2str(k) , ' = ' , num2str(x1)])
            end
        end
        
end






%%
function e = eval(x)
    e = x^4-5*x^3+2*x^2+4*x+5  ;
end

function f__ = diff2(x,e)
    f__ = (eval(x+e)-2*eval(x)+eval(x-e))/e^2;
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