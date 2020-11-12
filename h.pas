import numpy as np
n=int(input())
w=list(map(float,input().split()))
k =1
if n%2==0:
      k=-1
ans_str=' '
ans=np.poly(w)*k
for i in ans:
      ans_str+=str(int(i))
      ans_str+=' '
print(ans_str)

