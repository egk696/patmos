---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
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
bitcode-functions:
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
flowfacts:
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
timing:
- scope:
    function: 20
  cycles: 2076
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 0
  cache-min-hits-instr: 0
  cache-max-misses-instr: 0
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 1134
  cache-min-hits-data: 0
  cache-max-misses-data: 0
  cache-max-stores-data: 54
  cache-unknown-address-data: 54
  cache-max-cycles: 1134
  profile:
  - reference:
      function: 20
      edgesource: 0
      edgetarget: 1
    cycles: 10
    wcet-frequency: 1
    wcet-contribution: 10
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
