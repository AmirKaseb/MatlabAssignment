%Original Vector
V=[2 8 7 3 1 0 8 9];
%New Vector
Newvector=ones(1,length(V));
Newvector(mod(V,2)==0)=-1