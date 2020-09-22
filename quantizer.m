function [Lmin,Lmax,d,y,e] = quantizer(x,L)
    
    if rem(L,2)==0
        Number_samples=length(x);
        y=zeros(1,Number_samples);
        e=zeros(1,Number_samples);
        xmax=max(x);
        xmin=min(x);
        d=(xmax-xmin)/L;
        Lmin=xmin+d/2;
        Lmax=xmax-d/2;
            for j=1:Number_samples 
                index_value(j)=round((x(j)-xmin)/d);  
                u(j)=xmin + index_value(j)*d;  
                for i=Lmin:d:Lmax      
                    if abs(u(j)-i) <= d    
                        y(j)=i;
                        e(j)=y(j)-x(j);      
                    end
                end
            end
    else
        Number_samples=length(x);
        y=zeros(1,Number_samples);
        e=zeros(1,Number_samples);
        xmax=max(x);
        xmin=min(x);
        d=(xmax-xmin)/(L+1);
        Lmin=xmin+d;
        Lmax=xmax-d;
            for j=1:Number_samples 
                index_value(j)=round((x(j)-xmin)/d);  
                u(j)=xmin + index_value(j)*d;  
                for i=Lmin:d:Lmax      
                    if abs(u(j)-i) <= d    
                        y(j)=i;
                        e(j)=y(j)-x(j);      
                    end
                end
            end
    end

end 