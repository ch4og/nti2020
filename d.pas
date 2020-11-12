var x, y, t, n, c1, e1:real; 
a, b, c, d, f, e, c2, f1:integer; 
s, m: char; 
q, w, v, j, i, p, zero, xx, g, zero1, zero2, zero3, zero4:string; 
begin 
readln(x,y); 
n:=abs(x); 
t:=abs(y); 
a:=Trunc(n); 
b:=Trunc(60*Frac(n)); 
begin 
c1:=60*frac(60*frac(n)); 
if frac(c1)>=0.9999 then 
c:=round(c1) 
else 
c:=trunc(c1); 
end; 
if c=60 then 
b:=b+1; 
if round(c)=60 then 
c:=0; 
if b=60 then 
a:=a+1; 
if b=60 then 
b:=0; 
if x<0 then 
s:='S' 
else 
s:='N'; 
d:=Trunc(t); 
f:=Trunc(60*Frac(t)); 
begin 
e1:=60*frac(60*frac(t)); 
if frac(e1)>=0.9999 then 
e:=round(e1) 
else 
e:=trunc(e1); 
end; 
if e=60 then 
f:=f+1; 
if e=60 then 
e:=0; 
if f=60 then 
d:=d+1; 
if f=60 then 
f1:=0; 
if y<0 then 
m:='W' 
else 
m:='E'; 
if a<10 then 
str(0,zero); 
str(a,xx); 
p:=zero+xx; 
if a=0 then 
p:='00'; 
if b<10 then 
str(0,zero1); 
str(b,xx); 
q:=zero1+xx; 
if b=0 then 
q:='00'; 
if c<10 then 
str(0,zero2); 
str(c,xx); 
w:=zero2+xx; 
if c=0 then 
w:='00'; 
if d<10 then 
str(0,zero3); 
str(d,xx); 
v:=zero3+xx; 
if d=0 then 
v:='00'; 
if f<10 then 
str(0,zero4); 
str(f,xx); 
j:=zero4+xx; 
if f=0 then 
j:='00'; 
if e<10 then 
str(0,g); 
str(e,xx); 
i:=g+xx; 
if e=0 then 
i:='00'; 
writeln(p,'°', q,'''', w,'''''', s,' ', v,'°', j,'''', i,'''''', m); 
end.


