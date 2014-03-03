* passive half-wave limiter with low pass filter

.model D1N4148	D 	(Is=0.1pA Rs=16 CJO=2p Tt=12n Bv=100 Ibv=0.1p)

*the main signal without any noise
v1	1	0	-0.939863
inoise  3   0   -7.42637e-005

*passive low pass filter
r1	1	2	1k
c1  2   0   6nF

* passive half-wave limiter
r2	2	3	1k
d2	0 	3 	D1N4148

*voltage divier load
r3 3  4  5k
rl 4  0  5k


.tran 2e-008 2e-007 uic
.load file=ic_9205.ic0
.save type=ic file=ic_19999.ic level=all time=2e-007

.option post delmax=0.01u interp
.option  probe acct
.option relv=1e-5
.end