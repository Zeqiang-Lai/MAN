# MAN

PyTorch Implementation of [Mixed Attention Network for Hyperspectral Image Denoising]()

🌟 Hightlights

- We propose a new adaptive skip connection which weights different features elementwise.
- We propose a lightweight mixed attention block with spectrum attention and channel attention.

## Usage

- Use our model.

```python
import torch
from mans import man

net = man()
x = torch.randn(4,1,31,64,64)
y = net(x)
```

- Training and Testing with [HSIR](https://github.com/bit-isp/HSIR).

```shell
python -m hsirun.test -a mans.man -r ckpt/man_gaussian.pth -t icvl_512_30 icvl_512_50
python -m hsirun.train -a mans.man 
```

## Citations

```bibtex
@misc{lai_man2022,
    title={Mixed Attention Network for Hyperspectral Image Denoising}, 
    author={Zeqiang Lai, Ying Fu},
    year={2022},
}
```
