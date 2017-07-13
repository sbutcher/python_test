#!/bin/bash

TASKID=$1
JOBTYPE=$2
#qacct -j $TASKID | egrep "task|^jobname|^host|^wallc|^mem|ioop"  | awk '/^hostname/ { split($2,a,".",seps) ; printf a[1] "," } /^taskid/ { printf $2 } /^wallclock/ { printf int($2+0.5) "," } /^mem/ { printf int($2+0.5) "," } /^ioops/ { print $2 }' |  awk 'BEGIN{FS=","}; { print '$TASKID'  $2 "," "'$JOBTYPE'"  "," $5 "," $3 "," $4 "," $1 }' 
#qacct -j $TASKID | egrep "task|^jobname|^host|^wallc|^mem|ioop"  | awk '/^hostname/ { split($2,a,".",seps) ; printf a[1] "," } /^taskid/ { printf $2 } /^wallclock/ { printf int($2+0.5) "," } /^mem/ { printf int($2+0.5) "," } /^ioops/ { print $2 }' | awk 'BEGIN{FS=","}; { print '$TASKID' "," "'$JOBTYPE'"  "," $4 "," $2 "," $3 "," $1 }

qacct -j $TASKID | egrep "task|^jobname|^host|^wallc|^mem|ioop"  | awk '/^hostname/ { split($2,a,".",seps) ; printf a[1] "," } /^wallclock/ { printf int($2+0.5) "," } /^mem/ { printf int($2+0.5) "," } /^ioops/ { print $2 }' | awk 'BEGIN{FS=","}; { print "'$TASKID'" "," "'$JOBTYPE'"  "," $2 "," $4 "," $3 "," $1 }' 

