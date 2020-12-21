min = str2double(input('enter lower bound' ,"s"))
max = str2double(input('enter upper bound' ,"s"))
choice  = str2double(input('enter 1 for number of iterations and 2 for accuracy' ,"s"))
switch(choice)
    case 1 
        n = str2double(input('enter number of iterations ' ,"s"))
        xm = (min + max) /2  
        l = max - min
        for i = 1:n
            fm = eval(xm)
            x1 = min + l/4
            f1 = eval(x1)
            x2 = max - l/4
            f2 = eval(x2)

            
           if (f1<fm)
               max = xm;
               xm = x1;
            
           elseif (f2<fm)
               min = xm;
               xm = x2;
               
           else 
               min = x1;
               max = x2;  
           end
           l = max - min;
           disp(['The length of interval is : ' , num2str(l)])
           disp(['At iteration ' , num2str(i) ,' the min lies in the range  : ' , num2str(min), ' and ' , num2str(max)])   
           
        end
        
    case 2
        e = str2double(input('enter epsilon' ,"s"))
        xm = (min + max) /2
        l = max - min 
        i = 1;
        while(abs(l) >= e )
            fm = eval(xm)
            x1 = min + l/4
            f1 = eval(x1)
            x2 = max - l/4
            f2 = eval(x2)
            
           if (f1<fm)
               max = xm ;
               xm = x1 ;
            
           elseif (f2<fm)
               min = xm ;
               xm = x2 ;
               
           else 
               min = x1 ; 
               max = x2 ;
             
           end
           l = max - min;
           disp(['the length of interval is : ' , num2str(l)])
           disp(['At iteration ' , num2str(i) ,' the min lies in the range  : ' , num2str(min), ' and ' , num2str(max)])   
           i = i +1;
        
        end

end
%%
function e = eval(x)
    e = (x^2 - 1)^3 + (2*x - 5)^4 ;
end