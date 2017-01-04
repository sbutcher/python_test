# python_test
python test inside and outside a singularity container.

Uses python 2.7.8 from Centos SCL inside the container. We have python2.7.8 natively too.
Jobs were run via Univa 8.4.0 on the same node. Node was empty except for running the job.

## Results:

### Haswell E5-2667

#### Centos 6 native (python 2.7.8)

maxvmem      27.504M

ioops        267                 

wallclock    5090.442     

#### Singularity Container (centos6.def with Python2.7.8)

maxvmem      47.543M

ioops        534                 

wallclock    5930.322     


### Xeon(R) CPU           E5645  @ 2.40GHz

#### Centos6 Native 
maxvmem      27.504M

ioops        267                 

wallclock    7266.985     


### Xeon(R) CPU           E5420  @ 2.50GHz

#### Centos7 Native (running python2.7.8)

maxvmem      230.863M

ioops        179                 

wallclock    6816.009     

