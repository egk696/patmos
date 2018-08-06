---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 15
  level: machinecode
  mapsto: ptpv2_issue_msg
  arguments:
  - name: "%tx_addr"
    index: 0
    registers:
    - r3
  - name: "%rx_addr"
    index: 1
    registers:
    - r4
  - name: "%seqId"
    index: 4
    registers:
    - r7
  - name: "%msgType"
    index: 5
    registers:
    - r8
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 11
    - 1
    instructions:
    - index: 0
      opcode: SRESi
      size: 4
      stack-cache-argument: 8
      address: 137812
    - index: 1
      opcode: SUBi
      size: 4
      address: 137816
    - index: 2
      opcode: MFS
      size: 4
      address: 137820
    - index: 3
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 137824
    - index: 4
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 137828
    - index: 5
      opcode: MFS
      size: 4
      address: 137832
    - index: 6
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 137836
    - index: 7
      opcode: LIi
      size: 4
      address: 137840
    - index: 8
      opcode: LIi
      size: 4
      address: 137844
    - index: 9
      opcode: MFS
      size: 4
      address: 137848
    - index: 10
      opcode: CMPIEQ
      size: 4
      address: 137852
    - index: 11
      opcode: CMOV
      size: 4
      address: 137856
    - index: 12
      opcode: LIi
      size: 4
      address: 137860
    - index: 13
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 137864
    - index: 14
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 137868
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 137872
    - index: 16
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 137876
    - index: 17
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 137880
    - index: 18
      opcode: LIi
      size: 4
      address: 137884
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 137888
    - index: 20
      opcode: LIi
      size: 4
      address: 137892
    - index: 21
      opcode: CMPULT
      size: 4
      address: 137896
    - index: 22
      opcode: BRCF
      size: 4
      branch-type: conditional
      branch-delay-slots: 3
      branch-targets:
      - 11
      address: 137900
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 137904
    - index: 24
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 137908
    - index: 25
      opcode: NOP
      size: 4
      address: 137912
    address: 137812
  - name: 1
    mapsto: entry
    predecessors:
    - 0
    successors:
    - 2
    - 5
    - 11
    - 8
    - 9
    instructions:
    - index: 0
      opcode: SHADD2l
      size: 8
      address: 137916
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 137924
    - index: 2
      opcode: NOP
      size: 4
      address: 137928
    - index: 3
      opcode: BRCFTNDu
      size: 4
      branch-type: indirect
      branch-targets:
      - 2
      - 5
      - 11
      - 11
      - 11
      - 11
      - 11
      - 11
      - 8
      - 9
      address: 137932
    address: 137916
  - name: 2
    mapsto: sw.epilog.thread1
    predecessors:
    - 1
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 137940
    - index: 1
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137948
    - index: 2
      opcode: NOP
      size: 4
      address: 137952
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 137956
    - index: 4
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137960
    - index: 5
      opcode: MOV
      size: 4
      address: 137964
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 137968
    - index: 7
      opcode: ANDl
      size: 8
      address: 137972
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 137980
    - index: 9
      opcode: ADDi
      size: 4
      address: 137984
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 137988
    - index: 11
      opcode: CALLND
      callees:
      - udp_send_mac
      size: 4
      branch-type: call
      address: 137992
    - index: 12
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 3
      address: 137996
    - index: 13
      opcode: LIl
      size: 8
      address: 138000
    - index: 14
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 138008
    - index: 15
      opcode: NOP
      size: 4
      address: 138012
    address: 137940
  - name: 3
    mapsto: while.cond
    predecessors:
    - 2
    - 3
    successors:
    - 3
    - 4
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138020
    - index: 1
      opcode: NOP
      size: 4
      address: 138024
    - index: 2
      opcode: ANDi
      size: 4
      address: 138028
    - index: 3
      opcode: CMPIEQ
      size: 4
      address: 138032
    - index: 4
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 3
      address: 138036
    address: 138020
  - name: 4
    mapsto: while.end
    predecessors:
    - 3
    successors:
    - 12
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138040
    - index: 1
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138048
    - index: 2
      opcode: LIl
      size: 8
      address: 138052
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138060
    - index: 4
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138064
    - index: 5
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 12
      address: 138068
    - index: 6
      opcode: NOP
      size: 4
      address: 138072
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138076
    - index: 8
      opcode: NOP
      size: 4
      address: 138080
    address: 138040
  - name: 5
    mapsto: sw.epilog.thread2
    predecessors:
    - 1
    successors:
    - 6
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138100
    - index: 1
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138108
    - index: 2
      opcode: NOP
      size: 4
      address: 138112
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138116
    - index: 4
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138120
    - index: 5
      opcode: MOV
      size: 4
      address: 138124
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138128
    - index: 7
      opcode: ANDl
      size: 8
      address: 138132
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138140
    - index: 9
      opcode: ADDi
      size: 4
      address: 138144
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138148
    - index: 11
      opcode: CALLND
      callees:
      - udp_send_mac
      size: 4
      branch-type: call
      address: 138152
    - index: 12
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 6
      address: 138156
    - index: 13
      opcode: LIl
      size: 8
      address: 138160
    - index: 14
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 138168
    - index: 15
      opcode: NOP
      size: 4
      address: 138172
    address: 138100
  - name: 6
    mapsto: while.cond5
    predecessors:
    - 5
    - 6
    successors:
    - 6
    - 7
    loops:
    - 6
    instructions:
    - index: 0
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138180
    - index: 1
      opcode: NOP
      size: 4
      address: 138184
    - index: 2
      opcode: ANDi
      size: 4
      address: 138188
    - index: 3
      opcode: CMPIEQ
      size: 4
      address: 138192
    - index: 4
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 6
      address: 138196
    address: 138180
  - name: 7
    mapsto: while.end7
    predecessors:
    - 6
    successors:
    - 12
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138200
    - index: 1
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138208
    - index: 2
      opcode: LIl
      size: 8
      address: 138212
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138220
    - index: 4
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 138224
    - index: 5
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 12
      address: 138228
    - index: 6
      opcode: NOP
      size: 4
      address: 138232
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138236
    - index: 8
      opcode: NOP
      size: 4
      address: 138240
    address: 138200
  - name: 8
    mapsto: sw.bb1
    predecessors:
    - 1
    successors:
    - 10
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138260
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138268
    - index: 2
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 10
      address: 138272
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138276
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138280
    - index: 5
      opcode: NOP
      size: 4
      address: 138284
    address: 138260
  - name: 9
    mapsto: sw.bb3
    predecessors:
    - 1
    successors:
    - 10
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 138292
    - index: 1
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 10
      address: 138300
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138304
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 138308
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138312
    address: 138292
  - name: 10
    mapsto: "(null)"
    predecessors:
    - 9
    - 8
    successors:
    - 11
    instructions:
    - index: 0
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 11
      address: 138324
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138328
    - index: 2
      opcode: NOP
      size: 4
      address: 138332
    - index: 3
      opcode: NOP
      size: 4
      address: 138336
    address: 138324
  - name: 11
    mapsto: "(null)"
    predecessors:
    - 0
    - 1
    - 10
    successors:
    - 12
    instructions:
    - index: 0
      opcode: ANDl
      size: 8
      address: 138356
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138364
    - index: 2
      opcode: MOV
      size: 4
      address: 138368
    - index: 3
      opcode: ADDi
      size: 4
      address: 138372
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 138376
    - index: 5
      opcode: CALLND
      callees:
      - udp_send_mac
      size: 4
      branch-type: call
      address: 138380
    - index: 6
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 12
      address: 138384
    - index: 7
      opcode: SENSi
      size: 4
      stack-cache-argument: 8
      address: 138388
    - index: 8
      opcode: NOP
      size: 4
      address: 138392
    - index: 9
      opcode: NOP
      size: 4
      address: 138396
    address: 138356
  - name: 12
    mapsto: if.end8
    predecessors:
    - 7
    - 4
    - 11
    successors: []
    instructions:
    - index: 0
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 138404
    - index: 1
      opcode: NOP
      size: 4
      address: 138408
    - index: 2
      opcode: MTS
      size: 4
      address: 138412
    - index: 3
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 138416
    - index: 4
      opcode: LIi
      size: 4
      address: 138420
    - index: 5
      opcode: MTS
      size: 4
      address: 138424
    - index: 6
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 138428
    - index: 7
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 138432
    - index: 8
      opcode: ADDi
      size: 4
      address: 138436
    - index: 9
      opcode: MTS
      size: 4
      address: 138440
    - index: 10
      opcode: SFREEi
      size: 4
      stack-cache-argument: 8
      address: 138444
    address: 138404
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
    - 4
  - name: 5
    blocks:
    - 5
  - name: 6
    blocks:
    - 6
    - 7
  - name: 8
    blocks:
    - 8
  - name: 9
    blocks:
    - 9
  - name: 10
    blocks:
    - 10
  - name: 11
    blocks:
    - 11
  - name: 12
    blocks:
    - 12
