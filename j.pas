var 
sch: array [1..100] of integer; 
a: array [0..101,0..101] of char; 
iv,i,t,n,j,k:integer; 
procedure drow(i,j:integer); 

begin 
a[i,j]:='.'; 
if a[i+1,j+1]='x' then drow(i+1,j+1); 
if a[i+1,j-1]='x' then drow(i+1,j-1); 
if a[i-1,j-1]='x' then drow(i-1,j-1); 
if a[i-1,j+1]='x' then drow(i-1,j+1); 
if a[i+1,j]='x' then drow(i+1,j); 
if a[i-1,j]='x' then drow(i-1,j); 
if a[i,j+1]='x' then drow(i,j+1); 
if a[i,j-1]='x' then drow(i,j-1); 
end; 
begin 
readln(t); 
for iv:=1 to t do 
begin 
readln(n); 
k:=0; 
for i:=1 to n do 
for j:=1 to n do 
if j = n then 
readln(a[i,j]) 
else 
read(a[i,j]); 
for i:=0 to n+1 do 
a[0,i]:='.'; 
for i:=0 to n+1 do 
a[n+1,i]:='.'; 
for i:=0 to n+1 do 
a[i,0]:='.'; 
for i:=0 to n+1 do 
a[i,n+1]:='.'; 
for i:=1 to n do 
for j:=1 to n do 
if a[i,j]='x' then 
begin 
drow(i,j); 
k:=k+1; 
end; 
sch[iv]:=k; 
end; 
for i:=1 to t do 
write(sch[i],' ') 
end.
