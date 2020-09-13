x0 = str2double(input('initial guess' ,"s"))
k = 0
min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
acc = str2double(input('enter the accuracy example 0.001' ,"s"))
n = (max - min)/acc
delta = (max - min)/n



while(x0 <= max )
    f1 = eval(x0 - delta)
    f2 = eval(x0)
    f3 = eval(x0 + delta)
    
   if (f1>=f2) && (f2>= f3)
       delta = (2^k)*delta
       x0 = x0 + delta
       k= k+1 
    
   elseif (f1<=f2) && (f2<= f3)
       delta = -((2^k)*delta)
       x0 = x0 + delta
       k= k+1
       
   elseif (f1>=f2) && (f2<= f3)
       disp('the interval is between - ')
       x0 - delta
       x0 + delta
       break
   else 
       x0 = str2double(input('change initial guess' ,"s"))
          
   end

end
      
if (x0 > max)
    disp('no min found in interval')
end


%%
function e = eval(x)
    e = x^2 + 54/x ;
end