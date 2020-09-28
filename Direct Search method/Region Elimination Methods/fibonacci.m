min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
m = str2double(input('enter number of evaluations' ,"s"))
k = 2
l=max-min
while(k < m )
    lk = (fibonacci(m - k + 2)/fibonacci(m+2))*l
    x1 = min + lk
    x2 = max - lk
    f1 = eval(x1)
    f2 = eval(x2)
    
   if (f1<f2)
       max = x2
    
   elseif (f1>f2)
       min = x1
       
   else 
       min = x1
       max = x2
     
   end
   k= k+1 

end
      
if (k == m )
    disp('min found in interval')
    min
    max
end
%%
function e = eval(x)
    e = x^2 + 54/x ;
end