- name: 22
  level: machinecode
  mapsto: udp_send_mac
  arguments:
  - name: "%tx_addr"
    index: 0
    registers:
    - r3
  - name: "%rx_addr"
    index: 1
    registers:
    - r4
  - name: "%source_port"
    index: 4
    registers:
    - r7
  - name: "%destination_port"
    index: 5
    registers:
    - r8
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
      stack-cache-argument: 24
      address: 140804
    - index: 1
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140808
    - index: 2
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140812
    - index: 3
      opcode: MFS
      size: 4
      address: 140816
    - index: 4
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140820
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 140824
    - index: 6
      opcode: MOV
      size: 4
      address: 140828
    - index: 7
      opcode: SLi
      size: 4
      address: 140832
    - index: 8
      opcode: ADDi
      size: 4
      address: 140836
    - index: 9
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140840
    - index: 10
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140844
    - index: 11
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140848
    - index: 12
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140852
    - index: 13
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140856
    - index: 14
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140860
    - index: 15
      opcode: MOV
      size: 4
      address: 140864
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 140868
    - index: 17
      opcode: MFS
      size: 4
      address: 140872
    - index: 18
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140876
    - index: 19
      opcode: ADDi
      size: 4
      address: 140880
    - index: 20
      opcode: MFS
      size: 4
      address: 140884
    - index: 21
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 140888
    - index: 22
      opcode: LIi
      size: 4
      address: 140892
    address: 140804
  - name: 1
    mapsto: for.body
    predecessors:
    - 0
    - 1
    successors:
    - 2
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 140896
    - index: 1
      opcode: ADDr
      size: 4
      address: 140900
    - index: 2
      opcode: NOT
      size: 4
      address: 140904
    - index: 3
      opcode: ADDr
      size: 4
      address: 140908
    - index: 4
      opcode: ANDl
      size: 8
      address: 140912
    - index: 5
      opcode: ANDi
      size: 4
      address: 140920
    - index: 6
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 140924
    - index: 7
      opcode: ADDl
      size: 8
      address: 140928
    - index: 8
      opcode: SLr
      size: 4
      address: 140936
    - index: 9
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140940
    - index: 10
      opcode: NOT
      size: 4
      address: 140944
    - index: 11
      opcode: ANDr
      size: 4
      address: 140948
    - index: 12
      opcode: SLr
      size: 4
      address: 140952
    - index: 13
      opcode: ADDr
      size: 4
      address: 140956
    - index: 14
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 140960
    - index: 15
      opcode: ADDi
      size: 4
      address: 140964
    - index: 16
      opcode: ANDl
      size: 8
      address: 140968
    - index: 17
      opcode: ADDl
      size: 8
      address: 140976
    - index: 18
      opcode: ADDl
      size: 8
      address: 140984
    - index: 19
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 140992
    - index: 20
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140996
    - index: 21
      opcode: NOT
      size: 4
      address: 141000
    - index: 22
      opcode: ANDi
      size: 4
      address: 141004
    - index: 23
      opcode: SLr
      size: 4
      address: 141008
    - index: 24
      opcode: NOT
      size: 4
      address: 141012
    - index: 25
      opcode: ANDr
      size: 4
      address: 141016
    - index: 26
      opcode: SLr
      size: 4
      address: 141020
    - index: 27
      opcode: ADDr
      size: 4
      address: 141024
    - index: 28
      opcode: ADDi
      size: 4
      address: 141028
    - index: 29
      opcode: CMPINEQ
      size: 4
      address: 141032
    - index: 30
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 141036
    - index: 31
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141040
    - index: 32
      opcode: ADDi
      size: 4
      address: 141044
    - index: 33
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 2
      address: 141048
    address: 140896
  - name: 2
    mapsto: "(null)"
    predecessors:
    - 1
    successors:
    - 3
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 141060
    - index: 1
      opcode: ANDl
      size: 8
      address: 141064
    - index: 2
      opcode: LIl
      size: 8
      address: 141072
    - index: 3
      opcode: ADDl
      size: 8
      address: 141080
    - index: 4
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141088
    - index: 5
      opcode: ADDi
      size: 4
      address: 141092
    - index: 6
      opcode: SLi
      size: 4
      address: 141096
    - index: 7
      opcode: NOT
      size: 4
      address: 141100
    - index: 8
      opcode: ANDi
      size: 4
      address: 141104
    - index: 9
      opcode: ADDi
      size: 4
      address: 141108
    - index: 10
      opcode: SRi
      size: 4
      address: 141112
    - index: 11
      opcode: ANDi
      size: 4
      address: 141116
    - index: 12
      opcode: SLr
      size: 4
      address: 141120
    - index: 13
      opcode: LIi
      size: 4
      address: 141124
    - index: 14
      opcode: SLr
      size: 4
      address: 141128
    - index: 15
      opcode: ANDl
      size: 8
      address: 141132
    - index: 16
      opcode: ADDl
      size: 8
      address: 141140
    - index: 17
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141148
    - index: 18
      opcode: NOT
      size: 4
      address: 141152
    - index: 19
      opcode: ANDr
      size: 4
      address: 141156
    - index: 20
      opcode: ADDr
      size: 4
      address: 141160
    - index: 21
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141164
    - index: 22
      opcode: ADDi
      size: 4
      address: 141168
    - index: 23
      opcode: SLi
      size: 4
      address: 141172
    - index: 24
      opcode: NOT
      size: 4
      address: 141176
    - index: 25
      opcode: ANDi
      size: 4
      address: 141180
    - index: 26
      opcode: ANDi
      size: 4
      address: 141184
    - index: 27
      opcode: SLr
      size: 4
      address: 141188
    - index: 28
      opcode: SLr
      size: 4
      address: 141192
    - index: 29
      opcode: ANDl
      size: 8
      address: 141196
    - index: 30
      opcode: ADDl
      size: 8
      address: 141204
    - index: 31
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141212
    - index: 32
      opcode: NOT
      size: 4
      address: 141216
    - index: 33
      opcode: ANDr
      size: 4
      address: 141220
    - index: 34
      opcode: ADDr
      size: 4
      address: 141224
    - index: 35
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141228
    - index: 36
      opcode: ADDi
      size: 4
      address: 141232
    - index: 37
      opcode: SLi
      size: 4
      address: 141236
    - index: 38
      opcode: NOT
      size: 4
      address: 141240
    - index: 39
      opcode: LIl
      size: 8
      address: 141244
    - index: 40
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 141252
    - index: 41
      opcode: ANDi
      size: 4
      address: 141256
    - index: 42
      opcode: ADDi
      size: 4
      address: 141260
    - index: 43
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 141264
    - index: 44
      opcode: ANDl
      size: 8
      address: 141268
    - index: 45
      opcode: SRi
      size: 4
      address: 141276
    - index: 46
      opcode: SLr
      size: 4
      address: 141280
    - index: 47
      opcode: SLr
      size: 4
      address: 141284
    - index: 48
      opcode: ANDl
      size: 8
      address: 141288
    - index: 49
      opcode: ADDl
      size: 8
      address: 141296
    - index: 50
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141304
    - index: 51
      opcode: NOT
      size: 4
      address: 141308
    - index: 52
      opcode: ANDr
      size: 4
      address: 141312
    - index: 53
      opcode: ADDr
      size: 4
      address: 141316
    - index: 54
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141320
    - index: 55
      opcode: ADDi
      size: 4
      address: 141324
    - index: 56
      opcode: SLi
      size: 4
      address: 141328
    - index: 57
      opcode: NOT
      size: 4
      address: 141332
    - index: 58
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141336
    - index: 59
      opcode: ANDi
      size: 4
      address: 141340
    - index: 60
      opcode: SLr
      size: 4
      address: 141344
    - index: 61
      opcode: SLr
      size: 4
      address: 141348
    - index: 62
      opcode: ANDl
      size: 8
      address: 141352
    - index: 63
      opcode: ADDl
      size: 8
      address: 141360
    - index: 64
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141368
    - index: 65
      opcode: NOT
      size: 4
      address: 141372
    - index: 66
      opcode: ANDr
      size: 4
      address: 141376
    - index: 67
      opcode: ADDr
      size: 4
      address: 141380
    - index: 68
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141384
    - index: 69
      opcode: ADDi
      size: 4
      address: 141388
    - index: 70
      opcode: ANDl
      size: 8
      address: 141392
    - index: 71
      opcode: ADDl
      size: 8
      address: 141400
    - index: 72
      opcode: LIl
      size: 8
      address: 141408
    - index: 73
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141416
    - index: 74
      opcode: ADDi
      size: 4
      address: 141420
    - index: 75
      opcode: SLi
      size: 4
      address: 141424
    - index: 76
      opcode: SRi
      size: 4
      address: 141428
    - index: 77
      opcode: SHADD2l
      size: 8
      address: 141432
    - index: 78
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141440
    - index: 79
      opcode: NOT
      size: 4
      address: 141444
    - index: 80
      opcode: ANDi
      size: 4
      address: 141448
    - index: 81
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141452
    - index: 82
      opcode: SLr
      size: 4
      address: 141456
    - index: 83
      opcode: NOT
      size: 4
      address: 141460
    - index: 84
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141464
    - index: 85
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141468
    - index: 86
      opcode: NOP
      size: 4
      address: 141472
    - index: 87
      opcode: ANDr
      size: 4
      address: 141476
    - index: 88
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141480
    - index: 89
      opcode: ADDi
      size: 4
      address: 141484
    - index: 90
      opcode: SLi
      size: 4
      address: 141488
    - index: 91
      opcode: SRi
      size: 4
      address: 141492
    - index: 92
      opcode: SHADD2l
      size: 8
      address: 141496
    - index: 93
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141504
    - index: 94
      opcode: NOT
      size: 4
      address: 141508
    - index: 95
      opcode: ANDi
      size: 4
      address: 141512
    - index: 96
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141516
    - index: 97
      opcode: SLr
      size: 4
      address: 141520
    - index: 98
      opcode: NOT
      size: 4
      address: 141524
    - index: 99
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 141528
    - index: 100
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141532
    - index: 101
      opcode: NOP
      size: 4
      address: 141536
    - index: 102
      opcode: ANDr
      size: 4
      address: 141540
    - index: 103
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141544
    - index: 104
      opcode: ADDi
      size: 4
      address: 141548
    - index: 105
      opcode: SLi
      size: 4
      address: 141552
    - index: 106
      opcode: NOT
      size: 4
      address: 141556
    - index: 107
      opcode: LIl
      size: 8
      address: 141560
    - index: 108
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141568
    - index: 109
      opcode: ANDi
      size: 4
      address: 141572
    - index: 110
      opcode: SLr
      size: 4
      address: 141576
    - index: 111
      opcode: SLr
      size: 4
      address: 141580
    - index: 112
      opcode: ANDl
      size: 8
      address: 141584
    - index: 113
      opcode: ADDl
      size: 8
      address: 141592
    - index: 114
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141600
    - index: 115
      opcode: NOT
      size: 4
      address: 141604
    - index: 116
      opcode: ANDr
      size: 4
      address: 141608
    - index: 117
      opcode: ADDr
      size: 4
      address: 141612
    - index: 118
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141616
    - index: 119
      opcode: ADDi
      size: 4
      address: 141620
    - index: 120
      opcode: SLi
      size: 4
      address: 141624
    - index: 121
      opcode: NOT
      size: 4
      address: 141628
    - index: 122
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141632
    - index: 123
      opcode: ANDi
      size: 4
      address: 141636
    - index: 124
      opcode: SLr
      size: 4
      address: 141640
    - index: 125
      opcode: SLr
      size: 4
      address: 141644
    - index: 126
      opcode: ANDl
      size: 8
      address: 141648
    - index: 127
      opcode: ADDl
      size: 8
      address: 141656
    - index: 128
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141664
    - index: 129
      opcode: NOT
      size: 4
      address: 141668
    - index: 130
      opcode: ANDr
      size: 4
      address: 141672
    - index: 131
      opcode: ADDr
      size: 4
      address: 141676
    - index: 132
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141680
    - index: 133
      opcode: ADDi
      size: 4
      address: 141684
    - index: 134
      opcode: SLi
      size: 4
      address: 141688
    - index: 135
      opcode: NOT
      size: 4
      address: 141692
    - index: 136
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141696
    - index: 137
      opcode: ANDi
      size: 4
      address: 141700
    - index: 138
      opcode: SLr
      size: 4
      address: 141704
    - index: 139
      opcode: SLr
      size: 4
      address: 141708
    - index: 140
      opcode: ANDl
      size: 8
      address: 141712
    - index: 141
      opcode: ADDl
      size: 8
      address: 141720
    - index: 142
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141728
    - index: 143
      opcode: NOT
      size: 4
      address: 141732
    - index: 144
      opcode: ANDr
      size: 4
      address: 141736
    - index: 145
      opcode: ADDr
      size: 4
      address: 141740
    - index: 146
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141744
    - index: 147
      opcode: ADDi
      size: 4
      address: 141748
    - index: 148
      opcode: SLi
      size: 4
      address: 141752
    - index: 149
      opcode: NOT
      size: 4
      address: 141756
    - index: 150
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141760
    - index: 151
      opcode: ANDi
      size: 4
      address: 141764
    - index: 152
      opcode: SLr
      size: 4
      address: 141768
    - index: 153
      opcode: SLr
      size: 4
      address: 141772
    - index: 154
      opcode: ANDl
      size: 8
      address: 141776
    - index: 155
      opcode: ADDl
      size: 8
      address: 141784
    - index: 156
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141792
    - index: 157
      opcode: NOT
      size: 4
      address: 141796
    - index: 158
      opcode: ANDr
      size: 4
      address: 141800
    - index: 159
      opcode: ADDr
      size: 4
      address: 141804
    - index: 160
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141808
    - index: 161
      opcode: ADDi
      size: 4
      address: 141812
    - index: 162
      opcode: SLi
      size: 4
      address: 141816
    - index: 163
      opcode: NOT
      size: 4
      address: 141820
    - index: 164
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141824
    - index: 165
      opcode: ANDi
      size: 4
      address: 141828
    - index: 166
      opcode: SLr
      size: 4
      address: 141832
    - index: 167
      opcode: SLr
      size: 4
      address: 141836
    - index: 168
      opcode: ANDl
      size: 8
      address: 141840
    - index: 169
      opcode: ADDl
      size: 8
      address: 141848
    - index: 170
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141856
    - index: 171
      opcode: NOT
      size: 4
      address: 141860
    - index: 172
      opcode: ANDr
      size: 4
      address: 141864
    - index: 173
      opcode: ADDr
      size: 4
      address: 141868
    - index: 174
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141872
    - index: 175
      opcode: ADDi
      size: 4
      address: 141876
    - index: 176
      opcode: SLi
      size: 4
      address: 141880
    - index: 177
      opcode: NOT
      size: 4
      address: 141884
    - index: 178
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141888
    - index: 179
      opcode: ANDi
      size: 4
      address: 141892
    - index: 180
      opcode: SLr
      size: 4
      address: 141896
    - index: 181
      opcode: SLr
      size: 4
      address: 141900
    - index: 182
      opcode: ANDl
      size: 8
      address: 141904
    - index: 183
      opcode: ADDl
      size: 8
      address: 141912
    - index: 184
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141920
    - index: 185
      opcode: NOT
      size: 4
      address: 141924
    - index: 186
      opcode: ANDr
      size: 4
      address: 141928
    - index: 187
      opcode: ADDr
      size: 4
      address: 141932
    - index: 188
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 141936
    - index: 189
      opcode: ADDi
      size: 4
      address: 141940
    - index: 190
      opcode: SLi
      size: 4
      address: 141944
    - index: 191
      opcode: NOT
      size: 4
      address: 141948
    - index: 192
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 141952
    - index: 193
      opcode: ANDi
      size: 4
      address: 141956
    - index: 194
      opcode: SLr
      size: 4
      address: 141960
    - index: 195
      opcode: SLr
      size: 4
      address: 141964
    - index: 196
      opcode: ANDl
      size: 8
      address: 141968
    - index: 197
      opcode: ADDl
      size: 8
      address: 141976
    - index: 198
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 141984
    - index: 199
      opcode: NOT
      size: 4
      address: 141988
    - index: 200
      opcode: ANDr
      size: 4
      address: 141992
    - index: 201
      opcode: ADDr
      size: 4
      address: 141996
    - index: 202
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142000
    - index: 203
      opcode: ADDi
      size: 4
      address: 142004
    - index: 204
      opcode: SLi
      size: 4
      address: 142008
    - index: 205
      opcode: NOT
      size: 4
      address: 142012
    - index: 206
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 142016
    - index: 207
      opcode: ANDi
      size: 4
      address: 142020
    - index: 208
      opcode: SLr
      size: 4
      address: 142024
    - index: 209
      opcode: SLr
      size: 4
      address: 142028
    - index: 210
      opcode: ANDl
      size: 8
      address: 142032
    - index: 211
      opcode: ADDl
      size: 8
      address: 142040
    - index: 212
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142048
    - index: 213
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 3
      address: 142052
    - index: 214
      opcode: NOT
      size: 4
      address: 142056
    - index: 215
      opcode: ANDr
      size: 4
      address: 142060
    - index: 216
      opcode: ADDr
      size: 4
      address: 142064
    address: 141060
  - name: 3
    mapsto: for.end
    predecessors:
    - 2
    successors:
    - 6
    - 4
    instructions:
    - index: 0
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142084
    - index: 1
      opcode: ADDi
      size: 4
      address: 142088
    - index: 2
      opcode: SLi
      size: 4
      address: 142092
    - index: 3
      opcode: NOT
      size: 4
      address: 142096
    - index: 4
      opcode: ANDi
      size: 4
      address: 142100
    - index: 5
      opcode: SRi
      size: 4
      address: 142104
    - index: 6
      opcode: SLr
      size: 4
      address: 142108
    - index: 7
      opcode: SLr
      size: 4
      address: 142112
    - index: 8
      opcode: ANDl
      size: 8
      address: 142116
    - index: 9
      opcode: ADDl
      size: 8
      address: 142124
    - index: 10
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142132
    - index: 11
      opcode: NOT
      size: 4
      address: 142136
    - index: 12
      opcode: ANDr
      size: 4
      address: 142140
    - index: 13
      opcode: ADDr
      size: 4
      address: 142144
    - index: 14
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142148
    - index: 15
      opcode: ANDi
      size: 4
      address: 142152
    - index: 16
      opcode: ADDi
      size: 4
      address: 142156
    - index: 17
      opcode: SLi
      size: 4
      address: 142160
    - index: 18
      opcode: NOT
      size: 4
      address: 142164
    - index: 19
      opcode: ANDi
      size: 4
      address: 142168
    - index: 20
      opcode: SLr
      size: 4
      address: 142172
    - index: 21
      opcode: SLr
      size: 4
      address: 142176
    - index: 22
      opcode: ANDl
      size: 8
      address: 142180
    - index: 23
      opcode: ADDl
      size: 8
      address: 142188
    - index: 24
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142196
    - index: 25
      opcode: NOT
      size: 4
      address: 142200
    - index: 26
      opcode: ANDr
      size: 4
      address: 142204
    - index: 27
      opcode: ADDr
      size: 4
      address: 142208
    - index: 28
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142212
    - index: 29
      opcode: ADDi
      size: 4
      address: 142216
    - index: 30
      opcode: SLi
      size: 4
      address: 142220
    - index: 31
      opcode: NOT
      size: 4
      address: 142224
    - index: 32
      opcode: ANDi
      size: 4
      address: 142228
    - index: 33
      opcode: SRi
      size: 4
      address: 142232
    - index: 34
      opcode: SLr
      size: 4
      address: 142236
    - index: 35
      opcode: SLr
      size: 4
      address: 142240
    - index: 36
      opcode: ANDl
      size: 8
      address: 142244
    - index: 37
      opcode: ADDl
      size: 8
      address: 142252
    - index: 38
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142260
    - index: 39
      opcode: NOT
      size: 4
      address: 142264
    - index: 40
      opcode: ANDr
      size: 4
      address: 142268
    - index: 41
      opcode: ADDr
      size: 4
      address: 142272
    - index: 42
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142276
    - index: 43
      opcode: ADDi
      size: 4
      address: 142280
    - index: 44
      opcode: SLi
      size: 4
      address: 142284
    - index: 45
      opcode: NOT
      size: 4
      address: 142288
    - index: 46
      opcode: ANDi
      size: 4
      address: 142292
    - index: 47
      opcode: ANDi
      size: 4
      address: 142296
    - index: 48
      opcode: SLr
      size: 4
      address: 142300
    - index: 49
      opcode: SLr
      size: 4
      address: 142304
    - index: 50
      opcode: ANDl
      size: 8
      address: 142308
    - index: 51
      opcode: ADDl
      size: 8
      address: 142316
    - index: 52
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142324
    - index: 53
      opcode: NOT
      size: 4
      address: 142328
    - index: 54
      opcode: ANDr
      size: 4
      address: 142332
    - index: 55
      opcode: ADDr
      size: 4
      address: 142336
    - index: 56
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142340
    - index: 57
      opcode: ADDi
      size: 4
      address: 142344
    - index: 58
      opcode: SLi
      size: 4
      address: 142348
    - index: 59
      opcode: NOT
      size: 4
      address: 142352
    - index: 60
      opcode: ANDi
      size: 4
      address: 142356
    - index: 61
      opcode: SRi
      size: 4
      address: 142360
    - index: 62
      opcode: ANDi
      size: 4
      address: 142364
    - index: 63
      opcode: SLr
      size: 4
      address: 142368
    - index: 64
      opcode: SLr
      size: 4
      address: 142372
    - index: 65
      opcode: ANDl
      size: 8
      address: 142376
    - index: 66
      opcode: ADDl
      size: 8
      address: 142384
    - index: 67
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142392
    - index: 68
      opcode: NOT
      size: 4
      address: 142396
    - index: 69
      opcode: ANDr
      size: 4
      address: 142400
    - index: 70
      opcode: ADDr
      size: 4
      address: 142404
    - index: 71
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142408
    - index: 72
      opcode: ADDi
      size: 4
      address: 142412
    - index: 73
      opcode: SLi
      size: 4
      address: 142416
    - index: 74
      opcode: NOT
      size: 4
      address: 142420
    - index: 75
      opcode: ANDi
      size: 4
      address: 142424
    - index: 76
      opcode: ANDi
      size: 4
      address: 142428
    - index: 77
      opcode: SLr
      size: 4
      address: 142432
    - index: 78
      opcode: SLr
      size: 4
      address: 142436
    - index: 79
      opcode: ANDl
      size: 8
      address: 142440
    - index: 80
      opcode: ADDl
      size: 8
      address: 142448
    - index: 81
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142456
    - index: 82
      opcode: NOT
      size: 4
      address: 142460
    - index: 83
      opcode: ANDr
      size: 4
      address: 142464
    - index: 84
      opcode: ADDr
      size: 4
      address: 142468
    - index: 85
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142472
    - index: 86
      opcode: ADDi
      size: 4
      address: 142476
    - index: 87
      opcode: SLi
      size: 4
      address: 142480
    - index: 88
      opcode: NOT
      size: 4
      address: 142484
    - index: 89
      opcode: ANDi
      size: 4
      address: 142488
    - index: 90
      opcode: SLr
      size: 4
      address: 142492
    - index: 91
      opcode: SRi
      size: 4
      address: 142496
    - index: 92
      opcode: SHADD2l
      size: 8
      address: 142500
    - index: 93
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142508
    - index: 94
      opcode: NOT
      size: 4
      address: 142512
    - index: 95
      opcode: ANDr
      size: 4
      address: 142516
    - index: 96
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142520
    - index: 97
      opcode: CMPIEQ
      size: 4
      address: 142524
    - index: 98
      opcode: ADDi
      size: 4
      address: 142528
    - index: 99
      opcode: SLi
      size: 4
      address: 142532
    - index: 100
      opcode: NOT
      size: 4
      address: 142536
    - index: 101
      opcode: ANDi
      size: 4
      address: 142540
    - index: 102
      opcode: SLr
      size: 4
      address: 142544
    - index: 103
      opcode: NOT
      size: 4
      address: 142548
    - index: 104
      opcode: SRi
      size: 4
      address: 142552
    - index: 105
      opcode: SHADD2l
      size: 8
      address: 142556
    - index: 106
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142564
    - index: 107
      opcode: BRCF
      size: 4
      branch-type: conditional
      branch-delay-slots: 3
      branch-targets:
      - 6
      address: 142568
    - index: 108
      opcode: ANDr
      size: 4
      address: 142572
    - index: 109
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142576
    - index: 110
      opcode: NOP
      size: 4
      address: 142580
    - index: 111
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 4
      address: 142584
    address: 142084
  - name: 4
    mapsto: for.body8.lr.ph
    predecessors:
    - 3
    successors:
    - 5
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 142596
    - index: 1
      opcode: ADDi
      size: 4
      address: 142600
    - index: 2
      opcode: MOV
      size: 4
      address: 142604
    address: 142596
  - name: 5
    mapsto: for.body8
    predecessors:
    - 4
    - 5
    successors:
    - 5
    - 6
    loops:
    - 5
    instructions:
    - index: 0
      opcode: ADDr
      size: 4
      address: 142608
    - index: 1
      opcode: NOT
      size: 4
      address: 142612
    - index: 2
      opcode: ADDr
      size: 4
      address: 142616
    - index: 3
      opcode: ANDl
      size: 8
      address: 142620
    - index: 4
      opcode: ANDi
      size: 4
      address: 142628
    - index: 5
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 142632
    - index: 6
      opcode: ADDl
      size: 8
      address: 142636
    - index: 7
      opcode: SLr
      size: 4
      address: 142644
    - index: 8
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142648
    - index: 9
      opcode: NOT
      size: 4
      address: 142652
    - index: 10
      opcode: ANDr
      size: 4
      address: 142656
    - index: 11
      opcode: SLr
      size: 4
      address: 142660
    - index: 12
      opcode: ADDr
      size: 4
      address: 142664
    - index: 13
      opcode: ADDi
      size: 4
      address: 142668
    - index: 14
      opcode: CMPLT
      size: 4
      address: 142672
    - index: 15
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 142676
    - index: 16
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142680
    - index: 17
      opcode: ADDi
      size: 4
      address: 142684
    - index: 18
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 6
      address: 142688
    address: 142608
  - name: 6
    mapsto: for.end10
    predecessors:
    - 3
    - 5
    successors:
    - 7
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 142708
    - index: 1
      opcode: CALLND
      callees:
      - ipv4_compute_checksum
      size: 4
      branch-type: call
      address: 142712
    - index: 2
      opcode: SENSi
      size: 4
      stack-cache-argument: 24
      address: 142716
    - index: 3
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142720
    - index: 4
      opcode: SRi
      size: 4
      address: 142724
    - index: 5
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142728
    - index: 6
      opcode: SLr
      size: 4
      address: 142732
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142736
    - index: 8
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142740
    - index: 9
      opcode: NOP
      size: 4
      address: 142744
    - index: 10
      opcode: ANDr
      size: 4
      address: 142748
    - index: 11
      opcode: ADDr
      size: 4
      address: 142752
    - index: 12
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142756
    - index: 13
      opcode: ANDi
      size: 4
      address: 142760
    - index: 14
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142764
    - index: 15
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142768
    - index: 16
      opcode: SLr
      size: 4
      address: 142772
    - index: 17
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142776
    - index: 18
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142780
    - index: 19
      opcode: NOP
      size: 4
      address: 142784
    - index: 20
      opcode: ANDr
      size: 4
      address: 142788
    - index: 21
      opcode: CALL
      callees:
      - udp_compute_checksum
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 142792
    - index: 22
      opcode: ADDr
      size: 4
      address: 142796
    - index: 23
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142800
    - index: 24
      opcode: MOV
      size: 4
      address: 142804
    - index: 25
      opcode: SENSi
      size: 4
      stack-cache-argument: 24
      address: 142808
    - index: 26
      opcode: SRi
      size: 4
      address: 142812
    - index: 27
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142816
    - index: 28
      opcode: SLr
      size: 4
      address: 142820
    - index: 29
      opcode: ANDr
      size: 4
      address: 142824
    - index: 30
      opcode: ADDr
      size: 4
      address: 142828
    - index: 31
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142832
    - index: 32
      opcode: ANDi
      size: 4
      address: 142836
    - index: 33
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142840
    - index: 34
      opcode: SLr
      size: 4
      address: 142844
    - index: 35
      opcode: ANDr
      size: 4
      address: 142848
    - index: 36
      opcode: ADDr
      size: 4
      address: 142852
    - index: 37
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142856
    - index: 38
      opcode: LIi
      size: 4
      address: 142860
    - index: 39
      opcode: LIl
      size: 8
      address: 142864
    - index: 40
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142872
    - index: 41
      opcode: SLi
      size: 4
      address: 142876
    - index: 42
      opcode: ADDl
      size: 8
      address: 142880
    - index: 43
      opcode: ORl
      size: 8
      address: 142888
    - index: 44
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 7
      address: 142896
    - index: 45
      opcode: LIl
      size: 8
      address: 142900
    - index: 46
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142908
    - index: 47
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 142912
    address: 142708
  - name: 7
    mapsto: while.body2.i
    predecessors:
    - 6
    - 7
    successors:
    - 7
    - 8
    loops:
    - 7
    instructions:
    - index: 0
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142932
    - index: 1
      opcode: NOP
      size: 4
      address: 142936
    - index: 2
      opcode: ISODD
      size: 4
      address: 142940
    - index: 3
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 7
      address: 142944
    address: 142932
  - name: 8
    mapsto: eth_mac_send.exit
    predecessors:
    - 7
    successors: []
    instructions:
    - index: 0
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142948
    - index: 1
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142952
    - index: 2
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142956
    - index: 3
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142960
    - index: 4
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142964
    - index: 5
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142968
    - index: 6
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142972
    - index: 7
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142976
    - index: 8
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142980
    - index: 9
      opcode: MTS
      size: 4
      address: 142984
    - index: 10
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 142988
    - index: 11
      opcode: NOP
      size: 4
      address: 142992
    - index: 12
      opcode: MTS
      size: 4
      address: 142996
    - index: 13
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 143000
    - index: 14
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 143004
    - index: 15
      opcode: LIi
      size: 4
      address: 143008
    - index: 16
      opcode: MTS
      size: 4
      address: 143012
    - index: 17
      opcode: SFREEi
      size: 4
      stack-cache-argument: 24
      address: 143016
    address: 142948
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
    - 8
