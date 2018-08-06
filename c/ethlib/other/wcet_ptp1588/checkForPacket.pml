---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 8
  level: machinecode
  mapsto: checkForPacket
  arguments:
  - name: "%expectedPacketType"
    index: 0
    registers:
    - r3
  - name: "%expectedUDPPort"
    index: 1
    registers:
    - r4
  - name: "%timeout"
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 2
    - 1
    instructions:
    - index: 0
      opcode: SRESi
      size: 4
      stack-cache-argument: 8
      address: 133732
    - index: 1
      opcode: MFS
      size: 4
      address: 133736
    - index: 2
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 133740
    - index: 3
      opcode: LIi
      size: 4
      address: 133744
    - index: 4
      opcode: SUBi
      size: 4
      address: 133748
    - index: 5
      opcode: MFS
      size: 4
      address: 133752
    - index: 6
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 133756
    - index: 7
      opcode: MFS
      size: 4
      address: 133760
    - index: 8
      opcode: LIl
      size: 8
      address: 133764
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 133772
    - index: 10
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 133776
    - index: 11
      opcode: ADDi
      size: 4
      address: 133780
    - index: 12
      opcode: ANDl
      size: 8
      address: 133784
    - index: 13
      opcode: ADDl
      size: 8
      address: 133792
    - index: 14
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133800
    - index: 15
      opcode: ADDi
      size: 4
      address: 133804
    - index: 16
      opcode: ANDl
      size: 8
      address: 133808
    - index: 17
      opcode: ADDl
      size: 8
      address: 133816
    - index: 18
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133824
    - index: 19
      opcode: ADDi
      size: 4
      address: 133828
    - index: 20
      opcode: ANDl
      size: 8
      address: 133832
    - index: 21
      opcode: ADDl
      size: 8
      address: 133840
    - index: 22
      opcode: SLi
      size: 4
      address: 133848
    - index: 23
      opcode: NOT
      size: 4
      address: 133852
    - index: 24
      opcode: ANDi
      size: 4
      address: 133856
    - index: 25
      opcode: ADDi
      size: 4
      address: 133860
    - index: 26
      opcode: ANDl
      size: 8
      address: 133864
    - index: 27
      opcode: ADDl
      size: 8
      address: 133872
    - index: 28
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133880
    - index: 29
      opcode: ADDi
      size: 4
      address: 133884
    - index: 30
      opcode: ANDl
      size: 8
      address: 133888
    - index: 31
      opcode: ADDl
      size: 8
      address: 133896
    - index: 32
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133904
    - index: 33
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133908
    - index: 34
      opcode: SLr
      size: 4
      address: 133912
    - index: 35
      opcode: ANDr
      size: 4
      address: 133916
    - index: 36
      opcode: SRr
      size: 4
      address: 133920
    - index: 37
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 133924
    - index: 38
      opcode: ADDi
      size: 4
      address: 133928
    - index: 39
      opcode: SLi
      size: 4
      address: 133932
    - index: 40
      opcode: NOT
      size: 4
      address: 133936
    - index: 41
      opcode: ANDi
      size: 4
      address: 133940
    - index: 42
      opcode: ANDl
      size: 8
      address: 133944
    - index: 43
      opcode: ADDl
      size: 8
      address: 133952
    - index: 44
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 133960
    - index: 45
      opcode: SLr
      size: 4
      address: 133964
    - index: 46
      opcode: ANDr
      size: 4
      address: 133968
    - index: 47
      opcode: SRr
      size: 4
      address: 133972
    - index: 48
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 133976
    - index: 49
      opcode: SRi
      size: 4
      address: 133980
    - index: 50
      opcode: ANDl
      size: 8
      address: 133984
    - index: 51
      opcode: LIi
      size: 4
      address: 133992
    - index: 52
      opcode: CMPEQ
      size: 4
      address: 133996
    - index: 53
      opcode: CMPEQ
      size: 4
      address: 134000
    - index: 54
      opcode: ADDi
      size: 4
      address: 134004
    - index: 55
      opcode: SLi
      size: 4
      address: 134008
    - index: 56
      opcode: NOT
      size: 4
      address: 134012
    - index: 57
      opcode: ANDi
      size: 4
      address: 134016
    - index: 58
      opcode: ANDl
      size: 8
      address: 134020
    - index: 59
      opcode: ADDl
      size: 8
      address: 134028
    - index: 60
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 134036
    - index: 61
      opcode: SLr
      size: 4
      address: 134040
    - index: 62
      opcode: ANDr
      size: 4
      address: 134044
    - index: 63
      opcode: SRr
      size: 4
      address: 134048
    - index: 64
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 134052
    - index: 65
      opcode: PAND
      size: 4
      address: 134056
    - index: 66
      opcode: ADDi
      size: 4
      address: 134060
    - index: 67
      opcode: SLi
      size: 4
      address: 134064
    - index: 68
      opcode: NOT
      size: 4
      address: 134068
    - index: 69
      opcode: ANDi
      size: 4
      address: 134072
    - index: 70
      opcode: ANDl
      size: 8
      address: 134076
    - index: 71
      opcode: ADDl
      size: 8
      address: 134084
    - index: 72
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 134092
    - index: 73
      opcode: SLr
      size: 4
      address: 134096
    - index: 74
      opcode: ANDr
      size: 4
      address: 134100
    - index: 75
      opcode: BRCF
      size: 4
      branch-type: conditional
      branch-delay-slots: 3
      branch-targets:
      - 2
      address: 134104
    - index: 76
      opcode: SRr
      size: 4
      address: 134108
    - index: 77
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 134112
    - index: 78
      opcode: NOP
      size: 4
      address: 134116
    - index: 79
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 1
      address: 134120
    address: 133732
  - name: 1
    mapsto: lor.lhs.false
    predecessors:
    - 0
    successors:
    - 2
    - 3
    instructions:
    - index: 0
      opcode: LIi
      size: 4
      address: 134132
    - index: 1
      opcode: CMPEQ
      size: 4
      address: 134136
    - index: 2
      opcode: LIin
      size: 4
      address: 134140
    - index: 3
      opcode: CMPEQ
      size: 4
      address: 134144
    - index: 4
      opcode: PAND
      size: 4
      address: 134148
    - index: 5
      opcode: BRCFND
      size: 4
      branch-type: conditional
      branch-targets:
      - 3
      address: 134152
    - index: 6
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 2
      address: 134156
    address: 134132
  - name: 2
    mapsto: if.then
    predecessors:
    - 0
    - 1
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 134164
    - index: 1
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 134172
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 134176
    - index: 3
      opcode: LIin
      size: 4
      address: 134180
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 134184
    - index: 5
      opcode: CALL
      callees:
      - ptpv2_handle_msg
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 134188
    - index: 6
      opcode: NOP
      size: 4
      address: 134192
    - index: 7
      opcode: ADDi
      size: 4
      address: 134196
    - index: 8
      opcode: ADDi
      size: 4
      address: 134200
    - index: 9
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 3
      address: 134204
    - index: 10
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 134208
    - index: 11
      opcode: NOP
      size: 4
      address: 134212
    - index: 12
      opcode: NOP
      size: 4
      address: 134216
    address: 134164
  - name: 3
    mapsto: return
    predecessors:
    - 1
    - 2
    successors: []
    instructions:
    - index: 0
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 134228
    - index: 1
      opcode: NOP
      size: 4
      address: 134232
    - index: 2
      opcode: MTS
      size: 4
      address: 134236
    - index: 3
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 134240
    - index: 4
      opcode: NOP
      size: 4
      address: 134244
    - index: 5
      opcode: MTS
      size: 4
      address: 134248
    - index: 6
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 134252
    - index: 7
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 134256
    - index: 8
      opcode: ADDi
      size: 4
      address: 134260
    - index: 9
      opcode: MTS
      size: 4
      address: 134264
    - index: 10
      opcode: SFREEi
      size: 4
      stack-cache-argument: 8
      address: 134268
    address: 134228
  subfunctions:
  - name: 0
    blocks:
    - 0
  - name: 1
    blocks:
    - 1
  - name: 2
    blocks:
    - 2
  - name: 3
    blocks:
    - 3
