M=[1 2 3 4; -1 -2 -3 -4; 1 2 3 4; -1 -2 -3 -4;]
M(:,[1:4])=M(:,[4:-1:1])
M([1:4],:)=M([4:-1:1],:)
M(:,[2 3])=M(:,[3 2])
M([1 4],:)=M([4 1],:)
M([1 2 3 4],[1 2 3 4])=M([1 3 4 2], [3 2 4 1])