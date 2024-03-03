v=[1:1:10]
for i=1:2:10
    v(i+1)= v(i)+v(i+1)
    v(i)=zeros
end