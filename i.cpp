#include <iostream>
#include <string>
#include <math.h>
using namespace std;

double f(double x, int n, int a[6]){
double y = 0;
for (int i = 0; i <= n; i++){
y += pow(x,i)*a[i];
}
return y;
}
int main()
{
int n = 0;
int a[6];
float b = 0;
scanf("%d", &n);
for (int i = n; i >= 0; i--){
//cout << i;
scanf("%d", &a[i]);
}

scanf("%f", &b);
//cout << b;
double x = 0;
double L = 0;
double h = 0.0001;
while (L < b){
double y1= f(x, n, a);
double y2= f(x+h, n, a);
L= L + sqrt(h*h + (y2-y1)*(y2-y1));
x = x + h;
}
cout << x;
}