- name: 16
  level: machinecode
  mapsto: ptpv2_handle_msg
  arguments:
  - name: "%tx_addr"
    index: 0
    registers:
    - r3
  - name: "%rx_addr"
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SRESi
      size: 4
      stack-cache-argument: 8
      address: 138452
    - index: 1
      opcode: SUBi
      size: 4
      address: 138456
    - index: 2
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138460
    - index: 3
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138464
    - index: 4
      opcode: MFS
      size: 4
      address: 138468
    - index: 5
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138472
    - index: 6
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 138476
    - index: 7
      opcode: MOV
      size: 4
      address: 138480
    - index: 8
      opcode: MOV
      size: 4
      address: 138484
    - index: 9
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138488
    - index: 10
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138492
    - index: 11
      opcode: LIl
      size: 8
      address: 138496
    - index: 12
      opcode: MFS
      size: 4
      address: 138504
    - index: 13
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138508
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138512
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138516
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138520
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138524
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138528
    - index: 19
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138532
    - index: 20
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138536
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138540
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138544
    - index: 23
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138548
    - index: 24
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138552
    - index: 25
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138556
    - index: 26
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138560
    - index: 27
      opcode: MFS
      size: 4
      address: 138564
    - index: 28
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 138568
    address: 138452
  - name: 1
    mapsto: while.cond
    predecessors:
    - 0
    - 1
    successors:
    - 1
    - 2
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138572
    - index: 1
      opcode: NOP
      size: 4
      address: 138576
    - index: 2
      opcode: ANDi
      size: 4
      address: 138580
    - index: 3
      opcode: CMPIEQ
      size: 4
      address: 138584
    - index: 4
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 1
      address: 138588
    - index: 5
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 2
      address: 138592
    address: 138572
  - name: 2
    mapsto: while.end
    predecessors:
    - 1
    successors:
    - 9
    - 3
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138612
    - index: 1
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138620
    - index: 2
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138624
    - index: 3
      opcode: ADDi
      size: 4
      address: 138628
    - index: 4
      opcode: ANDl
      size: 8
      address: 138632
    - index: 5
      opcode: ADDl
      size: 8
      address: 138640
    - index: 6
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138648
    - index: 7
      opcode: MOV
      size: 4
      address: 138652
    - index: 8
      opcode: ADDl
      size: 8
      address: 138656
    - index: 9
      opcode: CALL
      callees:
      - udp_get_data
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 138664
    - index: 10
      opcode: ANDl
      size: 8
      address: 138668
    - index: 11
      opcode: ADDi
      size: 4
      address: 138676
    - index: 12
      opcode: MOV
      size: 4
      address: 138680
    - index: 13
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 138684
    - index: 14
      opcode: LIin
      size: 4
      address: 138688
    - index: 15
      opcode: LIl
      size: 8
      address: 138692
    - index: 16
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138700
    - index: 17
      opcode: LIi
      size: 4
      address: 138704
    - index: 18
      opcode: CMPULT
      size: 4
      address: 138708
    - index: 19
      opcode: BRCFND
      size: 4
      branch-type: conditional
      branch-targets:
      - 9
      address: 138712
    - index: 20
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 3
      address: 138716
    address: 138612
  - name: 3
    mapsto: while.end
    predecessors:
    - 2
    successors:
    - 4
    - 6
    - 9
    - 7
    - 8
    instructions:
    - index: 0
      opcode: SHADD2l
      size: 8
      address: 138724
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138732
    - index: 2
      opcode: NOP
      size: 4
      address: 138736
    - index: 3
      opcode: BRCFTNDu
      size: 4
      branch-type: indirect
      branch-targets:
      - 4
      - 6
      - 9
      - 9
      - 9
      - 9
      - 9
      - 9
      - 7
      - 8
      address: 138740
    address: 138724
  - name: 4
    mapsto: sw.bb
    predecessors:
    - 3
    successors:
    - 5
    - 9
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138756
    - index: 1
      opcode: LIl
      size: 8
      address: 138764
    - index: 2
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138772
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138776
    - index: 4
      opcode: BTESTI
      size: 4
      address: 138780
    - index: 5
      opcode: BRCF
      size: 4
      branch-type: conditional
      branch-delay-slots: 3
      branch-targets:
      - 9
      address: 138784
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138788
    - index: 7
      opcode: MOV
      size: 4
      address: 138792
    - index: 8
      opcode: NOP
      size: 4
      address: 138796
    address: 138756
  - name: 5
    mapsto: if.then
    predecessors:
    - 4
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138800
    - index: 1
      opcode: LIl
      size: 8
      address: 138804
    - index: 2
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138812
    - index: 3
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138816
    - index: 4
      opcode: NOP
      size: 4
      address: 138820
    - index: 5
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138824
    - index: 6
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138828
    - index: 7
      opcode: NOP
      size: 4
      address: 138832
    - index: 8
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138836
    - index: 9
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138840
    - index: 10
      opcode: NOP
      size: 4
      address: 138844
    - index: 11
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138848
    - index: 12
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138852
    - index: 13
      opcode: NOP
      size: 4
      address: 138856
    - index: 14
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138860
    - index: 15
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138864
    - index: 16
      opcode: NOP
      size: 4
      address: 138868
    - index: 17
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138872
    - index: 18
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138876
    - index: 19
      opcode: NOP
      size: 4
      address: 138880
    - index: 20
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138884
    - index: 21
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138888
    - index: 22
      opcode: NOP
      size: 4
      address: 138892
    - index: 23
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138896
    - index: 24
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138900
    - index: 25
      opcode: NOP
      size: 4
      address: 138904
    - index: 26
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138908
    - index: 27
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138912
    - index: 28
      opcode: NOP
      size: 4
      address: 138916
    - index: 29
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138920
    - index: 30
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138924
    - index: 31
      opcode: NOP
      size: 4
      address: 138928
    - index: 32
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138932
    - index: 33
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138936
    - index: 34
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 9
      address: 138940
    - index: 35
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138944
    - index: 36
      opcode: MOV
      size: 4
      address: 138948
    - index: 37
      opcode: NOP
      size: 4
      address: 138952
    address: 138800
  - name: 6
    mapsto: sw.bb2
    predecessors:
    - 3
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138964
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138972
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138976
    - index: 3
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138980
    - index: 4
      opcode: LIl
      size: 8
      address: 138984
    - index: 5
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 138992
    - index: 6
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 138996
    - index: 7
      opcode: NOP
      size: 4
      address: 139000
    - index: 8
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139004
    - index: 9
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139008
    - index: 10
      opcode: NOP
      size: 4
      address: 139012
    - index: 11
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139016
    - index: 12
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139020
    - index: 13
      opcode: NOP
      size: 4
      address: 139024
    - index: 14
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139028
    - index: 15
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139032
    - index: 16
      opcode: NOP
      size: 4
      address: 139036
    - index: 17
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139040
    - index: 18
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139044
    - index: 19
      opcode: NOP
      size: 4
      address: 139048
    - index: 20
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139052
    - index: 21
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139056
    - index: 22
      opcode: NOP
      size: 4
      address: 139060
    - index: 23
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139064
    - index: 24
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139068
    - index: 25
      opcode: NOP
      size: 4
      address: 139072
    - index: 26
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139076
    - index: 27
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139080
    - index: 28
      opcode: NOP
      size: 4
      address: 139084
    - index: 29
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139088
    - index: 30
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139092
    - index: 31
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 9
      address: 139096
    - index: 32
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139100
    - index: 33
      opcode: LIi
      size: 4
      address: 139104
    - index: 34
      opcode: NOP
      size: 4
      address: 139108
    address: 138964
  - name: 7
    mapsto: sw.bb1
    predecessors:
    - 3
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 139124
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139132
    - index: 2
      opcode: LIl
      size: 8
      address: 139136
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139144
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139148
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139152
    - index: 6
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139156
    - index: 7
      opcode: LIl
      size: 8
      address: 139160
    - index: 8
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139168
    - index: 9
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139172
    - index: 10
      opcode: NOP
      size: 4
      address: 139176
    - index: 11
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139180
    - index: 12
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139184
    - index: 13
      opcode: NOP
      size: 4
      address: 139188
    - index: 14
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139192
    - index: 15
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139196
    - index: 16
      opcode: NOP
      size: 4
      address: 139200
    - index: 17
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139204
    - index: 18
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139208
    - index: 19
      opcode: NOP
      size: 4
      address: 139212
    - index: 20
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139216
    - index: 21
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139220
    - index: 22
      opcode: NOP
      size: 4
      address: 139224
    - index: 23
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139228
    - index: 24
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139232
    - index: 25
      opcode: NOP
      size: 4
      address: 139236
    - index: 26
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139240
    - index: 27
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139244
    - index: 28
      opcode: NOP
      size: 4
      address: 139248
    - index: 29
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139252
    - index: 30
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139256
    - index: 31
      opcode: NOP
      size: 4
      address: 139260
    - index: 32
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139264
    - index: 33
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 139268
    - index: 34
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 9
      address: 139272
    - index: 35
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139276
    - index: 36
      opcode: LIi
      size: 4
      address: 139280
    - index: 37
      opcode: NOP
      size: 4
      address: 139284
    address: 139124
  - name: 8
    mapsto: sw.bb3
    predecessors:
    - 3
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 139300
    - index: 1
      opcode: LIl
      size: 8
      address: 139308
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139316
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139320
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139324
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139328
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139332
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139336
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139340
    - index: 9
      opcode: CALL
      callees:
      - ptp_calc_one_way_delay
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 139344
    - index: 10
      opcode: NOP
      size: 4
      address: 139348
    - index: 11
      opcode: MOV
      size: 4
      address: 139352
    - index: 12
      opcode: MOV
      size: 4
      address: 139356
    - index: 13
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 139360
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139364
    - index: 15
      opcode: CALL
      callees:
      - ptp_calc_offset
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 139368
    - index: 16
      opcode: MOV
      size: 4
      address: 139372
    - index: 17
      opcode: MOV
      size: 4
      address: 139376
    - index: 18
      opcode: MOV
      size: 4
      address: 139380
    - index: 19
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 139384
    - index: 20
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139388
    - index: 21
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139392
    - index: 22
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139396
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139400
    - index: 24
      opcode: CALL
      callees:
      - ptp_calc_one_way_delay
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 139404
    - index: 25
      opcode: MOV
      size: 4
      address: 139408
    - index: 26
      opcode: MOV
      size: 4
      address: 139412
    - index: 27
      opcode: MOV
      size: 4
      address: 139416
    - index: 28
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 139420
    - index: 29
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139424
    - index: 30
      opcode: CALL
      callees:
      - ptp_calc_offset
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 139428
    - index: 31
      opcode: MOV
      size: 4
      address: 139432
    - index: 32
      opcode: MOV
      size: 4
      address: 139436
    - index: 33
      opcode: MOV
      size: 4
      address: 139440
    - index: 34
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 139444
    - index: 35
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 139448
    - index: 36
      opcode: CALLND
      callees:
      - ptp_correct_offset
      size: 4
      branch-type: call
      address: 139452
    - index: 37
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 9
      address: 139456
    - index: 38
      opcode: LIi
      size: 4
      address: 139460
    - index: 39
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 139464
    - index: 40
      opcode: NOP
      size: 4
      address: 139468
    address: 139300
  - name: 9
    mapsto: cleanup
    predecessors:
    - 3
    - 8
    - 6
    - 7
    - 4
    - 5
    - 2
    successors: []
    instructions:
    - index: 0
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139476
    - index: 1
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139480
    - index: 2
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139484
    - index: 3
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139488
    - index: 4
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139492
    - index: 5
      opcode: MTS
      size: 4
      address: 139496
    - index: 6
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139500
    - index: 7
      opcode: NOP
      size: 4
      address: 139504
    - index: 8
      opcode: MTS
      size: 4
      address: 139508
    - index: 9
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 139512
    - index: 10
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139516
    - index: 11
      opcode: ADDi
      size: 4
      address: 139520
    - index: 12
      opcode: MTS
      size: 4
      address: 139524
    - index: 13
      opcode: SFREEi
      size: 4
      stack-cache-argument: 8
      address: 139528
    address: 139476
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
  - name: 2
    blocks:
    - 2
  - name: 3
    blocks:
    - 3
  - name: 4
    blocks:
    - 4
    - 5
  - name: 6
    blocks:
    - 6
  - name: 7
    blocks:
    - 7
  - name: 8
    blocks:
    - 8
  - name: 9
    blocks:
    - 9
