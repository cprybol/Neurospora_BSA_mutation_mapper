#!/bin/bash

# Run all scripts in order
cd `pwd`
BASE="$( dirname "$( dirname "$( echo `pwd` )" )" )"
FILES="$BASE/ESSENTIAL/SCRIPTS"

# run scripts as
#	$FILES/{ script_name_here }

$FILES/011.fastqc_reads_pre.sh &

# either
$FILES/012.lighter_paired_end.sh &
# or
# $FILES/012.lighter_single_end.sh &

wait


$FILES/013.fastqc_reads_post.sh
