function z=coder(y,d)

    ymin = min(y);
    Number_samples=length(y);
    z=zeros(1,Number_samples*3);
    for j = 1:Number_samples  
        p = j+3;
        if y(j) == ymin
            z(1,p)=0;
            z(1,p+1)=0;
            z(1,p+2)=0;
        elseif y(j) == ymin+d
            z(1,p)=0;
            z(1,p+1)=0;
            z(1,p+2)=1;
        elseif y(j) == ymin+2*d
            z(1,p)=0;
            z(1,p+1)=1;
            z(1,p+2)=0;
        elseif y(j) == ymin+3*d
            z(1,p)=0;
            z(1,p+1)=1;
            z(1,p+2)=1;
        elseif y(j) == ymin+4*d
            z(1,p)=1;
            z(1,p+1)=0;
            z(1,p+2)=0;
        elseif y(j) == ymin+5*d
            z(1,p)=1;
            z(1,p+1)=0;
            z(1,p+2)=1;
        elseif y(j) == ymin+6*d
            z(1,p)=1;
            z(1,p+1)=1;
            z(1,p+2)=0;
        end
     end
end