- name: 20
  level: machinecode
  mapsto: udp_get_data
  arguments:
  - name: "%pkt_addr"
    index: 0
    registers:
    - r3
  - name: "%data_length"
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 4
    - 1
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 139668
    - index: 1
      opcode: ANDl
      size: 8
      address: 139672
    - index: 2
      opcode: ADDl
      size: 8
      address: 139680
    - index: 3
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139688
    - index: 4
      opcode: MFS
      size: 4
      address: 139692
    - index: 5
      opcode: ADDl
      size: 8
      address: 139696
    - index: 6
      opcode: ANDl
      size: 8
      address: 139704
    - index: 7
      opcode: CMPULT
      size: 4
      address: 139712
    - index: 8
      opcode: MOV
      size: 4
      address: 139716
    - index: 9
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 4
      address: 139720
    address: 139668
  - name: 1
    mapsto: for.cond.preheader
    predecessors:
    - 0
    successors:
    - 2
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 139724
    - index: 1
      opcode: SLi
      size: 4
      address: 139728
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 139732
    - index: 3
      opcode: ADDi
      size: 4
      address: 139736
    - index: 4
      opcode: LIi
      size: 4
      address: 139740
    address: 139724
  - name: 3
    mapsto: for.body
    predecessors:
    - 2
    successors:
    - 2
    loops:
    - 2
    instructions:
    - index: 0
      opcode: ANDl
      size: 8
      address: 139744
    - index: 1
      opcode: NOT
      size: 4
      address: 139752
    - index: 2
      opcode: ADDl
      size: 8
      address: 139756
    - index: 3
      opcode: ANDi
      size: 4
      address: 139764
    - index: 4
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139768
    - index: 5
      opcode: SLr
      size: 4
      address: 139772
    - index: 6
      opcode: ANDr
      size: 4
      address: 139776
    - index: 7
      opcode: SRr
      size: 4
      address: 139780
    - index: 8
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 139784
    - index: 9
      opcode: ADDi
      size: 4
      address: 139788
    - index: 10
      opcode: ADDi
      size: 4
      address: 139792
    - index: 11
      opcode: SUBi
      size: 4
      address: 139796
    - index: 12
      opcode: ADDi
      size: 4
      address: 139800
    address: 139744
  - name: 2
    mapsto: for.cond
    predecessors:
    - 1
    - 3
    successors:
    - 4
    - 3
    loops:
    - 2
    instructions:
    - index: 0
      opcode: CMPIEQ
      size: 4
      address: 139804
    - index: 1
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 139808
    - index: 2
      opcode: NOP
      size: 4
      address: 139812
    - index: 3
      opcode: LIi
      size: 4
      address: 139816
    address: 139804
  - name: 4
    mapsto: return
    predecessors:
    - 0
    - 2
    successors: []
    instructions:
    - index: 0
      opcode: MTS
      size: 4
      address: 139820
    - index: 1
      opcode: RETND
      size: 4
      branch-type: return
      address: 139824
    address: 139820
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 3
    - 2
    - 4