- name: 14
  level: machinecode
  mapsto: ipv4_compute_checksum
  arguments:
  - name: "%pkt_addr"
    index: 0
    registers:
    - r3
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 137476
    - index: 1
      opcode: MOV
      size: 4
      address: 137480
    - index: 2
      opcode: LIi
      size: 4
      address: 137484
    - index: 3
      opcode: SLi
      size: 4
      address: 137488
    - index: 4
      opcode: ADDi
      size: 4
      address: 137492
    - index: 5
      opcode: MFS
      size: 4
      address: 137496
    address: 137476
  - name: 1
    mapsto: for.body
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
      opcode: SUBi
      size: 4
      address: 137500
    - index: 1
      opcode: NOT
      size: 4
      address: 137504
    - index: 2
      opcode: ADDr
      size: 4
      address: 137508
    - index: 3
      opcode: ANDi
      size: 4
      address: 137512
    - index: 4
      opcode: ADDi
      size: 4
      address: 137516
    - index: 5
      opcode: ANDl
      size: 8
      address: 137520
    - index: 6
      opcode: ADDl
      size: 8
      address: 137528
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137536
    - index: 8
      opcode: SLr
      size: 4
      address: 137540
    - index: 9
      opcode: ANDr
      size: 4
      address: 137544
    - index: 10
      opcode: SRr
      size: 4
      address: 137548
    - index: 11
      opcode: SLi
      size: 4
      address: 137552
    - index: 12
      opcode: ADDr
      size: 4
      address: 137556
    - index: 13
      opcode: ADDi
      size: 4
      address: 137560
    - index: 14
      opcode: ANDl
      size: 8
      address: 137564
    - index: 15
      opcode: ADDl
      size: 8
      address: 137572
    - index: 16
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137580
    - index: 17
      opcode: NOT
      size: 4
      address: 137584
    - index: 18
      opcode: ANDi
      size: 4
      address: 137588
    - index: 19
      opcode: SLr
      size: 4
      address: 137592
    - index: 20
      opcode: ANDr
      size: 4
      address: 137596
    - index: 21
      opcode: SRr
      size: 4
      address: 137600
    - index: 22
      opcode: ANDi
      size: 4
      address: 137604
    - index: 23
      opcode: ADDi
      size: 4
      address: 137608
    - index: 24
      opcode: CMPILT
      size: 4
      address: 137612
    - index: 25
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 137616
    - index: 26
      opcode: ADDr
      size: 4
      address: 137620
    - index: 27
      opcode: ADDi
      size: 4
      address: 137624
    address: 137500
  - name: 2
    mapsto: for.end
    predecessors:
    - 1
    successors:
    - 3
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 137628
    - index: 1
      opcode: ANDl
      size: 8
      address: 137632
    - index: 2
      opcode: SLi
      size: 4
      address: 137640
    - index: 3
      opcode: NOT
      size: 4
      address: 137644
    - index: 4
      opcode: ANDi
      size: 4
      address: 137648
    - index: 5
      opcode: LIi
      size: 4
      address: 137652
    - index: 6
      opcode: ADDl
      size: 8
      address: 137656
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137664
    - index: 8
      opcode: SLr
      size: 4
      address: 137668
    - index: 9
      opcode: ANDr
      size: 4
      address: 137672
    - index: 10
      opcode: SRr
      size: 4
      address: 137676
    - index: 11
      opcode: SLi
      size: 4
      address: 137680
    - index: 12
      opcode: SUBr
      size: 4
      address: 137684
    - index: 13
      opcode: ADDi
      size: 4
      address: 137688
    - index: 14
      opcode: SLi
      size: 4
      address: 137692
    - index: 15
      opcode: NOT
      size: 4
      address: 137696
    - index: 16
      opcode: ANDi
      size: 4
      address: 137700
    - index: 17
      opcode: ANDl
      size: 8
      address: 137704
    - index: 18
      opcode: ADDl
      size: 8
      address: 137712
    - index: 19
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 137720
    - index: 20
      opcode: SLr
      size: 4
      address: 137724
    - index: 21
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 3
      address: 137728
    - index: 22
      opcode: ANDr
      size: 4
      address: 137732
    - index: 23
      opcode: SRr
      size: 4
      address: 137736
    - index: 24
      opcode: ANDi
      size: 4
      address: 137740
    address: 137628
  - name: 3
    mapsto: while.cond
    predecessors:
    - 2
    - 4
    successors:
    - 5
    - 4
    loops:
    - 3
    instructions:
    - index: 0
      opcode: ADDr
      size: 4
      address: 137748
    - index: 1
      opcode: SRi
      size: 4
      address: 137752
    - index: 2
      opcode: CMPIEQ
      size: 4
      address: 137756
    - index: 3
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 4
      address: 137760
    - index: 4
      opcode: BRNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 5
      address: 137764
    address: 137748
  - name: 4
    mapsto: while.body
    predecessors:
    - 3
    successors:
    - 3
    loops:
    - 3
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 137768
    - index: 1
      opcode: ANDl
      size: 8
      address: 137772
    - index: 2
      opcode: NOP
      size: 4
      address: 137780
    address: 137768
  - name: 5
    mapsto: while.end
    predecessors:
    - 3
    successors: []
    instructions:
    - index: 0
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 137784
    - index: 1
      opcode: NOT
      size: 4
      address: 137788
    - index: 2
      opcode: ANDl
      size: 8
      address: 137792
    - index: 3
      opcode: MTS
      size: 4
      address: 137800
    address: 137784
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
  - name: 3
    blocks:
    - 3
    - 4
    - 5
