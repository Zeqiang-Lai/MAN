import torch
from mans import man

net = man()
x = torch.randn(2,1,31,64,64)
y = net(x)
print(y.shape)