- name: 17
  level: machinecode
  mapsto: ptp_calc_one_way_delay
  arguments:
  - name: "%t1"
    index: 0
    registers:
    - r3
  - name: "%t2"
    index: 1
    registers:
    - r4
  - name: "%t3"
    index: 2
    registers:
    - r5
  - name: "%t4"
    index: 3
    registers:
    - r6
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBr
      size: 4
      address: 139540
    - index: 1
      opcode: SUBr
      size: 4
      address: 139544
    - index: 2
      opcode: ADDr
      size: 4
      address: 139548
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139552
    - index: 4
      opcode: SRi
      size: 4
      address: 139556
    - index: 5
      opcode: ADDr
      size: 4
      address: 139560
    - index: 6
      opcode: SRAi
      size: 4
      address: 139564
    address: 139540
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 18
  level: machinecode
  mapsto: ptp_calc_offset
  arguments:
  - name: "%t1"
    index: 0
    registers:
    - r3
  - name: "%t2"
    index: 1
    registers:
    - r4
  - name: "%delay"
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139572
    - index: 1
      opcode: NOP
      size: 4
      address: 139576
    - index: 2
      opcode: SUBr
      size: 4
      address: 139580
    - index: 3
      opcode: SUBr
      size: 4
      address: 139584
    address: 139572
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 19
  level: machinecode
  mapsto: ptp_correct_offset
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 139604
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139612
    - index: 2
      opcode: LIl
      size: 8
      address: 139616
    - index: 3
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 139624
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139628
    - index: 5
      opcode: MFS
      size: 4
      address: 139632
    - index: 6
      opcode: CMPIEQ
      size: 4
      address: 139636
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139640
    - index: 8
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139644
    - index: 9
      opcode: SUBr
      size: 4
      address: 139648
    - index: 10
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 139652
    - index: 11
      opcode: MTS
      size: 4
      address: 139656
    address: 139604
  subfunctions:
  - name: 0
    blocks:
    - 0
