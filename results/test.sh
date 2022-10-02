# gaussian noise
python -m hsirun.test -a mans.man -r ckpt/man_gaussian.pth -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind
python -m hsirun.test -a mans.man_s -r ckpt/man_s_gaussian.pth -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind
python -m hsirun.test -a mans.man_m -r ckpt/man_m_gaussian.pth -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind
python -m hsirun.test -a mans.man_deep -r ckpt/man_b_gaussian.pth -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind

# complex noise
python -m hsirun.test -a mans.man -r ckpt/man_complex.pth -t icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture --force-run
python -m hsirun.test -a mans.man_s -r ckpt/man_s_complex.pth -t icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture --force-run
python -m hsirun.test -a mans.man_m -r ckpt/man_m_complex.pth -t icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture --force-run
python -m hsirun.test -a mans.man_deep -r ckpt/man_b_complex.pth -t icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture --force-run

# special arch for obtain gt and input
python -m hsirun.test -a input -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture
python -m hsirun.test -a gt -t icvl_512_30 icvl_512_50 icvl_512_70 icvl_512_blind icvl_512_noniid icvl_512_stripe icvl_512_deadline icvl_512_impulse icvl_512_mixture 