- name: 21
  level: machinecode
  mapsto: udp_compute_checksum
  arguments:
  - name: "%pkt_addr"
    index: 0
    registers:
    - r3
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
      opcode: ADDi
      size: 4
      address: 139844
    - index: 1
      opcode: ANDl
      size: 8
      address: 139848
    - index: 2
      opcode: ADDl
      size: 8
      address: 139856
    - index: 3
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139864
    - index: 4
      opcode: MFS
      size: 4
      address: 139868
    - index: 5
      opcode: ISODD
      size: 4
      address: 139872
    - index: 6
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 139876
    - index: 7
      opcode: NOP
      size: 4
      address: 139880
    - index: 8
      opcode: ANDl
      size: 8
      address: 139884
    address: 139844
  - name: 1
    mapsto: if.else
    predecessors:
    - 0
    successors:
    - 2
    instructions:
    - index: 0
      opcode: ADDr
      size: 4
      address: 139892
    - index: 1
      opcode: ADDi
      size: 4
      address: 139896
    - index: 2
      opcode: SLi
      size: 4
      address: 139900
    - index: 3
      opcode: NOT
      size: 4
      address: 139904
    - index: 4
      opcode: LIi
      size: 4
      address: 139908
    - index: 5
      opcode: ANDi
      size: 4
      address: 139912
    - index: 6
      opcode: SLr
      size: 4
      address: 139916
    - index: 7
      opcode: ANDl
      size: 8
      address: 139920
    - index: 8
      opcode: ADDl
      size: 8
      address: 139928
    - index: 9
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139936
    - index: 10
      opcode: NOT
      size: 4
      address: 139940
    - index: 11
      opcode: ANDr
      size: 4
      address: 139944
    - index: 12
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 139948
    - index: 13
      opcode: ADDi
      size: 4
      address: 139952
    address: 139892
  - name: 2
    mapsto: if.end
    predecessors:
    - 1
    - 0
    successors:
    - 5
    - 3
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 139956
    - index: 1
      opcode: ANDl
      size: 8
      address: 139960
    - index: 2
      opcode: CMPIEQ
      size: 4
      address: 139968
    - index: 3
      opcode: BRCFND
      size: 4
      branch-type: conditional
      branch-targets:
      - 5
      address: 139972
    address: 139956
  - name: 3
    mapsto: for.body.lr.ph
    predecessors:
    - 2
    successors:
    - 4
    instructions:
    - index: 0
      opcode: SLi
      size: 4
      address: 139976
    - index: 1
      opcode: ADDi
      size: 4
      address: 139980
    - index: 2
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 4
      address: 139984
    - index: 3
      opcode: MOV
      size: 4
      address: 139988
    - index: 4
      opcode: LIi
      size: 4
      address: 139992
    - index: 5
      opcode: MOV
      size: 4
      address: 139996
    address: 139976
  - name: 4
    mapsto: for.body
    predecessors:
    - 3
    - 4
    successors:
    - 4
    - 5
    loops:
    - 4
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 140004
    - index: 1
      opcode: NOT
      size: 4
      address: 140008
    - index: 2
      opcode: ADDr
      size: 4
      address: 140012
    - index: 3
      opcode: ANDi
      size: 4
      address: 140016
    - index: 4
      opcode: ADDi
      size: 4
      address: 140020
    - index: 5
      opcode: ANDl
      size: 8
      address: 140024
    - index: 6
      opcode: ADDl
      size: 8
      address: 140032
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140040
    - index: 8
      opcode: SLr
      size: 4
      address: 140044
    - index: 9
      opcode: ANDr
      size: 4
      address: 140048
    - index: 10
      opcode: SRr
      size: 4
      address: 140052
    - index: 11
      opcode: SLi
      size: 4
      address: 140056
    - index: 12
      opcode: ADDr
      size: 4
      address: 140060
    - index: 13
      opcode: ADDi
      size: 4
      address: 140064
    - index: 14
      opcode: ANDl
      size: 8
      address: 140068
    - index: 15
      opcode: ADDl
      size: 8
      address: 140076
    - index: 16
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140084
    - index: 17
      opcode: NOT
      size: 4
      address: 140088
    - index: 18
      opcode: ANDi
      size: 4
      address: 140092
    - index: 19
      opcode: SLr
      size: 4
      address: 140096
    - index: 20
      opcode: ANDr
      size: 4
      address: 140100
    - index: 21
      opcode: SRr
      size: 4
      address: 140104
    - index: 22
      opcode: ANDi
      size: 4
      address: 140108
    - index: 23
      opcode: ADDi
      size: 4
      address: 140112
    - index: 24
      opcode: CMPLT
      size: 4
      address: 140116
    - index: 25
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 140120
    - index: 26
      opcode: ADDr
      size: 4
      address: 140124
    - index: 27
      opcode: ADDi
      size: 4
      address: 140128
    - index: 28
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 5
      address: 140132
    address: 140004
  - name: 5
    mapsto: for.end
    predecessors:
    - 2
    - 4
    successors:
    - 7
    - 6
    instructions:
    - index: 0
      opcode: LIi
      size: 4
      address: 140148
    - index: 1
      opcode: ADDi
      size: 4
      address: 140152
    - index: 2
      opcode: ANDl
      size: 8
      address: 140156
    - index: 3
      opcode: SLi
      size: 4
      address: 140164
    - index: 4
      opcode: NOT
      size: 4
      address: 140168
    - index: 5
      opcode: ANDi
      size: 4
      address: 140172
    - index: 6
      opcode: ADDl
      size: 8
      address: 140176
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140184
    - index: 8
      opcode: SLr
      size: 4
      address: 140188
    - index: 9
      opcode: ANDr
      size: 4
      address: 140192
    - index: 10
      opcode: SRr
      size: 4
      address: 140196
    - index: 11
      opcode: SLi
      size: 4
      address: 140200
    - index: 12
      opcode: SUBr
      size: 4
      address: 140204
    - index: 13
      opcode: ADDi
      size: 4
      address: 140208
    - index: 14
      opcode: ANDl
      size: 8
      address: 140212
    - index: 15
      opcode: SLi
      size: 4
      address: 140220
    - index: 16
      opcode: NOT
      size: 4
      address: 140224
    - index: 17
      opcode: ANDi
      size: 4
      address: 140228
    - index: 18
      opcode: ADDl
      size: 8
      address: 140232
    - index: 19
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140240
    - index: 20
      opcode: SLr
      size: 4
      address: 140244
    - index: 21
      opcode: ANDr
      size: 4
      address: 140248
    - index: 22
      opcode: SRr
      size: 4
      address: 140252
    - index: 23
      opcode: ANDi
      size: 4
      address: 140256
    - index: 24
      opcode: ADDr
      size: 4
      address: 140260
    - index: 25
      opcode: ADDi
      size: 4
      address: 140264
    - index: 26
      opcode: ANDl
      size: 8
      address: 140268
    - index: 27
      opcode: ADDl
      size: 8
      address: 140276
    - index: 28
      opcode: ADDi
      size: 4
      address: 140284
    - index: 29
      opcode: ANDl
      size: 8
      address: 140288
    - index: 30
      opcode: ADDl
      size: 8
      address: 140296
    - index: 31
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140304
    - index: 32
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140308
    - index: 33
      opcode: SLi
      size: 4
      address: 140312
    - index: 34
      opcode: NOT
      size: 4
      address: 140316
    - index: 35
      opcode: ANDi
      size: 4
      address: 140320
    - index: 36
      opcode: SLr
      size: 4
      address: 140324
    - index: 37
      opcode: ANDr
      size: 4
      address: 140328
    - index: 38
      opcode: SRr
      size: 4
      address: 140332
    - index: 39
      opcode: ANDi
      size: 4
      address: 140336
    - index: 40
      opcode: ADDr
      size: 4
      address: 140340
    - index: 41
      opcode: SLi
      size: 4
      address: 140344
    - index: 42
      opcode: NOT
      size: 4
      address: 140348
    - index: 43
      opcode: ANDi
      size: 4
      address: 140352
    - index: 44
      opcode: SLr
      size: 4
      address: 140356
    - index: 45
      opcode: ANDr
      size: 4
      address: 140360
    - index: 46
      opcode: ADDi
      size: 4
      address: 140364
    - index: 47
      opcode: SLi
      size: 4
      address: 140368
    - index: 48
      opcode: ANDl
      size: 8
      address: 140372
    - index: 49
      opcode: ADDl
      size: 8
      address: 140380
    - index: 50
      opcode: ADDi
      size: 4
      address: 140388
    - index: 51
      opcode: ANDl
      size: 8
      address: 140392
    - index: 52
      opcode: ADDl
      size: 8
      address: 140400
    - index: 53
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140408
    - index: 54
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140412
    - index: 55
      opcode: NOT
      size: 4
      address: 140416
    - index: 56
      opcode: ANDi
      size: 4
      address: 140420
    - index: 57
      opcode: SLr
      size: 4
      address: 140424
    - index: 58
      opcode: ANDr
      size: 4
      address: 140428
    - index: 59
      opcode: SRr
      size: 4
      address: 140432
    - index: 60
      opcode: ANDi
      size: 4
      address: 140436
    - index: 61
      opcode: ADDr
      size: 4
      address: 140440
    - index: 62
      opcode: SRr
      size: 4
      address: 140444
    - index: 63
      opcode: SLi
      size: 4
      address: 140448
    - index: 64
      opcode: NOT
      size: 4
      address: 140452
    - index: 65
      opcode: ANDi
      size: 4
      address: 140456
    - index: 66
      opcode: SLr
      size: 4
      address: 140460
    - index: 67
      opcode: ANDr
      size: 4
      address: 140464
    - index: 68
      opcode: SRr
      size: 4
      address: 140468
    - index: 69
      opcode: ADDr
      size: 4
      address: 140472
    - index: 70
      opcode: SLi
      size: 4
      address: 140476
    - index: 71
      opcode: ADDr
      size: 4
      address: 140480
    - index: 72
      opcode: ADDi
      size: 4
      address: 140484
    - index: 73
      opcode: SLi
      size: 4
      address: 140488
    - index: 74
      opcode: NOT
      size: 4
      address: 140492
    - index: 75
      opcode: ANDi
      size: 4
      address: 140496
    - index: 76
      opcode: ADDi
      size: 4
      address: 140500
    - index: 77
      opcode: ANDl
      size: 8
      address: 140504
    - index: 78
      opcode: ADDl
      size: 8
      address: 140512
    - index: 79
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140520
    - index: 80
      opcode: ANDl
      size: 8
      address: 140524
    - index: 81
      opcode: ADDl
      size: 8
      address: 140532
    - index: 82
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140540
    - index: 83
      opcode: SLr
      size: 4
      address: 140544
    - index: 84
      opcode: ANDr
      size: 4
      address: 140548
    - index: 85
      opcode: SRr
      size: 4
      address: 140552
    - index: 86
      opcode: ANDi
      size: 4
      address: 140556
    - index: 87
      opcode: ADDr
      size: 4
      address: 140560
    - index: 88
      opcode: SLi
      size: 4
      address: 140564
    - index: 89
      opcode: NOT
      size: 4
      address: 140568
    - index: 90
      opcode: ANDi
      size: 4
      address: 140572
    - index: 91
      opcode: SLr
      size: 4
      address: 140576
    - index: 92
      opcode: ANDr
      size: 4
      address: 140580
    - index: 93
      opcode: ADDi
      size: 4
      address: 140584
    - index: 94
      opcode: SLi
      size: 4
      address: 140588
    - index: 95
      opcode: NOT
      size: 4
      address: 140592
    - index: 96
      opcode: ANDi
      size: 4
      address: 140596
    - index: 97
      opcode: ADDi
      size: 4
      address: 140600
    - index: 98
      opcode: ANDl
      size: 8
      address: 140604
    - index: 99
      opcode: ADDl
      size: 8
      address: 140612
    - index: 100
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140620
    - index: 101
      opcode: ANDl
      size: 8
      address: 140624
    - index: 102
      opcode: ADDl
      size: 8
      address: 140632
    - index: 103
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 140640
    - index: 104
      opcode: SLr
      size: 4
      address: 140644
    - index: 105
      opcode: ANDr
      size: 4
      address: 140648
    - index: 106
      opcode: SRr
      size: 4
      address: 140652
    - index: 107
      opcode: ANDi
      size: 4
      address: 140656
    - index: 108
      opcode: ADDr
      size: 4
      address: 140660
    - index: 109
      opcode: SRr
      size: 4
      address: 140664
    - index: 110
      opcode: SLi
      size: 4
      address: 140668
    - index: 111
      opcode: NOT
      size: 4
      address: 140672
    - index: 112
      opcode: ANDi
      size: 4
      address: 140676
    - index: 113
      opcode: SLr
      size: 4
      address: 140680
    - index: 114
      opcode: ANDr
      size: 4
      address: 140684
    - index: 115
      opcode: SRr
      size: 4
      address: 140688
    - index: 116
      opcode: ADDr
      size: 4
      address: 140692
    - index: 117
      opcode: SLi
      size: 4
      address: 140696
    - index: 118
      opcode: ADDr
      size: 4
      address: 140700
    - index: 119
      opcode: ADDr
      size: 4
      address: 140704
    - index: 120
      opcode: ADDi
      size: 4
      address: 140708
    - index: 121
      opcode: SRi
      size: 4
      address: 140712
    - index: 122
      opcode: CMPIEQ
      size: 4
      address: 140716
    - index: 123
      opcode: BRCFND
      size: 4
      branch-type: conditional
      branch-targets:
      - 7
      address: 140720
    - index: 124
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 6
      address: 140724
    address: 140148
  - name: 6
    mapsto: while.body
    predecessors:
    - 6
    - 5
    successors:
    - 7
    - 6
    loops:
    - 6
    instructions:
    - index: 0
      opcode: ANDl
      size: 8
      address: 140740
    - index: 1
      opcode: ADDr
      size: 4
      address: 140748
    - index: 2
      opcode: SRi
      size: 4
      address: 140752
    - index: 3
      opcode: MOVrp
      size: 4
      address: 140756
    - index: 4
      opcode: BRND
      size: 4
      branch-type: conditional
      branch-targets:
      - 6
      address: 140760
    - index: 5
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 7
      address: 140764
    address: 140740
  - name: 7
    mapsto: while.end
    predecessors:
    - 6
    - 5
    successors: []
    instructions:
    - index: 0
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 140772
    - index: 1
      opcode: NOT
      size: 4
      address: 140776
    - index: 2
      opcode: ANDl
      size: 8
      address: 140780
    - index: 3
      opcode: MTS
      size: 4
      address: 140788
    address: 140772
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
  - name: 4
    blocks:
    - 4
  - name: 5
    blocks:
    - 5
  - name: 6
    blocks:
    - 6
  - name: 7
    blocks:
    - 7