bitcode-functions:
- name: checkForPacket
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - lor.lhs.false
    instructions:
    - index: 0
      opcode: alloca
    - index: 1
      opcode: alloca
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: add
    - index: 4
      opcode: lshr
    - index: 5
      opcode: getelementptr
    - index: 6
      opcode: load
      memmode: load
    - index: 7
      opcode: add
    - index: 8
      opcode: lshr
    - index: 9
      opcode: getelementptr
    - index: 10
      opcode: load
      memmode: load
    - index: 11
      opcode: add
    - index: 12
      opcode: ashr
    - index: 13
      opcode: getelementptr
    - index: 14
      opcode: load
      memmode: load
    - index: 15
      opcode: lshr
    - index: 16
      opcode: trunc
    - index: 17
      opcode: add
    - index: 18
      opcode: ashr
    - index: 19
      opcode: getelementptr
    - index: 20
      opcode: load
      memmode: load
    - index: 21
      opcode: trunc
    - index: 22
      opcode: bitcast
    - index: 23
      opcode: add
    - index: 24
      opcode: lshr
    - index: 25
      opcode: getelementptr
    - index: 26
      opcode: load
      memmode: load
    - index: 27
      opcode: shl
    - index: 28
      opcode: and
    - index: 29
      opcode: xor
    - index: 30
      opcode: shl
    - index: 31
      opcode: and
    - index: 32
      opcode: lshr
    - index: 33
      opcode: trunc
    - index: 34
      opcode: store
      memmode: store
    - index: 35
      opcode: add
    - index: 36
      opcode: lshr
    - index: 37
      opcode: getelementptr
    - index: 38
      opcode: load
      memmode: load
    - index: 39
      opcode: shl
    - index: 40
      opcode: and
    - index: 41
      opcode: xor
    - index: 42
      opcode: shl
    - index: 43
      opcode: and
    - index: 44
      opcode: lshr
    - index: 45
      opcode: trunc
    - index: 46
      opcode: getelementptr
    - index: 47
      opcode: store
      memmode: store
    - index: 48
      opcode: add
    - index: 49
      opcode: lshr
    - index: 50
      opcode: getelementptr
    - index: 51
      opcode: load
      memmode: load
    - index: 52
      opcode: shl
    - index: 53
      opcode: and
    - index: 54
      opcode: xor
    - index: 55
      opcode: shl
    - index: 56
      opcode: and
    - index: 57
      opcode: lshr
    - index: 58
      opcode: trunc
    - index: 59
      opcode: getelementptr
    - index: 60
      opcode: store
      memmode: store
    - index: 61
      opcode: add
    - index: 62
      opcode: lshr
    - index: 63
      opcode: getelementptr
    - index: 64
      opcode: load
      memmode: load
    - index: 65
      opcode: shl
    - index: 66
      opcode: and
    - index: 67
      opcode: xor
    - index: 68
      opcode: shl
    - index: 69
      opcode: and
    - index: 70
      opcode: lshr
    - index: 71
      opcode: trunc
    - index: 72
      opcode: getelementptr
    - index: 73
      opcode: store
      memmode: store
    - index: 74
      opcode: icmp
    - index: 75
      opcode: icmp
    - index: 76
      opcode: and
    - index: 77
      opcode: br
  - name: lor.lhs.false
    predecessors:
    - entry
    successors:
    - if.then
    - return
    instructions:
    - index: 0
      opcode: trunc
    - index: 1
      opcode: trunc
    - index: 2
      opcode: icmp
    - index: 3
      opcode: icmp
    - index: 4
      opcode: and
    - index: 5
      opcode: br
  - name: if.then
    predecessors:
    - lor.lhs.false
    - entry
    successors:
    - return
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: load
      memmode: load
    - index: 2
      opcode: bitcast
    - index: 3
      opcode: call
    - index: 4
      opcode: call
      callees:
      - ptpv2_handle_msg
    - index: 5
      opcode: br
  - name: return
    predecessors:
    - if.then
    - lor.lhs.false
    successors: []
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: ret
- name: ptpv2_handle_msg
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - while.cond
    instructions:
    - index: 0
      opcode: alloca
    - index: 1
      opcode: bitcast
    - index: 2
      opcode: call
    - index: 3
      opcode: call
    - index: 4
      opcode: br
  - name: while.cond
    predecessors:
    - while.cond
    - entry
    successors:
    - while.cond
    - while.end
    loops:
    - while.cond
    instructions:
    - index: 0
      opcode: call
    - index: 1
      opcode: load
      memmode: load
    - index: 2
      opcode: and
    - index: 3
      opcode: icmp
    - index: 4
      opcode: br
  - name: while.end
    predecessors:
    - while.cond
    successors:
    - cleanup
    - sw.bb
    - sw.bb1
    - sw.bb2
    - sw.bb3
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: load
      memmode: load
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: add
    - index: 4
      opcode: ashr
    - index: 5
      opcode: getelementptr
    - index: 6
      opcode: load
      memmode: load
    - index: 7
      opcode: add
    - index: 8
      opcode: and
    - index: 9
      opcode: call
      callees:
      - udp_get_data
    - index: 10
      opcode: load
      memmode: load
    - index: 11
      opcode: zext
    - index: 12
      opcode: switch
  - name: sw.bb
    predecessors:
    - while.end
    successors:
    - if.then
    - cleanup
    instructions:
    - index: 0
      opcode: store
      memmode: store
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: and
    - index: 4
      opcode: icmp
    - index: 5
      opcode: br
  - name: if.then
    predecessors:
    - sw.bb
    successors:
    - cleanup
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: store
      memmode: store
    - index: 5
      opcode: getelementptr
    - index: 6
      opcode: load
      memmode: load
    - index: 7
      opcode: store
      memmode: store
    - index: 8
      opcode: getelementptr
    - index: 9
      opcode: load
      memmode: load
    - index: 10
      opcode: store
      memmode: store
    - index: 11
      opcode: load
      memmode: load
    - index: 12
      opcode: store
      memmode: store
    - index: 13
      opcode: getelementptr
    - index: 14
      opcode: load
      memmode: load
    - index: 15
      opcode: store
      memmode: store
    - index: 16
      opcode: getelementptr
    - index: 17
      opcode: load
      memmode: load
    - index: 18
      opcode: store
      memmode: store
    - index: 19
      opcode: getelementptr
    - index: 20
      opcode: load
      memmode: load
    - index: 21
      opcode: store
      memmode: store
    - index: 22
      opcode: getelementptr
    - index: 23
      opcode: load
      memmode: load
    - index: 24
      opcode: store
      memmode: store
    - index: 25
      opcode: getelementptr
    - index: 26
      opcode: load
      memmode: load
    - index: 27
      opcode: store
      memmode: store
    - index: 28
      opcode: load
      memmode: load
    - index: 29
      opcode: store
      memmode: store
    - index: 30
      opcode: load
      memmode: load
    - index: 31
      opcode: store
      memmode: store
    - index: 32
      opcode: br
  - name: sw.bb1
    predecessors:
    - while.end
    successors:
    - cleanup
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: store
      memmode: store
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: store
      memmode: store
    - index: 6
      opcode: getelementptr
    - index: 7
      opcode: load
      memmode: load
    - index: 8
      opcode: store
      memmode: store
    - index: 9
      opcode: getelementptr
    - index: 10
      opcode: load
      memmode: load
    - index: 11
      opcode: store
      memmode: store
    - index: 12
      opcode: getelementptr
    - index: 13
      opcode: load
      memmode: load
    - index: 14
      opcode: store
      memmode: store
    - index: 15
      opcode: load
      memmode: load
    - index: 16
      opcode: store
      memmode: store
    - index: 17
      opcode: getelementptr
    - index: 18
      opcode: load
      memmode: load
    - index: 19
      opcode: store
      memmode: store
    - index: 20
      opcode: getelementptr
    - index: 21
      opcode: load
      memmode: load
    - index: 22
      opcode: store
      memmode: store
    - index: 23
      opcode: getelementptr
    - index: 24
      opcode: load
      memmode: load
    - index: 25
      opcode: store
      memmode: store
    - index: 26
      opcode: getelementptr
    - index: 27
      opcode: load
      memmode: load
    - index: 28
      opcode: store
      memmode: store
    - index: 29
      opcode: getelementptr
    - index: 30
      opcode: load
      memmode: load
    - index: 31
      opcode: store
      memmode: store
    - index: 32
      opcode: br
  - name: sw.bb2
    predecessors:
    - while.end
    successors:
    - cleanup
    instructions:
    - index: 0
      opcode: store
      memmode: store
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: store
      memmode: store
    - index: 4
      opcode: getelementptr
    - index: 5
      opcode: load
      memmode: load
    - index: 6
      opcode: store
      memmode: store
    - index: 7
      opcode: getelementptr
    - index: 8
      opcode: load
      memmode: load
    - index: 9
      opcode: store
      memmode: store
    - index: 10
      opcode: getelementptr
    - index: 11
      opcode: load
      memmode: load
    - index: 12
      opcode: store
      memmode: store
    - index: 13
      opcode: load
      memmode: load
    - index: 14
      opcode: store
      memmode: store
    - index: 15
      opcode: getelementptr
    - index: 16
      opcode: load
      memmode: load
    - index: 17
      opcode: store
      memmode: store
    - index: 18
      opcode: getelementptr
    - index: 19
      opcode: load
      memmode: load
    - index: 20
      opcode: store
      memmode: store
    - index: 21
      opcode: getelementptr
    - index: 22
      opcode: load
      memmode: load
    - index: 23
      opcode: store
      memmode: store
    - index: 24
      opcode: getelementptr
    - index: 25
      opcode: load
      memmode: load
    - index: 26
      opcode: store
      memmode: store
    - index: 27
      opcode: getelementptr
    - index: 28
      opcode: load
      memmode: load
    - index: 29
      opcode: store
      memmode: store
    - index: 30
      opcode: br
  - name: sw.bb3
    predecessors:
    - while.end
    successors:
    - cleanup
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: store
      memmode: store
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: load
      memmode: load
    - index: 6
      opcode: load
      memmode: load
    - index: 7
      opcode: call
      callees:
      - ptp_calc_one_way_delay
    - index: 8
      opcode: store
      memmode: store
    - index: 9
      opcode: call
      callees:
      - ptp_calc_offset
    - index: 10
      opcode: store
      memmode: store
    - index: 11
      opcode: load
      memmode: load
    - index: 12
      opcode: load
      memmode: load
    - index: 13
      opcode: load
      memmode: load
    - index: 14
      opcode: call
      callees:
      - ptp_calc_one_way_delay
    - index: 15
      opcode: store
      memmode: store
    - index: 16
      opcode: call
      callees:
      - ptp_calc_offset
    - index: 17
      opcode: store
      memmode: store
    - index: 18
      opcode: call
      callees:
      - ptp_correct_offset
    - index: 19
      opcode: br
  - name: cleanup
    predecessors:
    - sw.bb3
    - sw.bb2
    - sw.bb1
    - if.then
    - sw.bb
    - while.end
    successors: []
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: bitcast
    - index: 2
      opcode: call
    - index: 3
      opcode: ret
