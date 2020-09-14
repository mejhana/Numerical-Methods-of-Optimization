
min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
e = str2double(input('enter epsilon' ,"s"))

xm = (min + max) /2
l = max - min

while(abs(l) >= e )
    x1 = min + l/4
    x2 = max - l/4
    f1 = eval(x1)
    f2 = eval(x2)
    f3 = eval(xm)
    
   if (f1<f3)
       max = xm
       xm = x1
    
   elseif (f2<f3)
       min = xm
       xm = x2
       
   else 
       min = x1
       max = x2
     
   end
   l = max- min

end
      
if (abs(l) < e )
    disp('min found in interval')
    min
    max
end


%%
function e = eval(x)
    e = x^2 + 54/x ;
end