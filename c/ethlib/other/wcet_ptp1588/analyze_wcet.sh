#!/bin/bash

function run() {
  echo $@
  $@
}

# Architecture configuration file
#CONFIG_PML=config_ait.pml
CONFIG_PML=config_de2_115.pml

# Functions to analyse
#ENTRIES=audio_distortion
ENTRIES="eth_mac_send udp_send_mac ptpv2_issue_msg checkForPacket udp_get_data ptpv2_handle_msg ptp_correct_offset ptp_calc_offset ptp_calc_one_way_delay"


#
# Execute commands
#
for ENTRY in $ENTRIES; do
    echo " "
    echo "EXECUTING WCET ANALYSIS OF $ENTRY"
    echo " "

    #
    # Options for "platin wcet"
    #
    # Default mode, just run aiT
    #WCET_OPTS=

    # Enable trace analysis, do not use its results
    #WCET_OPTS="--enable-trace-analysis --trace-entry $ENTRY"

    # Use trace analysis and use its results (unsafe bounds, only for benchmarking!)
    #WCET_OPTS="--use-trace-facts --trace-entry $ENTRY"
    # Run platin WCA tool in addition to aiT, and run trace analysis
    # WCET_OPTS="--enable-wca --enable-trace-analysis --trace-entry $ENTRY"

    run patmos-clang -O2 -o wcet_ptp1588.out ../../../ptplib_demo.c ../../arp.c ../../eth_mac_driver.c ../../eth_patmos_io.c ../../icmp.c ../../ipv4.c ../../mac.c ../../ptp1588.c ../../udp.c -mserialize=wcet_ptp1588.pml -mserialize-roots=$ENTRY

    # - Analyse
    # The --outdir option is optional. If ommited, a temporary directoy will be used. Otherwise, the outdir
    # must exist before the tool executed.
    run mkdir -p tmp
    run platin wcet -b wcet_ptp1588.out -i wcet_ptp1588.pml -e $ENTRY -o $ENTRY.pml --report report_$ENTRY.txt --disable-ait
    # run platin wcet $WCET_OPTS -b wcet_ptp1588.out -i wcet_ptp1588.pml -e $ENTRY --outdir tmp -o $ENTRY.pml --report report_$ENTRY.txt --disable-ait

    # run platin visualize -i $ENTRY.pml -o output -f $ENTRY.png --show-timings=platin



done
