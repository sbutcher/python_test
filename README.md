# python_test
python test inside and outside a singularity container.

Uses python 2.7.8 from Centos SCL inside the container. We have python2.7.8 natively too.
Jobs were run via Univa 8.4.0 on the same node. Node was empty except for running the job.

## Results:

### Haswell E5-2667

| Environment | Centos 6 native | Singularity Centos 6  |
| ------------ | ------------- | ------------ |
| python version | 2.7.8 | 2.7.8 |
| maxvmem | 27.504M| 47.543M |
| ioops | 267  | 534 |
| wallclock(sec) | 5090.442  | 5930.322 |


### Xeon(R) CPU           E5645  @ 2.40GHz

| Environment | Centos 6 native | Singularity Centos 6  |
| ------------ | ------------- | ------------ |
| python version | 2.7.8 | 2.7.8 |
| maxvmem | 27.504M| 47.543M  |
| ioops | 267  |536 |
| wallclock | 7266.985  | 9105.300 |


### Xeon(R) CPU           E5420  @ 2.50GHz

| Environment | Centos 7 native | Singularity Centos 6  |
| ------------ | ------------- | ------------ |
| python version | 2.7.8 | 2.7.8 |
| maxvmem | 230.863M| 339.570M  |
| ioops | 179  | 427 |
| wallclock | 6816.009 | 8017.274 |