bitcode-functions:
- name: ptpv2_issue_msg
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - sw.epilog
    - sw.epilog.thread1
    - sw.bb1
    - sw.epilog.thread2
    - sw.bb3
    instructions:
    - index: 0
      opcode: alloca
    - index: 1
      opcode: icmp
    - index: 2
      opcode: select
    - index: 3
      opcode: bitcast
    - index: 4
      opcode: call
    - index: 5
      opcode: trunc
    - index: 6
      opcode: store
      memmode: store
    - index: 7
      opcode: getelementptr
    - index: 8
      opcode: store
      memmode: store
    - index: 9
      opcode: getelementptr
    - index: 10
      opcode: store
      memmode: store
    - index: 11
      opcode: trunc
    - index: 12
      opcode: getelementptr
    - index: 13
      opcode: store
      memmode: store
    - index: 14
      opcode: trunc
    - index: 15
      opcode: getelementptr
    - index: 16
      opcode: store
      memmode: store
    - index: 17
      opcode: getelementptr
    - index: 18
      opcode: store
      memmode: store
    - index: 19
      opcode: switch
  - name: sw.epilog.thread1
    predecessors:
    - entry
    successors:
    - while.cond
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: load
      memmode: load
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: store
      memmode: store
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: getelementptr
    - index: 6
      opcode: store
      memmode: store
    - index: 7
      opcode: call
      callees:
      - udp_send_mac
    - index: 8
      opcode: br
  - name: sw.bb1
    predecessors:
    - entry
    successors:
    - sw.epilog.thread
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: getelementptr
    - index: 2
      opcode: store
      memmode: store
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: getelementptr
    - index: 5
      opcode: store
      memmode: store
    - index: 6
      opcode: br
  - name: sw.epilog.thread2
    predecessors:
    - entry
    successors:
    - while.cond5
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: load
      memmode: load
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: store
      memmode: store
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: getelementptr
    - index: 6
      opcode: store
      memmode: store
    - index: 7
      opcode: call
      callees:
      - udp_send_mac
    - index: 8
      opcode: br
  - name: sw.bb3
    predecessors:
    - entry
    successors:
    - sw.epilog.thread
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: getelementptr
    - index: 2
      opcode: store
      memmode: store
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: getelementptr
    - index: 5
      opcode: store
      memmode: store
    - index: 6
      opcode: br
  - name: sw.epilog.thread
    predecessors:
    - sw.bb3
    - sw.bb1
    successors:
    - if.end8
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: call
      callees:
      - udp_send_mac
    - index: 2
      opcode: br
  - name: sw.epilog
    predecessors:
    - entry
    successors:
    - if.end8
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: call
      callees:
      - udp_send_mac
    - index: 2
      opcode: br
  - name: while.cond
    predecessors:
    - while.cond
    - sw.epilog.thread1
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
    - if.end8
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
      opcode: br
  - name: while.cond5
    predecessors:
    - while.cond5
    - sw.epilog.thread2
    successors:
    - while.cond5
    - while.end7
    loops:
    - while.cond5
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
  - name: while.end7
    predecessors:
    - while.cond5
    successors:
    - if.end8
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
      opcode: br
  - name: if.end8
    predecessors:
    - while.end7
    - while.end
    - sw.epilog
    - sw.epilog.thread
    successors: []
    instructions:
    - index: 0
      opcode: bitcast
    - index: 1
      opcode: call
    - index: 2
      opcode: ret
