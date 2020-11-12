var 
	x1,x2,x3,y1,y2,y3,a1,a2,b1,b2:longint; 
	s:real; 
begin 
	readln(x1,y1,x2,y2,x3,y3); 
	a1:=x2-x1; 
	a2:=y2-y1; 
	b1:=x3-x1; 
	b2:=y3-y1; 
	s:=abs(a1*b2-a2*b1); 
if s>0 then 
	writeln('Yes') 
else 
	writeln('No'); 
end.