- name: udp_get_data
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - return
    - for.cond.preheader
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: ashr
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: add
    - index: 5
      opcode: and
    - index: 6
      opcode: icmp
    - index: 7
      opcode: br
  - name: for.cond.preheader
    predecessors:
    - entry
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: mul
    - index: 2
      opcode: add
    - index: 3
      opcode: br
  - name: for.cond
    predecessors:
    - for.body
    - for.cond.preheader
    successors:
    - return
    - for.body
    loops:
    - for.cond
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: phi
    - index: 3
      opcode: phi
    - index: 4
      opcode: call
    - index: 5
      opcode: icmp
    - index: 6
      opcode: br
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      opcode: lshr
    - index: 1
      opcode: getelementptr
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: and
    - index: 4
      opcode: xor
    - index: 5
      opcode: shl
    - index: 6
      opcode: and
    - index: 7
      opcode: lshr
    - index: 8
      opcode: trunc
    - index: 9
      opcode: store
      memmode: store
    - index: 10
      opcode: getelementptr
    - index: 11
      opcode: add
    - index: 12
      opcode: add
    - index: 13
      opcode: add
    - index: 14
      opcode: br
  - name: return
    predecessors:
    - for.cond
    - entry
    successors: []
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: ret
- name: ptp_calc_one_way_delay
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: sub
    - index: 1
      opcode: sub
    - index: 2
      opcode: add
    - index: 3
      opcode: sdiv
    - index: 4
      opcode: ret