- name: udp_send_mac
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.body
    instructions:
    - index: 0
      opcode: zext
    - index: 1
      opcode: add
    - index: 2
      opcode: mul
    - index: 3
      opcode: add
    - index: 4
      opcode: br
  - name: for.body
    predecessors:
    - for.body
    - entry
    successors:
    - for.end
    - for.body
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: zext
    - index: 5
      opcode: add
    - index: 6
      opcode: lshr
    - index: 7
      opcode: getelementptr
    - index: 8
      opcode: load
      memmode: load
    - index: 9
      opcode: add
    - index: 10
      opcode: and
    - index: 11
      opcode: xor
    - index: 12
      opcode: shl
    - index: 13
      opcode: xor
    - index: 14
      opcode: shl
    - index: 15
      opcode: and
    - index: 16
      opcode: add
    - index: 17
      opcode: store
      memmode: store
    - index: 18
      opcode: getelementptr
    - index: 19
      opcode: load
      memmode: load
    - index: 20
      opcode: zext
    - index: 21
      opcode: add
    - index: 22
      opcode: add
    - index: 23
      opcode: lshr
    - index: 24
      opcode: getelementptr
    - index: 25
      opcode: load
      memmode: load
    - index: 26
      opcode: and
    - index: 27
      opcode: xor
    - index: 28
      opcode: shl
    - index: 29
      opcode: xor
    - index: 30
      opcode: shl
    - index: 31
      opcode: and
    - index: 32
      opcode: add
    - index: 33
      opcode: store
      memmode: store
    - index: 34
      opcode: add
    - index: 35
      opcode: add
    - index: 36
      opcode: icmp
    - index: 37
      opcode: br
  - name: for.end
    predecessors:
    - for.body
    successors:
    - for.end10
    - for.body8.lr.ph
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: add
    - index: 2
      opcode: lshr
    - index: 3
      opcode: getelementptr
    - index: 4
      opcode: store
      memmode: store
    - index: 5
      opcode: add
    - index: 6
      opcode: lshr
    - index: 7
      opcode: and
    - index: 8
      opcode: lshr
    - index: 9
      opcode: getelementptr
    - index: 10
      opcode: load
      memmode: load
    - index: 11
      opcode: shl
    - index: 12
      opcode: and
    - index: 13
      opcode: xor
    - index: 14
      opcode: shl
    - index: 15
      opcode: xor
    - index: 16
      opcode: shl
    - index: 17
      opcode: and
    - index: 18
      opcode: add
    - index: 19
      opcode: store
      memmode: store
    - index: 20
      opcode: add
    - index: 21
      opcode: and
    - index: 22
      opcode: lshr
    - index: 23
      opcode: getelementptr
    - index: 24
      opcode: load
      memmode: load
    - index: 25
      opcode: shl
    - index: 26
      opcode: and
    - index: 27
      opcode: xor
    - index: 28
      opcode: shl
    - index: 29
      opcode: xor
    - index: 30
      opcode: shl
    - index: 31
      opcode: and
    - index: 32
      opcode: add
    - index: 33
      opcode: store
      memmode: store
    - index: 34
      opcode: load
      memmode: load
    - index: 35
      opcode: add
    - index: 36
      opcode: store
      memmode: store
    - index: 37
      opcode: add
    - index: 38
      opcode: zext
    - index: 39
      opcode: lshr
    - index: 40
      opcode: lshr
    - index: 41
      opcode: getelementptr
    - index: 42
      opcode: load
      memmode: load
    - index: 43
      opcode: shl
    - index: 44
      opcode: and
    - index: 45
      opcode: xor
    - index: 46
      opcode: shl
    - index: 47
      opcode: xor
    - index: 48
      opcode: shl
    - index: 49
      opcode: and
    - index: 50
      opcode: add
    - index: 51
      opcode: store
      memmode: store
    - index: 52
      opcode: add
    - index: 53
      opcode: load
      memmode: load
    - index: 54
      opcode: zext
    - index: 55
      opcode: and
    - index: 56
      opcode: lshr
    - index: 57
      opcode: getelementptr
    - index: 58
      opcode: load
      memmode: load
    - index: 59
      opcode: shl
    - index: 60
      opcode: and
    - index: 61
      opcode: xor
    - index: 62
      opcode: shl
    - index: 63
      opcode: xor
    - index: 64
      opcode: shl
    - index: 65
      opcode: and
    - index: 66
      opcode: add
    - index: 67
      opcode: store
      memmode: store
    - index: 68
      opcode: add
    - index: 69
      opcode: lshr
    - index: 70
      opcode: getelementptr
    - index: 71
      opcode: store
      memmode: store
    - index: 72
      opcode: add
    - index: 73
      opcode: lshr
    - index: 74
      opcode: getelementptr
    - index: 75
      opcode: load
      memmode: load
    - index: 76
      opcode: shl
    - index: 77
      opcode: and
    - index: 78
      opcode: xor
    - index: 79
      opcode: shl
    - index: 80
      opcode: xor
    - index: 81
      opcode: and
    - index: 82
      opcode: store
      memmode: store
    - index: 83
      opcode: add
    - index: 84
      opcode: lshr
    - index: 85
      opcode: getelementptr
    - index: 86
      opcode: load
      memmode: load
    - index: 87
      opcode: shl
    - index: 88
      opcode: and
    - index: 89
      opcode: xor
    - index: 90
      opcode: shl
    - index: 91
      opcode: xor
    - index: 92
      opcode: and
    - index: 93
      opcode: store
      memmode: store
    - index: 94
      opcode: add
    - index: 95
      opcode: add
    - index: 96
      opcode: load
      memmode: load
    - index: 97
      opcode: zext
    - index: 98
      opcode: lshr
    - index: 99
      opcode: getelementptr
    - index: 100
      opcode: load
      memmode: load
    - index: 101
      opcode: shl
    - index: 102
      opcode: and
    - index: 103
      opcode: xor
    - index: 104
      opcode: shl
    - index: 105
      opcode: xor
    - index: 106
      opcode: shl
    - index: 107
      opcode: and
    - index: 108
      opcode: add
    - index: 109
      opcode: store
      memmode: store
    - index: 110
      opcode: load
      memmode: load
    - index: 111
      opcode: zext
    - index: 112
      opcode: lshr
    - index: 113
      opcode: getelementptr
    - index: 114
      opcode: load
      memmode: load
    - index: 115
      opcode: shl
    - index: 116
      opcode: and
    - index: 117
      opcode: xor
    - index: 118
      opcode: shl
    - index: 119
      opcode: xor
    - index: 120
      opcode: shl
    - index: 121
      opcode: and
    - index: 122
      opcode: add
    - index: 123
      opcode: store
      memmode: store
    - index: 124
      opcode: add
    - index: 125
      opcode: load
      memmode: load
    - index: 126
      opcode: zext
    - index: 127
      opcode: lshr
    - index: 128
      opcode: getelementptr
    - index: 129
      opcode: load
      memmode: load
    - index: 130
      opcode: shl
    - index: 131
      opcode: and
    - index: 132
      opcode: xor
    - index: 133
      opcode: shl
    - index: 134
      opcode: xor
    - index: 135
      opcode: shl
    - index: 136
      opcode: and
    - index: 137
      opcode: add
    - index: 138
      opcode: store
      memmode: store
    - index: 139
      opcode: add
    - index: 140
      opcode: getelementptr
    - index: 141
      opcode: load
      memmode: load
    - index: 142
      opcode: zext
    - index: 143
      opcode: lshr
    - index: 144
      opcode: getelementptr
    - index: 145
      opcode: load
      memmode: load
    - index: 146
      opcode: shl
    - index: 147
      opcode: and
    - index: 148
      opcode: xor
    - index: 149
      opcode: shl
    - index: 150
      opcode: xor
    - index: 151
      opcode: shl
    - index: 152
      opcode: and
    - index: 153
      opcode: add
    - index: 154
      opcode: store
      memmode: store
    - index: 155
      opcode: add
    - index: 156
      opcode: load
      memmode: load
    - index: 157
      opcode: zext
    - index: 158
      opcode: lshr
    - index: 159
      opcode: getelementptr
    - index: 160
      opcode: load
      memmode: load
    - index: 161
      opcode: shl
    - index: 162
      opcode: and
    - index: 163
      opcode: xor
    - index: 164
      opcode: shl
    - index: 165
      opcode: xor
    - index: 166
      opcode: shl
    - index: 167
      opcode: and
    - index: 168
      opcode: add
    - index: 169
      opcode: store
      memmode: store
    - index: 170
      opcode: add
    - index: 171
      opcode: getelementptr
    - index: 172
      opcode: load
      memmode: load
    - index: 173
      opcode: zext
    - index: 174
      opcode: lshr
    - index: 175
      opcode: getelementptr
    - index: 176
      opcode: load
      memmode: load
    - index: 177
      opcode: shl
    - index: 178
      opcode: and
    - index: 179
      opcode: xor
    - index: 180
      opcode: shl
    - index: 181
      opcode: xor
    - index: 182
      opcode: shl
    - index: 183
      opcode: and
    - index: 184
      opcode: add
    - index: 185
      opcode: store
      memmode: store
    - index: 186
      opcode: add
    - index: 187
      opcode: load
      memmode: load
    - index: 188
      opcode: zext
    - index: 189
      opcode: lshr
    - index: 190
      opcode: getelementptr
    - index: 191
      opcode: load
      memmode: load
    - index: 192
      opcode: shl
    - index: 193
      opcode: and
    - index: 194
      opcode: xor
    - index: 195
      opcode: shl
    - index: 196
      opcode: xor
    - index: 197
      opcode: shl
    - index: 198
      opcode: and
    - index: 199
      opcode: add
    - index: 200
      opcode: store
      memmode: store
    - index: 201
      opcode: add
    - index: 202
      opcode: getelementptr
    - index: 203
      opcode: load
      memmode: load
    - index: 204
      opcode: zext
    - index: 205
      opcode: lshr
    - index: 206
      opcode: getelementptr
    - index: 207
      opcode: load
      memmode: load
    - index: 208
      opcode: shl
    - index: 209
      opcode: and
    - index: 210
      opcode: xor
    - index: 211
      opcode: shl
    - index: 212
      opcode: xor
    - index: 213
      opcode: shl
    - index: 214
      opcode: and
    - index: 215
      opcode: add
    - index: 216
      opcode: store
      memmode: store
    - index: 217
      opcode: add
    - index: 218
      opcode: zext
    - index: 219
      opcode: lshr
    - index: 220
      opcode: lshr
    - index: 221
      opcode: getelementptr
    - index: 222
      opcode: load
      memmode: load
    - index: 223
      opcode: shl
    - index: 224
      opcode: and
    - index: 225
      opcode: xor
    - index: 226
      opcode: shl
    - index: 227
      opcode: xor
    - index: 228
      opcode: shl
    - index: 229
      opcode: and
    - index: 230
      opcode: add
    - index: 231
      opcode: store
      memmode: store
    - index: 232
      opcode: add
    - index: 233
      opcode: and
    - index: 234
      opcode: lshr
    - index: 235
      opcode: getelementptr
    - index: 236
      opcode: load
      memmode: load
    - index: 237
      opcode: shl
    - index: 238
      opcode: and
    - index: 239
      opcode: xor
    - index: 240
      opcode: shl
    - index: 241
      opcode: xor
    - index: 242
      opcode: shl
    - index: 243
      opcode: and
    - index: 244
      opcode: add
    - index: 245
      opcode: store
      memmode: store
    - index: 246
      opcode: add
    - index: 247
      opcode: zext
    - index: 248
      opcode: lshr
    - index: 249
      opcode: lshr
    - index: 250
      opcode: getelementptr
    - index: 251
      opcode: load
      memmode: load
    - index: 252
      opcode: shl
    - index: 253
      opcode: and
    - index: 254
      opcode: xor
    - index: 255
      opcode: shl
    - index: 256
      opcode: xor
    - index: 257
      opcode: shl
    - index: 258
      opcode: and
    - index: 259
      opcode: add
    - index: 260
      opcode: store
      memmode: store
    - index: 261
      opcode: add
    - index: 262
      opcode: and
    - index: 263
      opcode: lshr
    - index: 264
      opcode: getelementptr
    - index: 265
      opcode: load
      memmode: load
    - index: 266
      opcode: shl
    - index: 267
      opcode: and
    - index: 268
      opcode: xor
    - index: 269
      opcode: shl
    - index: 270
      opcode: xor
    - index: 271
      opcode: shl
    - index: 272
      opcode: and
    - index: 273
      opcode: add
    - index: 274
      opcode: store
      memmode: store
    - index: 275
      opcode: add
    - index: 276
      opcode: lshr
    - index: 277
      opcode: and
    - index: 278
      opcode: lshr
    - index: 279
      opcode: getelementptr
    - index: 280
      opcode: load
      memmode: load
    - index: 281
      opcode: shl
    - index: 282
      opcode: and
    - index: 283
      opcode: xor
    - index: 284
      opcode: shl
    - index: 285
      opcode: xor
    - index: 286
      opcode: shl
    - index: 287
      opcode: and
    - index: 288
      opcode: add
    - index: 289
      opcode: store
      memmode: store
    - index: 290
      opcode: add
    - index: 291
      opcode: and
    - index: 292
      opcode: lshr
    - index: 293
      opcode: getelementptr
    - index: 294
      opcode: load
      memmode: load
    - index: 295
      opcode: shl
    - index: 296
      opcode: and
    - index: 297
      opcode: xor
    - index: 298
      opcode: shl
    - index: 299
      opcode: xor
    - index: 300
      opcode: shl
    - index: 301
      opcode: and
    - index: 302
      opcode: add
    - index: 303
      opcode: store
      memmode: store
    - index: 304
      opcode: add
    - index: 305
      opcode: lshr
    - index: 306
      opcode: getelementptr
    - index: 307
      opcode: load
      memmode: load
    - index: 308
      opcode: shl
    - index: 309
      opcode: and
    - index: 310
      opcode: xor
    - index: 311
      opcode: shl
    - index: 312
      opcode: xor
    - index: 313
      opcode: and
    - index: 314
      opcode: store
      memmode: store
    - index: 315
      opcode: add
    - index: 316
      opcode: lshr
    - index: 317
      opcode: getelementptr
    - index: 318
      opcode: load
      memmode: load
    - index: 319
      opcode: shl
    - index: 320
      opcode: and
    - index: 321
      opcode: xor
    - index: 322
      opcode: shl
    - index: 323
      opcode: xor
    - index: 324
      opcode: and
    - index: 325
      opcode: store
      memmode: store
    - index: 326
      opcode: icmp
    - index: 327
      opcode: br
  - name: for.body8.lr.ph
    predecessors:
    - for.end
    successors:
    - for.body8
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: mul
    - index: 2
      opcode: add
    - index: 3
      opcode: br
  - name: for.body8
    predecessors:
    - for.body8
    - for.body8.lr.ph
    successors:
    - for.body8
    - for.end10
    loops:
    - for.body8
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: add
    - index: 3
      opcode: getelementptr
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: zext
    - index: 6
      opcode: lshr
    - index: 7
      opcode: getelementptr
    - index: 8
      opcode: load
      memmode: load
    - index: 9
      opcode: and
    - index: 10
      opcode: xor
    - index: 11
      opcode: shl
    - index: 12
      opcode: xor
    - index: 13
      opcode: shl
    - index: 14
      opcode: and
    - index: 15
      opcode: add
    - index: 16
      opcode: store
      memmode: store
    - index: 17
      opcode: add
    - index: 18
      opcode: add
    - index: 19
      opcode: icmp
    - index: 20
      opcode: br
  - name: for.end10
    predecessors:
    - for.body8
    - for.end
    successors:
    - while.body2.i
    instructions:
    - index: 0
      opcode: call
      callees:
      - ipv4_compute_checksum
    - index: 1
      opcode: zext
    - index: 2
      opcode: lshr
    - index: 3
      opcode: mul
    - index: 4
      opcode: add
    - index: 5
      opcode: inttoptr
    - index: 6
      opcode: load
      memmode: load
    - index: 7
      opcode: shl
    - index: 8
      opcode: and
    - index: 9
      opcode: add
    - index: 10
      opcode: store
      memmode: store
    - index: 11
      opcode: and
    - index: 12
      opcode: mul
    - index: 13
      opcode: add
    - index: 14
      opcode: inttoptr
    - index: 15
      opcode: load
      memmode: load
    - index: 16
      opcode: shl
    - index: 17
      opcode: and
    - index: 18
      opcode: add
    - index: 19
      opcode: store
      memmode: store
    - index: 20
      opcode: call
      callees:
      - udp_compute_checksum
    - index: 21
      opcode: zext
    - index: 22
      opcode: lshr
    - index: 23
      opcode: mul
    - index: 24
      opcode: add
    - index: 25
      opcode: inttoptr
    - index: 26
      opcode: load
      memmode: load
    - index: 27
      opcode: shl
    - index: 28
      opcode: and
    - index: 29
      opcode: add
    - index: 30
      opcode: store
      memmode: store
    - index: 31
      opcode: and
    - index: 32
      opcode: mul
    - index: 33
      opcode: add
    - index: 34
      opcode: inttoptr
    - index: 35
      opcode: load
      memmode: load
    - index: 36
      opcode: shl
    - index: 37
      opcode: and
    - index: 38
      opcode: add
    - index: 39
      opcode: store
      memmode: store
    - index: 40
      opcode: store
      memmode: store
    - index: 41
      opcode: store
      memmode: store
    - index: 42
      opcode: shl
    - index: 43
      opcode: add
    - index: 44
      opcode: or
    - index: 45
      opcode: store
      memmode: store
    - index: 46
      opcode: br
  - name: while.body2.i
    predecessors:
    - while.body2.i
    - for.end10
    successors:
    - while.body2.i
    - eth_mac_send.exit
    loops:
    - while.body2.i
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: and
    - index: 2
      opcode: icmp
    - index: 3
      opcode: br
  - name: eth_mac_send.exit
    predecessors:
    - while.body2.i
    successors: []
    instructions:
    - index: 0
      opcode: ret
