---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 24
  level: machinecode
  mapsto: ptpv2_deserialize
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SRESi
      size: 4
      stack-cache-argument: 8
      address: 145636
    - index: 1
      opcode: MFS
      size: 4
      address: 145640
    - index: 2
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145644
    - index: 3
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145648
    - index: 4
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145652
    - index: 5
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145656
    - index: 6
      opcode: SLi
      size: 4
      address: 145660
    - index: 7
      opcode: ORr
      size: 4
      address: 145664
    - index: 8
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145668
    - index: 9
      opcode: SLi
      size: 4
      address: 145672
    - index: 10
      opcode: ORr
      size: 4
      address: 145676
    - index: 11
      opcode: SLi
      size: 4
      address: 145680
    - index: 12
      opcode: ORr
      size: 4
      address: 145684
    - index: 13
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145688
    - index: 14
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145692
    - index: 15
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145696
    - index: 16
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145700
    - index: 17
      opcode: SLi
      size: 4
      address: 145704
    - index: 18
      opcode: ORr
      size: 4
      address: 145708
    - index: 19
      opcode: SLi
      size: 4
      address: 145712
    - index: 20
      opcode: ORr
      size: 4
      address: 145716
    - index: 21
      opcode: SLi
      size: 4
      address: 145720
    - index: 22
      opcode: ORr
      size: 4
      address: 145724
    - index: 23
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145728
    - index: 24
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145732
    - index: 25
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145736
    - index: 26
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145740
    - index: 27
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145744
    - index: 28
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145748
    - index: 29
      opcode: SLi
      size: 4
      address: 145752
    - index: 30
      opcode: ORr
      size: 4
      address: 145756
    - index: 31
      opcode: SLi
      size: 4
      address: 145760
    - index: 32
      opcode: ORr
      size: 4
      address: 145764
    - index: 33
      opcode: SLi
      size: 4
      address: 145768
    - index: 34
      opcode: ORr
      size: 4
      address: 145772
    - index: 35
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145776
    - index: 36
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145780
    - index: 37
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145784
    - index: 38
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145788
    - index: 39
      opcode: SWS
      size: 4
      memmode: store
      memtype: stack
      address: 145792
    - index: 40
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145796
    - index: 41
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145800
    - index: 42
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145804
    - index: 43
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145808
    - index: 44
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145812
    - index: 45
      opcode: SLi
      size: 4
      address: 145816
    - index: 46
      opcode: ORr
      size: 4
      address: 145820
    - index: 47
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145824
    - index: 48
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145828
    - index: 49
      opcode: SLi
      size: 4
      address: 145832
    - index: 50
      opcode: ORr
      size: 4
      address: 145836
    - index: 51
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145840
    - index: 52
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145844
    - index: 53
      opcode: SLi
      size: 4
      address: 145848
    - index: 54
      opcode: ORr
      size: 4
      address: 145852
    - index: 55
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145856
    - index: 56
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145860
    - index: 57
      opcode: SLi
      size: 4
      address: 145864
    - index: 58
      opcode: ORr
      size: 4
      address: 145868
    - index: 59
      opcode: SLi
      size: 4
      address: 145872
    - index: 60
      opcode: ORr
      size: 4
      address: 145876
    - index: 61
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145880
    - index: 62
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145884
    - index: 63
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145888
    - index: 64
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145892
    - index: 65
      opcode: SLi
      size: 4
      address: 145896
    - index: 66
      opcode: ORr
      size: 4
      address: 145900
    - index: 67
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145904
    - index: 68
      opcode: SUBi
      size: 4
      address: 145908
    - index: 69
      opcode: SLi
      size: 4
      address: 145912
    - index: 70
      opcode: ORr
      size: 4
      address: 145916
    - index: 71
      opcode: SLi
      size: 4
      address: 145920
    - index: 72
      opcode: ORr
      size: 4
      address: 145924
    - index: 73
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145928
    - index: 74
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145932
    - index: 75
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 145936
    - index: 76
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 145940
    - index: 77
      opcode: SLi
      size: 4
      address: 145944
    - index: 78
      opcode: ORr
      size: 4
      address: 145948
    - index: 79
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 145952
    - index: 80
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145956
    - index: 81
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145960
    - index: 82
      opcode: SLi
      size: 4
      address: 145964
    - index: 83
      opcode: ORr
      size: 4
      address: 145968
    - index: 84
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145972
    - index: 85
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145976
    - index: 86
      opcode: SLi
      size: 4
      address: 145980
    - index: 87
      opcode: ORr
      size: 4
      address: 145984
    - index: 88
      opcode: SLi
      size: 4
      address: 145988
    - index: 89
      opcode: ORr
      size: 4
      address: 145992
    - index: 90
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 145996
    - index: 91
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146000
    - index: 92
      opcode: SLi
      size: 4
      address: 146004
    - index: 93
      opcode: ORr
      size: 4
      address: 146008
    - index: 94
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146012
    - index: 95
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146016
    - index: 96
      opcode: SLi
      size: 4
      address: 146020
    - index: 97
      opcode: ORr
      size: 4
      address: 146024
    - index: 98
      opcode: SLi
      size: 4
      address: 146028
    - index: 99
      opcode: ORr
      size: 4
      address: 146032
    - index: 100
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146036
    - index: 101
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146040
    - index: 102
      opcode: SLi
      size: 4
      address: 146044
    - index: 103
      opcode: ORr
      size: 4
      address: 146048
    - index: 104
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146052
    - index: 105
      opcode: ANDi
      size: 4
      address: 146056
    - index: 106
      opcode: CMPINEQ
      size: 4
      address: 146060
    - index: 107
      opcode: BRCF
      size: 4
      branch-type: conditional
      branch-delay-slots: 3
      branch-targets:
      - 2
      address: 146064
    - index: 108
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146068
    - index: 109
      opcode: NOP
      size: 4
      address: 146072
    - index: 110
      opcode: NOP
      size: 4
      address: 146076
    - index: 111
      opcode: BRCFNDu
      size: 4
      branch-type: unconditional
      branch-targets:
      - 1
      address: 146080
    address: 145636
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 2
    instructions:
    - index: 0
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146100
    - index: 1
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146104
    - index: 2
      opcode: SLi
      size: 4
      address: 146108
    - index: 3
      opcode: ORr
      size: 4
      address: 146112
    - index: 4
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146116
    - index: 5
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146120
    - index: 6
      opcode: SLi
      size: 4
      address: 146124
    - index: 7
      opcode: ORr
      size: 4
      address: 146128
    - index: 8
      opcode: SLi
      size: 4
      address: 146132
    - index: 9
      opcode: ORr
      size: 4
      address: 146136
    - index: 10
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146140
    - index: 11
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146144
    - index: 12
      opcode: SLi
      size: 4
      address: 146148
    - index: 13
      opcode: ORr
      size: 4
      address: 146152
    - index: 14
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146156
    - index: 15
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146160
    - index: 16
      opcode: SLi
      size: 4
      address: 146164
    - index: 17
      opcode: ORr
      size: 4
      address: 146168
    - index: 18
      opcode: SLi
      size: 4
      address: 146172
    - index: 19
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146176
    - index: 20
      opcode: LBUC
      size: 4
      memmode: load
      memtype: cache
      address: 146180
    - index: 21
      opcode: BRCFu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 3
      branch-targets:
      - 2
      address: 146184
    - index: 22
      opcode: ORr
      size: 4
      address: 146188
    - index: 23
      opcode: SLi
      size: 4
      address: 146192
    - index: 24
      opcode: ORr
      size: 4
      address: 146196
    address: 146100
  - name: 2
    mapsto: if.end
    predecessors:
    - 1
    - 0
    successors: []
    instructions:
    - index: 0
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146212
    - index: 1
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146216
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 146220
    - index: 3
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146224
    - index: 4
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146228
    - index: 5
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 146232
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146236
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146240
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146244
    - index: 9
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146248
    - index: 10
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146252
    - index: 11
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146256
    - index: 12
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146260
    - index: 13
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 146264
    - index: 14
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146268
    - index: 15
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 146272
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 146276
    - index: 17
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146280
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146284
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 146288
    - index: 20
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146292
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146296
    - index: 22
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 146300
    - index: 23
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146304
    - index: 24
      opcode: SBC
      size: 4
      memmode: store
      memtype: cache
      address: 146308
    - index: 25
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146312
    - index: 26
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146316
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146320
    - index: 28
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 146324
    - index: 29
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 146328
    - index: 30
      opcode: LWS
      size: 4
      memmode: load
      memtype: stack
      address: 146332
    - index: 31
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 146336
    - index: 32
      opcode: MTS
      size: 4
      address: 146340
    - index: 33
      opcode: ADDi
      size: 4
      address: 146344
    - index: 34
      opcode: SFREEi
      size: 4
      stack-cache-argument: 8
      address: 146348
    address: 146212
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
bitcode-functions:
- name: ptpv2_deserialize
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: alloca
    - index: 1
      opcode: bitcast
    - index: 2
      opcode: call
    - index: 3
      opcode: load
      memmode: load
    - index: 4
      opcode: getelementptr
    - index: 5
      opcode: load
      memmode: load
    - index: 6
      opcode: getelementptr
    - index: 7
      opcode: bitcast
    - index: 8
      opcode: load
      memmode: load
    - index: 9
      opcode: getelementptr
    - index: 10
      opcode: load
      memmode: load
    - index: 11
      opcode: getelementptr
    - index: 12
      opcode: load
      memmode: load
    - index: 13
      opcode: getelementptr
    - index: 14
      opcode: bitcast
    - index: 15
      opcode: load
      memmode: load
    - index: 16
      opcode: getelementptr
    - index: 17
      opcode: bitcast
    - index: 18
      opcode: load
      memmode: load
    - index: 19
      opcode: getelementptr
    - index: 20
      opcode: bitcast
    - index: 21
      opcode: load
      memmode: load
    - index: 22
      opcode: getelementptr
    - index: 23
      opcode: call
    - index: 24
      opcode: getelementptr
    - index: 25
      opcode: bitcast
    - index: 26
      opcode: load
      memmode: load
    - index: 27
      opcode: getelementptr
    - index: 28
      opcode: load
      memmode: load
    - index: 29
      opcode: getelementptr
    - index: 30
      opcode: load
      memmode: load
    - index: 31
      opcode: getelementptr
    - index: 32
      opcode: bitcast
    - index: 33
      opcode: load
      memmode: load
    - index: 34
      opcode: getelementptr
    - index: 35
      opcode: bitcast
    - index: 36
      opcode: load
      memmode: load
    - index: 37
      opcode: and
    - index: 38
      opcode: icmp
    - index: 39
      opcode: br
  - name: if.then
    predecessors:
    - entry
    successors:
    - if.end
    instructions:
    - index: 0
      opcode: getelementptr
    - index: 1
      opcode: bitcast
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: getelementptr
    - index: 4
      opcode: bitcast
    - index: 5
      opcode: load
      memmode: load
    - index: 6
      opcode: br
  - name: if.end
    predecessors:
    - if.then
    - entry
    successors: []
    instructions:
    - index: 0
      opcode: phi
    - index: 1
      opcode: phi
    - index: 2
      opcode: bitcast
    - index: 3
      opcode: bitcast
    - index: 4
      opcode: store
      memmode: store
    - index: 5
      opcode: getelementptr
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
      opcode: getelementptr
    - index: 12
      opcode: store
      memmode: store
    - index: 13
      opcode: getelementptr
    - index: 14
      opcode: store
      memmode: store
    - index: 15
      opcode: getelementptr
    - index: 16
      opcode: bitcast
    - index: 17
      opcode: store
      memmode: store
    - index: 18
      opcode: getelementptr
    - index: 19
      opcode: store
      memmode: store
    - index: 20
      opcode: getelementptr
    - index: 21
      opcode: call
    - index: 22
      opcode: getelementptr
    - index: 23
      opcode: store
      memmode: store
    - index: 24
      opcode: getelementptr
    - index: 25
      opcode: store
      memmode: store
    - index: 26
      opcode: getelementptr
    - index: 27
      opcode: store
      memmode: store
    - index: 28
      opcode: getelementptr
    - index: 29
      opcode: store
      memmode: store
    - index: 30
      opcode: getelementptr
    - index: 31
      opcode: store
      memmode: store
    - index: 32
      opcode: getelementptr
    - index: 33
      opcode: bitcast
    - index: 34
      opcode: store
      memmode: store
    - index: 35
      opcode: getelementptr
    - index: 36
      opcode: store
      memmode: store
    - index: 37
      opcode: call
    - index: 38
      opcode: ret
relation-graphs:
- src:
    function: ptpv2_deserialize
    level: bitcode
  dst:
    function: 24
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
    src-block: if.end
    dst-block: 2
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
timing:
- scope:
    function: 24
  cycles: 2149
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 336
  cache-min-hits-instr: 0
  cache-max-misses-instr: 2
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 1638
  cache-min-hits-data: 0
  cache-max-misses-data: 55
  cache-max-stores-data: 23
  cache-unknown-address-data: 78
  cache-max-cycles: 1974
  profile:
  - reference:
      function: 24
      edgesource: 0
      edgetarget: 1
    cycles: 1060
    wcet-frequency: 1
    wcet-contribution: 1060
  - reference:
      function: 24
      edgesource: 1
      edgetarget: 2
    cycles: 382
    wcet-frequency: 1
    wcet-contribution: 382
  - reference:
      function: 24
      edgesource: 2
    cycles: 707
    wcet-frequency: 1
    wcet-contribution: 707