- name: ptp_calc_offset
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: sub
    - index: 1
      opcode: sub
    - index: 2
      opcode: ret
- name: ptp_correct_offset
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.end
    - if.then
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: icmp
    - index: 4
      opcode: br
  - name: if.then
    predecessors:
    - entry
    successors:
    - if.end
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: sub
    - index: 2
      opcode: store
      memmode: store
    - index: 3
      opcode: br
  - name: if.end
    predecessors:
    - if.then
    - entry
    successors: []
    instructions:
    - index: 0
      opcode: ret
flowfacts:
- scope:
    function: ptpv2_handle_msg
    loop: while.cond
  lhs:
  - factor: 1
    program-point:
      function: ptpv2_handle_msg
      block: while.cond
  op: less-equal
  rhs: 2
  level: bitcode
  origin: user.bc
  classification: loop-global
- scope:
    function: udp_get_data
    loop: for.cond
  lhs:
  - factor: 1
    program-point:
      function: udp_get_data
      block: for.cond
  op: less-equal
  rhs: "(1 + %data_length)"
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: udp_get_data
    loop: for.cond
  lhs:
  - factor: 1
    program-point:
      function: udp_get_data
      block: for.cond
  op: less-equal
  rhs: 55
  level: bitcode
  origin: user.bc
  classification: loop-global
- scope:
    function: 16
  lhs:
  - factor: -2
    program-point:
      function: 16
      block: 9
  - factor: 1
    program-point:
      function: 16
      block: 1
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 20
  lhs:
  - factor: -54
    program-point:
      function: 20
      block: 2
  - factor: 55
    program-point:
      function: 20
      block: 3
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 16
    loop: 1
  lhs:
  - factor: 1
    program-point:
      function: 16
      block: 1
  op: less-equal
  rhs: '2'
  origin: user
  level: machinecode