- name: ipv4_compute_checksum
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.body
    instructions:
    - index: 0
      opcode: mul
    - index: 1
      opcode: add
    - index: 2
      opcode: br
  - name: for.body
    predecessors:
    - for.body
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: phi
    - index: 3
      opcode: add
    - index: 4
      opcode: add
    - index: 5
      opcode: lshr
    - index: 6
      opcode: getelementptr
    - index: 7
      opcode: load
      memmode: load
    - index: 8
      opcode: add
    - index: 9
      opcode: and
    - index: 10
      opcode: xor
    - index: 11
      opcode: shl
    - index: 12
      opcode: and
    - index: 13
      opcode: lshr
    - index: 14
      opcode: add
    - index: 15
      opcode: add
    - index: 16
      opcode: lshr
    - index: 17
      opcode: getelementptr
    - index: 18
      opcode: load
      memmode: load
    - index: 19
      opcode: and
    - index: 20
      opcode: xor
    - index: 21
      opcode: shl
    - index: 22
      opcode: and
    - index: 23
      opcode: lshr
    - index: 24
      opcode: shl
    - index: 25
      opcode: and
    - index: 26
      opcode: add
    - index: 27
      opcode: add
    - index: 28
      opcode: add
    - index: 29
      opcode: add
    - index: 30
      opcode: icmp
    - index: 31
      opcode: br
  - name: for.end
    predecessors:
    - for.body
    successors:
    - while.cond
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: lshr
    - index: 2
      opcode: getelementptr
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: shl
    - index: 5
      opcode: and
    - index: 6
      opcode: xor
    - index: 7
      opcode: shl
    - index: 8
      opcode: and
    - index: 9
      opcode: lshr
    - index: 10
      opcode: shl
    - index: 11
      opcode: sub
    - index: 12
      opcode: add
    - index: 13
      opcode: lshr
    - index: 14
      opcode: getelementptr
    - index: 15
      opcode: load
      memmode: load
    - index: 16
      opcode: shl
    - index: 17
      opcode: and
    - index: 18
      opcode: xor
    - index: 19
      opcode: shl
    - index: 20
      opcode: and
    - index: 21
      opcode: lshr
    - index: 22
      opcode: and
    - index: 23
      opcode: add
    - index: 24
      opcode: br
  - name: while.cond
    predecessors:
    - while.body
    - for.end
    successors:
    - while.end
    - while.body
    loops:
    - while.cond
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: call
    - index: 2
      opcode: lshr
    - index: 3
      opcode: icmp
    - index: 4
      opcode: br
  - name: while.body
    predecessors:
    - while.cond
    successors:
    - while.cond
    loops:
    - while.cond
    instructions:
    - index: 0
      opcode: and
    - index: 1
      opcode: add
    - index: 2
      opcode: br
  - name: while.end
    predecessors:
    - while.cond
    successors: []
    instructions:
    - index: 0
      opcode: xor
    - index: 1
      opcode: trunc
    - index: 2
      opcode: ret
- name: udp_compute_checksum
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.end
    - if.else
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
      opcode: and
    - index: 5
      opcode: and
    - index: 6
      opcode: icmp
    - index: 7
      opcode: br
  - name: if.else
    predecessors:
    - entry
    successors:
    - if.end
    instructions:
    - index: 0
      opcode: add
    - index: 1
      opcode: add
    - index: 2
      opcode: add
    - index: 3
      opcode: lshr
    - index: 4
      opcode: getelementptr
    - index: 5
      opcode: load
      memmode: load
    - index: 6
      opcode: shl
    - index: 7
      opcode: and
    - index: 8
      opcode: xor
    - index: 9
      opcode: shl
    - index: 10
      opcode: xor
    - index: 11
      opcode: and
    - index: 12
      opcode: store
      memmode: store
    - index: 13
      opcode: br
  - name: if.end
    predecessors:
    - if.else
    - entry
    successors:
    - for.end
    - for.body.lr.ph
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: and
    - index: 2
      opcode: icmp
    - index: 3
      opcode: br
  - name: for.body.lr.ph
    predecessors:
    - if.end
    successors:
    - for.body
    instructions:
    - index: 0
      opcode: mul
    - index: 1
      opcode: add
    - index: 2
      opcode: br
  - name: for.body
    predecessors:
    - for.body
    - for.body.lr.ph
    successors:
    - for.body
    - for.end
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: phi
    - index: 3
      opcode: add
    - index: 4
      opcode: add
    - index: 5
      opcode: lshr
    - index: 6
      opcode: getelementptr
    - index: 7
      opcode: load
      memmode: load
    - index: 8
      opcode: add
    - index: 9
      opcode: and
    - index: 10
      opcode: xor
    - index: 11
      opcode: shl
    - index: 12
      opcode: and
    - index: 13
      opcode: lshr
    - index: 14
      opcode: add
    - index: 15
      opcode: add
    - index: 16
      opcode: lshr
    - index: 17
      opcode: getelementptr
    - index: 18
      opcode: load
      memmode: load
    - index: 19
      opcode: and
    - index: 20
      opcode: xor
    - index: 21
      opcode: shl
    - index: 22
      opcode: and
    - index: 23
      opcode: lshr
    - index: 24
      opcode: shl
    - index: 25
      opcode: and
    - index: 26
      opcode: add
    - index: 27
      opcode: add
    - index: 28
      opcode: add
    - index: 29
      opcode: add
    - index: 30
      opcode: icmp
    - index: 31
      opcode: br
  - name: for.end
    predecessors:
    - for.body
    - if.end
    successors:
    - while.end
    - while.body
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: add
    - index: 2
      opcode: lshr
    - index: 3
      opcode: getelementptr
    - index: 4
      opcode: load
      memmode: load
    - index: 5
      opcode: shl
    - index: 6
      opcode: and
    - index: 7
      opcode: xor
    - index: 8
      opcode: shl
    - index: 9
      opcode: and
    - index: 10
      opcode: lshr
    - index: 11
      opcode: shl
    - index: 12
      opcode: sub
    - index: 13
      opcode: add
    - index: 14
      opcode: lshr
    - index: 15
      opcode: getelementptr
    - index: 16
      opcode: load
      memmode: load
    - index: 17
      opcode: shl
    - index: 18
      opcode: and
    - index: 19
      opcode: xor
    - index: 20
      opcode: shl
    - index: 21
      opcode: and
    - index: 22
      opcode: lshr
    - index: 23
      opcode: and
    - index: 24
      opcode: add
    - index: 25
      opcode: add
    - index: 26
      opcode: add
    - index: 27
      opcode: add
    - index: 28
      opcode: add
    - index: 29
      opcode: lshr
    - index: 30
      opcode: getelementptr
    - index: 31
      opcode: load
      memmode: load
    - index: 32
      opcode: shl
    - index: 33
      opcode: and
    - index: 34
      opcode: xor
    - index: 35
      opcode: shl
    - index: 36
      opcode: and
    - index: 37
      opcode: lshr
    - index: 38
      opcode: lshr
    - index: 39
      opcode: getelementptr
    - index: 40
      opcode: load
      memmode: load
    - index: 41
      opcode: shl
    - index: 42
      opcode: and
    - index: 43
      opcode: xor
    - index: 44
      opcode: shl
    - index: 45
      opcode: and
    - index: 46
      opcode: lshr
    - index: 47
      opcode: lshr
    - index: 48
      opcode: getelementptr
    - index: 49
      opcode: load
      memmode: load
    - index: 50
      opcode: shl
    - index: 51
      opcode: and
    - index: 52
      opcode: xor
    - index: 53
      opcode: shl
    - index: 54
      opcode: and
    - index: 55
      opcode: lshr
    - index: 56
      opcode: lshr
    - index: 57
      opcode: getelementptr
    - index: 58
      opcode: load
      memmode: load
    - index: 59
      opcode: shl
    - index: 60
      opcode: and
    - index: 61
      opcode: xor
    - index: 62
      opcode: shl
    - index: 63
      opcode: and
    - index: 64
      opcode: lshr
    - index: 65
      opcode: and
    - index: 66
      opcode: and
    - index: 67
      opcode: add
    - index: 68
      opcode: shl
    - index: 69
      opcode: add
    - index: 70
      opcode: add
    - index: 71
      opcode: add
    - index: 72
      opcode: add
    - index: 73
      opcode: lshr
    - index: 74
      opcode: getelementptr
    - index: 75
      opcode: load
      memmode: load
    - index: 76
      opcode: shl
    - index: 77
      opcode: and
    - index: 78
      opcode: xor
    - index: 79
      opcode: shl
    - index: 80
      opcode: and
    - index: 81
      opcode: lshr
    - index: 82
      opcode: add
    - index: 83
      opcode: lshr
    - index: 84
      opcode: getelementptr
    - index: 85
      opcode: load
      memmode: load
    - index: 86
      opcode: shl
    - index: 87
      opcode: and
    - index: 88
      opcode: xor
    - index: 89
      opcode: shl
    - index: 90
      opcode: and
    - index: 91
      opcode: lshr
    - index: 92
      opcode: add
    - index: 93
      opcode: lshr
    - index: 94
      opcode: getelementptr
    - index: 95
      opcode: load
      memmode: load
    - index: 96
      opcode: shl
    - index: 97
      opcode: and
    - index: 98
      opcode: xor
    - index: 99
      opcode: shl
    - index: 100
      opcode: and
    - index: 101
      opcode: lshr
    - index: 102
      opcode: add
    - index: 103
      opcode: lshr
    - index: 104
      opcode: getelementptr
    - index: 105
      opcode: load
      memmode: load
    - index: 106
      opcode: shl
    - index: 107
      opcode: and
    - index: 108
      opcode: xor
    - index: 109
      opcode: shl
    - index: 110
      opcode: and
    - index: 111
      opcode: lshr
    - index: 112
      opcode: and
    - index: 113
      opcode: and
    - index: 114
      opcode: add
    - index: 115
      opcode: shl
    - index: 116
      opcode: add
    - index: 117
      opcode: add
    - index: 118
      opcode: add
    - index: 119
      opcode: add
    - index: 120
      opcode: add
    - index: 121
      opcode: lshr
    - index: 122
      opcode: icmp
    - index: 123
      opcode: br
  - name: while.body
    predecessors:
    - for.end
    - while.body
    successors:
    - while.end
    - while.body
    loops:
    - while.body
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: and
    - index: 3
      opcode: add
    - index: 4
      opcode: lshr
    - index: 5
      opcode: icmp
    - index: 6
      opcode: br
  - name: while.end
    predecessors:
    - while.body
    - for.end
    successors: []
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: xor
    - index: 2
      opcode: trunc
    - index: 3
      opcode: ret