- scope:
    function: 20
    loop: 2
  lhs:
  - factor: 1
    program-point:
      function: 20
      block: 2
  op: less-equal
  rhs: '55'
  origin: user
  level: machinecode
relation-graphs:
- src:
    function: checkForPacket
    level: bitcode
  dst:
    function: 8
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.then
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: lor.lhs.false
    dst-block: 1
    src-successors:
    - 2
    - 4
    dst-successors:
    - 2
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 3
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: ptpv2_handle_msg
    level: bitcode
  dst:
    function: 16
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: while.cond
    dst-block: 1
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 3
    type: progress
    src-block: while.end
    dst-block: 2
    src-successors:
    - 5
    - 6
    - 7
    - 8
    - 9
    dst-successors:
    - 4
    - 5
  - name: 4
    type: dst
    dst-block: 3
    dst-successors:
    - 5
    - 6
    - 7
    - 8
    - 9
  - name: 5
    type: progress
    src-block: cleanup
    dst-block: 9
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 6
    type: progress
    src-block: sw.bb
    dst-block: 4
    src-successors:
    - 5
    - 10
    dst-successors:
    - 5
    - 10
  - name: 7
    type: progress
    src-block: sw.bb1
    dst-block: 7
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 8
    type: progress
    src-block: sw.bb2
    dst-block: 6
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 9
    type: progress
    src-block: sw.bb3
    dst-block: 8
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 10
    type: progress
    src-block: if.then
    dst-block: 5
    src-successors:
    - 5
    dst-successors:
    - 5
  status: valid
- src:
    function: udp_get_data
    level: bitcode
  dst:
    function: 20
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond.preheader
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: return
    dst-block: 4
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 4
    type: progress
    src-block: for.cond
    dst-block: 2
    src-successors:
    - 5
    - 3
    dst-successors:
    - 5
    - 3
  - name: 5
    type: progress
    src-block: for.body
    dst-block: 3
    src-successors:
    - 4
    dst-successors:
    - 4
  status: valid
- src:
    function: ptp_calc_one_way_delay
    level: bitcode
  dst:
    function: 17
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: ptp_calc_offset
    level: bitcode
  dst:
    function: 18
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: ptp_correct_offset
    level: bitcode
  dst:
    function: 19
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 1
  - name: 1
    type: exit
  - name: 2
    type: src
    src-block: if.end
    src-successors:
    - 1
  - name: 3
    type: src
    src-block: if.then
    src-successors:
    - 2
  status: valid
timing:
- scope:
    function: 8
  cycles: 4577
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 1176
  cache-min-hits-instr: 2
  cache-max-misses-instr: 9
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 2205
  cache-min-hits-data: 0
  cache-max-misses-data: 17
  cache-max-stores-data: 88
  cache-unknown-address-data: 105
  cache-max-cycles: 3381
  profile:
  - reference:
      function: 8
      edgesource: 0
      edgetarget: 1
    cycles: 188
    wcet-frequency: 1
    wcet-contribution: 188
  - reference:
      function: 8
      edgesource: 1
      edgetarget: 2
    cycles: 52
    wcet-frequency: 1
    wcet-contribution: 52
  - reference:
      function: 8
      edgesource: 2
      edgetarget: 3
    cycles: 160
    wcet-frequency: 1
    wcet-contribution: 160
  - reference:
      function: 8
      edgesource: 3
    cycles: 74
    wcet-frequency: 1
    wcet-contribution: 74
  - reference:
      function: 16
      edgesource: 0
      edgetarget: 1
    cycles: 533
    wcet-frequency: 1
    wcet-contribution: 533
  - reference:
      function: 16
      edgesource: 1
      edgetarget: 1
    cycles: 7
    wcet-frequency: 1
    wcet-contribution: 7
  - reference:
      function: 16
      edgesource: 1
      edgetarget: 2
    cycles: 9
    wcet-frequency: 1
    wcet-contribution: 9
  - reference:
      function: 16
      edgesource: 2
      edgetarget: 3
    cycles: 192
    wcet-frequency: 1
    wcet-contribution: 192
  - reference:
      function: 16
      edgesource: 3
      edgetarget: 4
    cycles: 70
    wcet-frequency: 1
    wcet-contribution: 70
  - reference:
      function: 16
      edgesource: 4
      edgetarget: 5
    cycles: 345
    wcet-frequency: 1
    wcet-contribution: 345
  - reference:
      function: 16
      edgesource: 5
      edgetarget: 9
    cycles: 542
    wcet-frequency: 1
    wcet-contribution: 542
  - reference:
      function: 16
      edgesource: 9
    cycles: 98
    wcet-frequency: 1
    wcet-contribution: 98
  - reference:
      function: 20
      edgesource: 0
      edgetarget: 1
    cycles: 241
    wcet-frequency: 1
    wcet-contribution: 241
  - reference:
      function: 20
      edgesource: 1
      edgetarget: 2
    cycles: 5
    wcet-frequency: 1
    wcet-contribution: 5
  - reference:
      function: 20
      edgesource: 3
      edgetarget: 2
    cycles: 34
    wcet-frequency: 54
    wcet-contribution: 1836
  - reference:
      function: 20
      edgesource: 2
      edgetarget: 4
    cycles: 4
    wcet-frequency: 1
    wcet-contribution: 4
  - reference:
      function: 20
      edgesource: 2
      edgetarget: 3
    cycles: 4
    wcet-frequency: 54
    wcet-contribution: 216
  - reference:
      function: 20
      edgesource: 4
    cycles: 5
    wcet-frequency: 1
    wcet-contribution: 5