flowfacts:
- scope:
    function: ptpv2_issue_msg
    loop: while.cond
  lhs:
  - factor: 1
    program-point:
      function: ptpv2_issue_msg
      block: while.cond
  op: less-equal
  rhs: 2
  level: bitcode
  origin: user.bc
  classification: loop-global
- scope:
    function: ptpv2_issue_msg
    loop: while.cond5
  lhs:
  - factor: 1
    program-point:
      function: ptpv2_issue_msg
      block: while.cond5
  op: less-equal
  rhs: 2
  level: bitcode
  origin: user.bc
  classification: loop-global
- scope:
    function: udp_send_mac
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: udp_send_mac
      block: for.body
  op: less-equal
  rhs: 6
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: udp_send_mac
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: udp_send_mac
      block: for.body
  op: less-equal
  rhs: 6
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: udp_send_mac
    loop: for.body8
  lhs:
  - factor: 1
    program-point:
      function: udp_send_mac
      block: for.body8
  op: less-equal
  rhs: 65535
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: udp_send_mac
    loop: for.body8
  lhs:
  - factor: 1
    program-point:
      function: udp_send_mac
      block: for.body8
  op: less-equal
  rhs: "(1 smax (zext i16 %data_length to i32))"
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: ipv4_compute_checksum
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: ipv4_compute_checksum
      block: for.body
  op: less-equal
  rhs: 10
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: ipv4_compute_checksum
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: ipv4_compute_checksum
      block: for.body
  op: less-equal
  rhs: 10
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: ipv4_compute_checksum
    loop: while.cond
  lhs:
  - factor: 1
    program-point:
      function: ipv4_compute_checksum
      block: while.cond
  op: less-equal
  rhs: 17
  level: bitcode
  origin: user.bc
  classification: loop-global
- scope:
    function: udp_compute_checksum
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: udp_compute_checksum
      block: for.body
  op: less-equal
  rhs: 32768
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: 22
  lhs:
  - factor: -65535
    program-point:
      function: 22
      block: 4
  - factor: 1
    program-point:
      function: 22
      block: 5
  op: less-equal
  rhs: '0'
  origin: llvm
  level: machinecode
- scope:
    function: 22
  lhs:
  - factor: -6
    program-point:
      function: 22
      block: 8
  - factor: 1
    program-point:
      function: 22
      block: 1
  op: less-equal
  rhs: '0'
  origin: llvm
  level: machinecode
- scope:
    function: 14
  lhs:
  - factor: -10
    program-point:
      function: 14
      block: 5
  - factor: 1
    program-point:
      function: 14
      block: 1
  op: less-equal
  rhs: '0'
  origin: llvm
  level: machinecode
- scope:
    function: 21
  lhs:
  - factor: -32768
    program-point:
      function: 21
      block: 3
  - factor: 1
    program-point:
      function: 21
      block: 4
  op: less-equal
  rhs: '0'
  origin: llvm
  level: machinecode
- scope:
    function: 22
    loop: 1
  lhs:
  - factor: 1
    program-point:
      function: 22
      block: 1
  op: less-equal
  rhs: '6'
  origin: llvm
  level: machinecode
- scope:
    function: 22
    loop: 1
  lhs:
  - factor: 1
    program-point:
      function: 22
      block: 1
  op: less-equal
  rhs: '6'
  origin: llvm
  level: machinecode
- scope:
    function: 22
    loop: 5
  lhs:
  - factor: 1
    program-point:
      function: 22
      block: 5
  op: less-equal
  rhs: '65535'
  origin: llvm
  level: machinecode
- scope:
    function: 14
    loop: 1
  lhs:
  - factor: 1
    program-point:
      function: 14
      block: 1
  op: less-equal
  rhs: '10'
  origin: llvm
  level: machinecode
- scope:
    function: 14
    loop: 1
  lhs:
  - factor: 1
    program-point:
      function: 14
      block: 1
  op: less-equal
  rhs: '10'
  origin: llvm
  level: machinecode
- scope:
    function: 21
    loop: 4
  lhs:
  - factor: 1
    program-point:
      function: 21
      block: 4
  op: less-equal
  rhs: '32768'
  origin: llvm
  level: machinecode
- scope:
    function: 15
  lhs:
  - factor: 1
    program-point:
      function: 21
      block: 0
  - factor: -1
    program-point:
      function: 22
      block: 6
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 15
  lhs:
  - factor: 1
    program-point:
      function: 14
      block: 0
  - factor: -1
    program-point:
      function: 22
      block: 6
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 15
  lhs:
  - factor: -2
    program-point:
      function: 15
      block: 4
  - factor: 1
    program-point:
      function: 15
      block: 3
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 15
  lhs:
  - factor: -2
    program-point:
      function: 15
      block: 7
  - factor: 1
    program-point:
      function: 15
      block: 6
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 15
  lhs:
  - factor: -1
    program-point:
      function: 15
      block: 2
  - factor: 1
    program-point:
      function: 22
      block: 0
  - factor: -1
    program-point:
      function: 15
      block: 5
  - factor: -1
    program-point:
      function: 15
      block: 11
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 14
  lhs:
  - factor: -16
    program-point:
      function: 14
      block: 5
  - factor: 1
    program-point:
      function: 14
      block: 4
  op: less-equal
  rhs: '0'
  origin: user
  level: machinecode
- scope:
    function: 15
    loop: 3
  lhs:
  - factor: 1
    program-point:
      function: 15
      block: 3
  op: less-equal
  rhs: '2'
  origin: user
  level: machinecode
- scope:
    function: 15
    loop: 6
  lhs:
  - factor: 1
    program-point:
      function: 15
      block: 6
  op: less-equal
  rhs: '2'
  origin: user
  level: machinecode
- scope:
    function: 14
    loop: 3
  lhs:
  - factor: 1
    program-point:
      function: 14
      block: 3
  op: less-equal
  rhs: '17'
  origin: user
  level: machinecode
relation-graphs:
- src:
    function: ptpv2_issue_msg
    level: bitcode
  dst:
    function: 15
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 6
    - 7
    - 8
    - 9
    dst-successors:
    - 3
    - 4
  - name: 1
    type: exit
  - name: 2
    type: src
    src-block: sw.epilog
    src-successors:
    - 5
  - name: 3
    type: dst
    dst-block: 11
    dst-successors:
    - 5
  - name: 4
    type: dst
    dst-block: 1
    dst-successors:
    - 3
    - 6
    - 7
    - 8
    - 9
  - name: 5
    type: progress
    src-block: if.end8
    dst-block: 12
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 6
    type: progress
    src-block: sw.bb1
    dst-block: 8
    src-successors:
    - 17
    dst-successors:
    - 18
  - name: 7
    type: progress
    src-block: sw.bb3
    dst-block: 9
    src-successors:
    - 14
    dst-successors:
    - 15
  - name: 8
    type: progress
    src-block: sw.epilog.thread1
    dst-block: 2
    src-successors:
    - 12
    dst-successors:
    - 12
  - name: 9
    type: progress
    src-block: sw.epilog.thread2
    dst-block: 5
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 10
    type: progress
    src-block: while.cond5
    dst-block: 6
    src-successors:
    - 10
    - 11
    dst-successors:
    - 10
    - 11
  - name: 11
    type: progress
    src-block: while.end7
    dst-block: 7
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 12
    type: progress
    src-block: while.cond
    dst-block: 3
    src-successors:
    - 12
    - 13
    dst-successors:
    - 12
    - 13
  - name: 13
    type: progress
    src-block: while.end
    dst-block: 4
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 14
    type: src
    src-block: sw.epilog.thread
    src-successors:
    - 5
  - name: 15
    type: dst
    dst-block: 10
    dst-successors:
    - 16
  - name: 16
    type: dst
    dst-block: 11
    dst-successors:
    - 5
  - name: 17
    type: src
    src-block: sw.epilog.thread
    src-successors:
    - 5
  - name: 18
    type: dst
    dst-block: 10
    dst-successors:
    - 19
  - name: 19
    type: dst
    dst-block: 11
    dst-successors:
    - 5
  status: valid
- src:
    function: udp_send_mac
    level: bitcode
  dst:
    function: 22
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
    src-block: for.body
    dst-block: 1
    src-successors:
    - 2
    - 4
    dst-successors:
    - 3
    - 2
  - name: 3
    type: dst
    dst-block: 2
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 3
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 5
    type: progress
    src-block: for.body8.lr.ph
    dst-block: 4
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 6
    type: progress
    src-block: for.end10
    dst-block: 6
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 7
    type: progress
    src-block: while.body2.i
    dst-block: 7
    src-successors:
    - 8
    - 7
    dst-successors:
    - 8
    - 7
  - name: 8
    type: progress
    src-block: eth_mac_send.exit
    dst-block: 8
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 9
    type: progress
    src-block: for.body8
    dst-block: 5
    src-successors:
    - 9
    - 6
    dst-successors:
    - 9
    - 6
  status: valid
- src:
    function: ipv4_compute_checksum
    level: bitcode
  dst:
    function: 14
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
    src-block: for.body
    dst-block: 1
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 3
    type: progress
    src-block: for.end
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: while.cond
    dst-block: 3
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 5
    type: progress
    src-block: while.body
    dst-block: 4
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 6
    type: progress
    src-block: while.end
    dst-block: 5
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: udp_compute_checksum
    level: bitcode
  dst:
    function: 21
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
    src-block: if.else
    dst-block: 1
    src-successors:
    - 3
    dst-successors:
    - 3
  - name: 3
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 4
    - 5
    dst-successors:
    - 4
    - 5
  - name: 4
    type: progress
    src-block: for.body.lr.ph
    dst-block: 3
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 5
    type: progress
    src-block: for.end
    dst-block: 5
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: while.body
    dst-block: 6
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 7
    type: progress
    src-block: while.end
    dst-block: 7
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 8
    type: progress
    src-block: for.body
    dst-block: 4
    src-successors:
    - 8
    - 5
    dst-successors:
    - 8
    - 5
  status: valid
timing:
- scope:
    function: 15
  cycles: -1
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 0
  cache-min-hits-instr: 0
  cache-max-misses-instr: 0
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 0
  cache-min-hits-data: 0
  cache-max-misses-data: 0
  cache-max-cycles: 0
  profile: []
